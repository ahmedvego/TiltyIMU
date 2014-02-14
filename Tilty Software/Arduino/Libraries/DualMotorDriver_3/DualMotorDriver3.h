/*
DualMotorDriver.h - Software library to program and control the TiltyIMU Dual Motor Driver Shield
Copyright (C) 2013-2014 Alex Beattie <alexbeattie at tiltyimu dot com>

This program is free software: you can redistribute it and/or modify
it under the terms of the version 2 GNU General Public License as
published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef DualMotorDriver_h
#define DualMotorDriver_h

#include "Arduino.h"

//==========================================================================================//
// Add-on/shield class information

// ========== Code Settings ==========
// You can change/comment these values
#define DEBUG_MOTOR_DRIVER				// Enable to include debug code in program
//#define I2C_FREQ 100000				// Enable to set I2C to 100kHz frequency
//#define I2C_FREQ 200000				// Enable to set I2C to 200kHz frequency
#define I2C_FREQ 400000					// Enable to set I2C to 400kHz frequency
#define REFRESH_FREQ 100 				// Millisecond delay between uencoder and motor updates if in RPM control mode, cannot be less than 62 and should not be greater than 1561 (technically it can be, but don't do it)
#define ENABLE_WATCHDOG_TIMER			// Watchdog timer will cause a system reset if any functions freeze, preventing the motor driver from freezing for longer than the watchdog timer limit (which is set below)
#define ENCODER_RESOLUTION SINGLE		// Change to DOUBLE to read the rising and falling edge of the encoder, which doubles the resolution, but also the CPU load
// ========== Code Settings ==========


// ========== I2C Settings ==========
// Neither buffer size can exceed 32 bytes! That is the limit imposed by the Wire library
#define RX_BUFFER_SIZE 32
#define TX_BUFFER_SIZE 16
#define DEFAULT_MOTOR_DRIVER_I2C_ADDRESS 0x03
// ========== I2C Settings ==========


// ========== Library includes ==========
#include "Wire.h"
#include "EEPROM.h"
// ========== Library includes ==========


// ========== Debug Defines ==========
#ifdef DEBUG_MOTOR_DRIVER
	#define m1_scaled_power 101
	#define m1_current_power 102
	#define m1_power 103
	#define m1_encoder 104
	#define m1_rate 105
	#define m1_target_rate 106
	#define ms 107
	#define m1_p 108
	#define m1_i 109
	#define m1_d 110
	#define m2_power 
	#define m2_p 
	#define m2_i 
	#define m2_d 
	#define pid_kp 
	#define pid_ki 
	#define pid_kd 
	
	#define led	255
	#define eeprom 
#endif
// ========== Debug Defines ==========


// ========== Motor control pins ==========
// Motor PWM pins
#define M1 5
#define M2 6
// Motor direction control pins
#define M1A 7
#define M1B 8
#define M2A 4
#define M2B 9
// Motor current sense pins
#define M1_SENSE A2
#define M2_SENSE A3
// ========== Motor control pins ==========


// ========== Encoder pins ==========
#define ENC1A 3 // Interrupt pin
#define ENC1B A0
#define ENC2A A1
#define ENC2B 2 // Interrupt pin
// ========== Encoder pins ==========

// ========== Encoder resolutions ==========
#define SINGLE 0x0F
#define DOUBLE 0x05
// ========== Encoder resolutions ==========


// ========== LED pin ==========
#define LED 10
// ========== LED pin ==========


// ========== Default Motor Characteristics ==========
#ifndef TICKS_PER_REV
#define TICKS_PER_REV 334 // Encoder pulses per axle revolution
#endif
#ifndef GEAR_RATIO
	#define GEAR_RATIO 9.28	// Motor gear ratio, set to 1 if encoder is on gearbox output instead of motor output
#endif
#if ENCODER_RESOLUTION == SINGLE
	#define ENCODER_MULTIPLIER 1
#elif ENCODER_RESOLUTION == DOUBLE
	#define ENCODER_MULTIPLIER 2
#endif
#define TICKS_PER_ROT ((float)TICKS_PER_REV * GEAR_RATIO) * ENCODER_MULTIPLIER // Encoder pulses per rotation of the output shaft
// ========== Default Motor Characteristics ==========


// ========== Timer Characteristics ==========
#define OCR2A_VALUE uint8_t((16000000 / 1024) / REFRESH_FREQ)	// Automatically sets value for OCR2A which controls motor and encoder update timing
#define TIMER2_PRESCALER 0x07									// Prescaler of 1024 for TCCR2B
#define TIMER2_IMSK 0x06										// Sets interrupts for OCR2A and OCR2B
#define TIMER2A_MODE 0x03										// Fast PWM count up mode settings for TCCR2A
#define TIMER2B_MODE 0x08										// Fast PWM count up mode settings for TCCR2B
// ========== Timer Characteristics ==========


// ========== Watchdog Timer Characteristics ==========
#ifdef ENABLE_WATCHDOG_TIMER
#define WATCHDOG_TIME 3 // Change this to change time before reset if code freezes
#define LOW_WDP (WATCHDOG_TIME & 0x07)
#define HIGH_WDP (WATCHDOG_TIME & 0x08) << 5
// WATCHDOG_TIME values and their times
// 0 => 16ms    3 => 0.125s    6 => 1.0s    9 => 8.0s
// 1 => 32ms    4 => 0.250s    7 => 2.0s
// 2 => 64ms    5 => 0.500s    8 => 4.0s
#endif
// ========== Watchdog Timer Characteristics ==========



// ========== Default Register Values ==========
#define DEFAULT_M1_CONTROL		ENCODER | BRAKE | SPEED
#define DEFAULT_M2_CONTROL		DIRECTION | ENCODER | MODE
#define DEFAULT_M1_POWER		0
#define DEFAULT_M2_POWER		0
#define DEFAULT_M1_ENCODER		0
#define DEFAULT_M2_ENCODER		0
#define DEFAULT_M1_CURRENT		0
#define DEFAULT_M2_CURRENT		0
#define DEFAULT_M1_RATE			0
#define DEFAULT_M2_RATE			0
#define DEFAULT_PID_KP			0.5
#define DEFAULT_PID_KI			0.033
#define DEFAULT_PID_KD			0.1
#define DEFAULT_MIN_POWER		55
#define DEFAULT_TICKS_REV		1336
#define DEFAULT_LOOP_TIME		5
#define DEFAULT_DMD_ADDRESS		0x03
#define DEFAULT_EEPROM_SAVE		0
#define DEFAULT_EEPROM_LOAD		0
// ========== Default Register Values ==========

class DualMotorDriver {
	public:
		// Constructors
		DualMotorDriver();
		~DualMotorDriver();
		
		void init();
		
		uint8_t getData(int bytes);
		void sendData();
		
		void updateVars();
		
		// Motor status/control variables
		uint8_t M1_control;		// Motor 1 control byte
		uint8_t M2_control;		// Motor 2 control byte
		uint8_t M1_power;		// Motor 1 set power value
		uint8_t M2_power;		// Motor 2 set power value
		int32_t M1_encoder;		// Motor 1 current encoder value
		int32_t M2_encoder;		// Motor 2 current encoder value
		float M1_rate;			// Motor's rate assigned by user if in RPM mode, or current motor rate if encoder is enabled
		float M2_rate;			// Motor's rate assigned by user if in RPM mode, or current motor rate if encoder is enabled
		uint8_t M1_current;		// 
		uint8_t M2_current;
		float PID_kP;			// PID D scalar for RPM control
		float PID_kI;			// PID D scalar for RPM control
		float PID_kD;			// PID D scalar for RPM control
		uint32_t ticks_rev;
		uint8_t min_power;// Minimum PWM to apply to the motor
		uint8_t ramping_rate;// Amount to add/subtract each time ramping code is checked
		uint8_t M1_current_power;// Current power assigned by software, not user editable
		uint8_t M2_current_power;// Current power assigned by software, not user editable
		uint8_t M1_scaled_power;// Scaled motor power for minimum PWM control, assigned by software and not user editable
		uint8_t M2_scaled_power;// Scaled motor power for minimum PWM control, assigned by software and not user editable
		int16_t M1_target_rate;
		
		
		float PID_P1, PID_P2;
		float PID_I1, PID_I2;
		float PID_D1, PID_D2;
		
		uint16_t updated_vars;//	Indicates which variables were changed in the last I2C update
		
		typedef struct Motor {
			uint8_t *control;	// Motor control byte
			uint8_t *power;		// Assigned motor power
			int32_t *enc_val;	// Current motor encoder value
			float 	*cur_rate;		// Motor's rate assigned by user if in RPM mode, or current motor rate if encoder is enabled
			uint8_t *cur_pwr;	// Motor's current ramping power
			uint8_t *scaled_pwr;// Scaled motor power for minimum PWM control
			
			int16_t *targ_rate;
			
			float *PID_P;
			float *PID_I;
			float *PID_D;
			
			uint8_t *OCR0x;// Pointer to pin output compare register
			uint8_t COM0x;// Pin setup in TCCR0A
			
			long old_enc;
			
			uint8_t speed_pin;// PWM/enable pin
			uint8_t high_pin;// Direction/braking control pin 1
			uint8_t low_pin;// Direction/braking control pin 2
		} Motor;
		
		Motor motor1;
		Motor motor2;
		
		void updateMotor(Motor *motor);
		
	private:
		inline void updateMotorControl(Motor *motor);
		inline void updateMotorRPM(Motor *motor);
		inline void updateMotorPower(Motor *motor);
		inline void updateEncoder(Motor* motor);
		
		inline void setMotorPWM(Motor *motor);
		inline void setMotorDirection(Motor *motor);
		inline void setMotorBraking(Motor *motor);
		inline void setTimerB(Motor *motor);
		
		void wireToVar(uint8_t *var);
		void wireToVar(uint16_t *var);
		void wireToVar(int32_t *var);
		void wireToVar(float *var);
		
		uint8_t active_var;
		void *active_var_ptr;

		// Data union for transferring different 4 byte types to/from data register
		/*
		union data_union {
			uint8_t bytes[4];
			uint32_t int32;
			float float32;
		} data_union;
		*/
		
		// Counter variable for timing
		uint8_t count;
		
		// Motor control register bit values
		static const uint8_t DIRECTION = 0x01;// Sets motor direction.
		static const uint8_t BRAKE = 0x02;// Motor brake/cost. 1 brakes, 0 coasts.
		static const uint8_t SPEED = 0x04;// Enables/Disables automatic speed control
		static const uint8_t MODE = 0x08;// Sets speed control type. Ramping power or RPM control
		static const uint8_t ENCODER = 0x10;// Sets whether to enable the encoder
		static const uint8_t CURRENT = 0x20;// Sets whether to read motor currents or not
		static const uint8_t CURD = 0x40;// Set to 1 when new current sense data is available
		//======== Motor control type settings ========
		//	|  SPEED  |  MODE  |  RESULT
		//  |    0    |    0   |  No automatic control, power is written directly to PWM
		//  |    0    |    1   |  No automatic power smoothing, but power is mapped 0%-100% to min_power-255
		//  |    1    |    0   |  Automatic power ramping for smoother transitions between speeds
		//  |    1    |    1   |  RPM control via the motor rate registers, will automatically enable encoders
		
		// Active variable values, control which variable is modified when an I2C write is performed
		static const uint8_t M1_CONTROL = 0x00;
		static const uint8_t M2_CONTROL = 0x01;
		static const uint8_t M1_POWER = 0x02;
		static const uint8_t M2_POWER = 0x03;
		static const uint8_t M1_ENCODER = 0x04;
		static const uint8_t M2_ENCODER = 0x05;
		static const uint8_t M1_RATE = 0x06;
		static const uint8_t M2_RATE = 0x07;
		static const uint8_t M1_CURRENT = 0x08;
		static const uint8_t M2_CURRENT = 0x09;
		static const uint8_t TICKS_REV = 0x0D;
		// These can handle updates in the I2C receive code, and don't need indicators in updated_vars
		static const uint8_t DEVICE_ID = 0x0E;
		static const uint8_t PID_KP = 0x0A;
		static const uint8_t PID_KI = 0x0B;
		static const uint8_t PID_KD = 0x0C;
};

extern DualMotorDriver MotorDriver;

void receiveEvent(int bytes);
void requestEvent();

void readEncoder1();
void readEncoder2();

void delayMillis(unsigned long time);

extern volatile unsigned long MS;


#ifdef DEBUG_MOTOR_DRIVER
		void ledOn();
		void ledOff();
		void ledToggle();
#endif

#endif