<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="14" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="6" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="0" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+3V3">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" prefix="+3V3">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="My Parts">
<packages>
<package name="8-PIN_RECEPTACLE_LOCK_NO-SS">
<wire x1="-10.16" y1="-1.27" x2="-10.16" y2="1.27" width="0.254" layer="23"/>
<wire x1="-10.16" y1="1.27" x2="10.16" y2="1.27" width="0.254" layer="23"/>
<wire x1="10.16" y1="1.27" x2="10.16" y2="-1.27" width="0.254" layer="23"/>
<wire x1="10.16" y1="-1.27" x2="-10.16" y2="-1.27" width="0.254" layer="23"/>
<pad name="P$1" x="-8.89" y="-0.127" drill="0.889"/>
<pad name="P$2" x="-6.35" y="0.127" drill="0.889"/>
<pad name="P$3" x="-3.81" y="-0.127" drill="0.889"/>
<pad name="P$4" x="-1.27" y="0.127" drill="0.889"/>
<pad name="P$5" x="1.27" y="-0.127" drill="0.889"/>
<pad name="P$6" x="3.81" y="0" drill="0.889"/>
<pad name="P$7" x="6.35" y="-0.127" drill="0.889"/>
<pad name="P$8" x="8.89" y="0" drill="0.889"/>
</package>
</packages>
<symbols>
<symbol name="8-PIN_HEADER">
<wire x1="-3.81" y1="-12.7" x2="3.81" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-12.7" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="10.16" x2="-3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="-3.81" y2="-12.7" width="0.4064" layer="94"/>
<text x="-3.81" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="7.62" visible="pin" length="short" direction="pas" function="dot"/>
<pin name="2" x="0" y="5.08" visible="pin" length="short" direction="pas" function="dot"/>
<pin name="3" x="0" y="2.54" visible="pin" length="short" direction="pas" function="dot"/>
<pin name="4" x="0" y="0" visible="pin" length="short" direction="pas" function="dot"/>
<pin name="5" x="0" y="-2.54" visible="pin" length="short" direction="pas" function="dot"/>
<pin name="6" x="0" y="-5.08" visible="pin" length="short" direction="pas" function="dot"/>
<pin name="7" x="0" y="-7.62" visible="pin" length="short" direction="pas" function="dot"/>
<pin name="8" x="0" y="-10.16" visible="pin" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="8-PIN_HEADER">
<gates>
<gate name="G$1" symbol="8-PIN_HEADER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="8-PIN_RECEPTACLE_LOCK_NO-SS">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="GND" width="0" drill="0">
</class>
<class number="3" name="3.3V" width="0" drill="0">
</class>
<class number="4" name="I/O" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND21" library="supply1" deviceset="GND" device=""/>
<part name="JP1" library="My Parts" deviceset="8-PIN_HEADER" device=""/>
<part name="JP2" library="My Parts" deviceset="8-PIN_HEADER" device=""/>
<part name="JP3" library="My Parts" deviceset="8-PIN_HEADER" device=""/>
<part name="JP4" library="My Parts" deviceset="8-PIN_HEADER" device=""/>
<part name="+3V1" library="supply1" deviceset="+3V3" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-3.81" y="0" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.81" y="2.54" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.81" y="33.02" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.81" y="30.48" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.81" y="60.96" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.81" y="63.5" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.81" y="35.56" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.81" y="83.82" size="2.54" layer="91" ratio="15">~</text>
<text x="3.81" y="120.65" size="2.54" layer="91" ratio="15">= 3.3v only!</text>
<text x="0.635" y="119.38" size="2.54" layer="91" ratio="15">~</text>
<text x="-3.175" y="87.63" size="1.778" layer="91" ratio="15">*</text>
<text x="-3.175" y="92.71" size="1.778" layer="91" ratio="15">*</text>
<text x="-3.175" y="95.25" size="1.778" layer="91" ratio="15">*</text>
<text x="-3.175" y="41.91" size="1.778" layer="91" ratio="15">*</text>
<text x="-3.175" y="13.97" size="1.778" layer="91" ratio="15">*</text>
<text x="-3.175" y="11.43" size="1.778" layer="91" ratio="15">*</text>
<text x="0.635" y="117.475" size="1.778" layer="91" ratio="15">*</text>
<text x="3.81" y="116.84" size="2.54" layer="91" ratio="15">= 5/3.3v (depends on solder jumpers</text>
<text x="0.635" y="113.665" size="2.54" layer="91" ratio="15">Recommend only using 3.3v, even though some pins are 5v tolerant</text>
<text x="-3.175" y="98.044" size="1.778" layer="91" ratio="15">*</text>
<text x="-3.175" y="100.584" size="1.778" layer="91" ratio="15">*</text>
</plain>
<instances>
<instance part="GND5" gate="1" x="17.78" y="25.4"/>
<instance part="GND21" gate="1" x="12.7" y="53.34"/>
<instance part="JP1" gate="G$1" x="5.08" y="96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="8.89" y="107.315" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="JP2" gate="G$1" x="5.08" y="68.58" smashed="yes" rot="MR0">
<attribute name="NAME" x="8.89" y="79.375" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="JP3" gate="G$1" x="5.08" y="40.64" smashed="yes" rot="MR0">
<attribute name="NAME" x="8.89" y="51.435" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="JP4" gate="G$1" x="5.08" y="12.7" smashed="yes" rot="MR0">
<attribute name="NAME" x="8.89" y="23.495" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="+3V1" gate="G$1" x="15.24" y="111.76"/>
<instance part="P+1" gate="1" x="25.4" y="27.94"/>
<instance part="P+2" gate="VCC" x="30.48" y="66.04"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="8"/>
<pinref part="GND21" gate="1" pin="GND"/>
<wire x1="5.08" y1="58.42" x2="12.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="12.7" y1="58.42" x2="12.7" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="8"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="5.08" y1="30.48" x2="12.7" y2="30.48" width="0.1524" layer="91"/>
<wire x1="12.7" y1="30.48" x2="17.78" y2="30.48" width="0.1524" layer="91"/>
<wire x1="17.78" y1="30.48" x2="17.78" y2="27.94" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="2"/>
<wire x1="5.08" y1="17.78" x2="12.7" y2="17.78" width="0.1524" layer="91"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="30.48" width="0.1524" layer="91"/>
<junction x="12.7" y="30.48"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="6"/>
<wire x1="5.08" y1="63.5" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<label x="10.16" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="5"/>
<wire x1="5.08" y1="66.04" x2="22.86" y2="66.04" width="0.1524" layer="91"/>
<label x="10.16" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="4"/>
<wire x1="5.08" y1="68.58" x2="22.86" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="3"/>
<wire x1="5.08" y1="71.12" x2="22.86" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="2"/>
<wire x1="5.08" y1="73.66" x2="22.86" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="5.08" y1="76.2" x2="22.86" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MEMORY_CS" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="8"/>
<wire x1="5.08" y1="86.36" x2="25.4" y2="86.36" width="0.1524" layer="91"/>
<label x="10.16" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="IMU_INT" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="7"/>
<wire x1="5.08" y1="88.9" x2="25.4" y2="88.9" width="0.1524" layer="91"/>
<label x="10.16" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="6"/>
<wire x1="5.08" y1="91.44" x2="25.4" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SERVO_2" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="5"/>
<wire x1="5.08" y1="93.98" x2="25.4" y2="93.98" width="0.1524" layer="91"/>
<label x="10.16" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="SERVO_1" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="4"/>
<wire x1="5.08" y1="96.52" x2="25.4" y2="96.52" width="0.1524" layer="91"/>
<label x="10.16" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="BLUETOOTH_TX" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="3"/>
<wire x1="5.08" y1="99.06" x2="25.4" y2="99.06" width="0.1524" layer="91"/>
<label x="10.16" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="BLUETOOTH_RX" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="5.08" y1="101.6" x2="25.4" y2="101.6" width="0.1524" layer="91"/>
<label x="10.16" y="101.6" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V_SDA" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="5.08" y1="48.26" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
<label x="10.16" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V_SCL" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="2"/>
<wire x1="5.08" y1="45.72" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
<label x="10.16" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="BT_CMD" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="3"/>
<wire x1="5.08" y1="43.18" x2="22.86" y2="43.18" width="0.1524" layer="91"/>
<label x="10.16" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="BATT_SENSE" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="4"/>
<wire x1="5.08" y1="40.64" x2="22.86" y2="40.64" width="0.1524" layer="91"/>
<label x="10.16" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="5"/>
<wire x1="5.08" y1="38.1" x2="22.86" y2="38.1" width="0.1524" layer="91"/>
<label x="10.16" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="AUX_SDA" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="6"/>
<wire x1="5.08" y1="35.56" x2="22.86" y2="35.56" width="0.1524" layer="91"/>
<label x="10.16" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="AUX_SCL" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="7"/>
<wire x1="5.08" y1="33.02" x2="22.86" y2="33.02" width="0.1524" layer="91"/>
<label x="10.16" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="SERVO_4" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="3"/>
<wire x1="5.08" y1="15.24" x2="22.86" y2="15.24" width="0.1524" layer="91"/>
<label x="12.7" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="SERVO_3" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="4"/>
<wire x1="5.08" y1="12.7" x2="22.86" y2="12.7" width="0.1524" layer="91"/>
<label x="12.7" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="5"/>
<wire x1="5.08" y1="10.16" x2="22.86" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="6"/>
<wire x1="5.08" y1="7.62" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3V_SCL" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="7"/>
<wire x1="5.08" y1="5.08" x2="22.86" y2="5.08" width="0.1524" layer="91"/>
<label x="10.16" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="3V_SDA" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="8"/>
<wire x1="5.08" y1="2.54" x2="22.86" y2="2.54" width="0.1524" layer="91"/>
<label x="10.16" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="5.08" y1="104.14" x2="15.24" y2="104.14" width="0.1524" layer="91"/>
<wire x1="15.24" y1="104.14" x2="15.24" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="1"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="5.08" y1="20.32" x2="25.4" y2="20.32" width="0.1524" layer="91"/>
<wire x1="25.4" y1="20.32" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="7"/>
<wire x1="5.08" y1="60.96" x2="30.48" y2="60.96" width="0.1524" layer="91"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="30.48" y1="60.96" x2="30.48" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,203.2,60.96,U1,VIN,5V,,,"/>
<approved hash="204,1,203.2,53.34,U1,AGND,,,,"/>
<approved hash="104,1,203.2,58.42,U1,3.3V,TEENSY_3V3,,,"/>
<approved hash="106,1,106.68,25.4,CHASSIS_GND,,,,,"/>
<approved hash="115,1,142.003,50.6688,JP1,,,,,"/>
<approved hash="115,1,149.623,30.3488,JP2,,,,,"/>
<approved hash="115,1,241.537,50.6688,JP5,,,,,"/>
<approved hash="115,1,233.917,27.8088,JP6,,,,,"/>
<approved hash="115,1,234.908,110.621,JP3,,,,,"/>
<approved hash="115,1,234.908,85.2212,JP7,,,,,"/>
<approved hash="115,1,127.237,10.2912,JP8,,,,,"/>
<approved hash="115,1,254,95.8431,SJ3,,,,,"/>
<approved hash="115,1,254,121.243,SJ2,,,,,"/>
<approved hash="115,1,71.1369,67.4328,JP9,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
