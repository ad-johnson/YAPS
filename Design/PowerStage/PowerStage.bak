EESchema Schematic File Version 4
LIBS:PowerStage-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "YAPS Power Stage"
Date "2019-05-26"
Rev "1.0"
Comp "Andrew Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5CCB1C2A
P 2200 1000
F 0 "J2" H 2280 992 50  0000 L CNN
F 1 "Conn_01x02" H 2280 901 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2200 1000 50  0001 C CNN
F 3 "" H 2200 1000 50  0001 C CNN
F 4 "CN14697" H 2200 1000 50  0001 C CNN "CPC Code"
	1    2200 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5CCB20D3
P 1450 1600
F 0 "J1" H 1368 1817 50  0000 C CNN
F 1 "Conn_01x02" H 1368 1726 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1450 1600 50  0001 C CNN
F 3 "" H 1450 1600 50  0001 C CNN
F 4 "CN14697" H 1450 1600 50  0001 C CNN "CPC Code"
	1    1450 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5CCB2A5C
P 4350 2850
F 0 "C1" H 4465 2896 50  0000 L CNN
F 1 "4700uF" H 4465 2805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D30.0mm_P10.00mm_SnapIn" H 4388 2700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1441585.pdf" H 4350 2850 50  0001 C CNN
F 4 "CA04834" H 4350 2850 50  0001 C CNN "CPC Code"
	1    4350 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5CCB3D63
P 4900 2850
F 0 "C2" H 5015 2896 50  0000 L CNN
F 1 "4700uF" H 5015 2805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D30.0mm_P10.00mm_SnapIn" H 4938 2700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1441585.pdf" H 4900 2850 50  0001 C CNN
F 4 "CA04834" H 4900 2850 50  0001 C CNN "CPC Code"
	1    4900 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+AA- D1
U 1 1 5CCB53B4
P 3450 2650
F 0 "D1" H 3794 2696 50  0000 L CNN
F 1 "GBU603" H 3794 2605 50  0000 L CNN
F 2 "CustomFootprintLibrary:Diode_Bridge_23.0x3.5x10.0mm_P5.0mm" H 3450 2650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/41665.pdf" H 3450 2650 50  0001 C CNN
F 4 "SC09284" H 3450 2650 50  0001 C CNN "CPC Code"
	1    3450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2950 3450 3150
Wire Wire Line
	3750 2650 3750 2350
Wire Wire Line
	3150 3350 3150 2650
Wire Wire Line
	3750 2350 4350 2350
Wire Wire Line
	3150 3350 4350 3350
Wire Wire Line
	4350 2700 4350 2350
Wire Wire Line
	4900 2700 4900 2350
Wire Wire Line
	4900 3000 4900 3350
Wire Wire Line
	4350 3000 4350 3350
Wire Wire Line
	2000 1000 1500 1000
Wire Wire Line
	2000 1100 1500 1100
Text GLabel 1500 1100 0    50   Input ~ 0
Vac+
Text GLabel 1500 1000 0    50   Input ~ 0
Vac-
Wire Wire Line
	3450 2350 3450 2000
Text GLabel 3450 2000 0    50   Input ~ 0
Vac+
Text GLabel 3450 3150 0    50   Input ~ 0
Vac-
Wire Wire Line
	1650 1600 2250 1600
Wire Wire Line
	1650 1700 2250 1700
Text GLabel 2250 1600 2    50   Input ~ 0
+V
Text GLabel 2250 1700 2    50   Input ~ 0
0V
Text GLabel 5750 2350 2    50   Input ~ 0
+V
Text GLabel 5750 3350 2    50   Input ~ 0
0V
Connection ~ 4350 2350
Connection ~ 4350 3350
Connection ~ 4900 2350
Connection ~ 4900 3350
Wire Wire Line
	4350 2350 4900 2350
Wire Wire Line
	4900 2350 5500 2350
Wire Wire Line
	4900 3350 5500 3350
Wire Wire Line
	4350 3350 4900 3350
$Comp
L Device:R R1
U 1 1 5CCC734D
P 5500 2850
F 0 "R1" H 5570 2896 50  0000 L CNN
F 1 "10K 1W" H 5570 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5430 2850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/40613.pdf" H 5500 2850 50  0001 C CNN
F 4 "RE05119" H 5500 2850 50  0001 C CNN "CPC Code"
	1    5500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2700 5500 2350
Connection ~ 5500 2350
Wire Wire Line
	5500 2350 5750 2350
Wire Wire Line
	5500 3000 5500 3350
Connection ~ 5500 3350
Wire Wire Line
	5500 3350 5750 3350
$EndSCHEMATC
