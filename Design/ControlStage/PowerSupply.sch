EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "YAPS - Regulated Power Supply"
Date "2019-05-26"
Rev "0.1"
Comp "Andrew Johnson"
Comment1 "Output Voltage: 0 - 15Vdc"
Comment2 "Output Current: 0 - 3A"
Comment3 "Constant Voltage"
Comment4 "Constant Current"
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5CA25B75
P 1350 2000
F 0 "J2" H 1268 1675 50  0000 C CNN
F 1 "Conn_01x02" H 1268 1766 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1350 2000 50  0001 C CNN
F 3 "https://cpc.farnell.com/phoenix-contact/1729128/terminal-block-pcb-5-08mm-2way/dp/CN14697?st=pcb%20terminal%20blocks" H 1350 2000 50  0001 C CNN
F 4 "CN14697" H 1350 2000 50  0001 C CNN "CPC Code"
	1    1350 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 1900 1850 1900
Wire Wire Line
	1550 2000 1650 2000
Wire Wire Line
	1650 2000 1650 2300
$Comp
L Device:CP C1
U 1 1 5CA26A2E
P 1850 2050
F 0 "C1" H 1968 2096 50  0000 L CNN
F 1 "100uF" H 1850 1950 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 1888 1900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2100017.pdf?_ga=2.209634455.464475340.1555178862-441347304.1541859637&_gac=1.250357170.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 1850 2050 50  0001 C CNN
F 4 "8823391" H 1850 2050 50  0001 C CNN "Farnell Code"
	1    1850 2050
	1    0    0    -1  
$EndComp
Connection ~ 1850 1900
Wire Wire Line
	1850 1900 2350 1900
Wire Wire Line
	1850 2200 1850 2300
Wire Wire Line
	1850 2300 1650 2300
Connection ~ 1650 2300
$Comp
L Device:C C2
U 1 1 5CA273A1
P 2350 2050
F 0 "C2" H 2465 2096 50  0000 L CNN
F 1 "0.1uF" H 2400 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2388 1900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1901289.pdf?_ga=2.217959571.464475340.1555178862-441347304.1541859637&_gac=1.205178532.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 2350 2050 50  0001 C CNN
F 4 "2320839" H 2350 2050 50  0001 C CNN "Farnell Code"
	1    2350 2050
	1    0    0    -1  
$EndComp
Connection ~ 2350 1900
Wire Wire Line
	2350 2200 2350 2300
Wire Wire Line
	2350 2300 1850 2300
Connection ~ 1850 2300
$Comp
L power:GNDPWR #PWR02
U 1 1 5CA27D83
P 1650 2600
F 0 "#PWR02" H 1650 2350 50  0001 C CNN
F 1 "GNDPWR" H 1655 2427 50  0000 C CNN
F 2 "" H 1650 2600 50  0001 C CNN
F 3 "" H 1650 2600 50  0001 C CNN
	1    1650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1900 2800 1900
$Comp
L power:VCC #PWR05
U 1 1 5CA281CA
P 3000 1900
F 0 "#PWR05" H 3000 1750 50  0001 C CNN
F 1 "VCC" V 3017 2028 50  0000 L CNN
F 2 "" H 3000 1900 50  0001 C CNN
F 3 "" H 3000 1900 50  0001 C CNN
	1    3000 1900
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CA2AA7F
P 2900 1900
F 0 "#FLG02" H 2900 1975 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 2073 50  0000 C CNN
F 2 "" H 2900 1900 50  0001 C CNN
F 3 "~" H 2900 1900 50  0001 C CNN
	1    2900 1900
	1    0    0    -1  
$EndComp
Connection ~ 2900 1900
Wire Wire Line
	2900 1900 3000 1900
Text Notes 600  2100 0    50   ~ 0
Connection from\nPower Stage\n(min 20V)
$Sheet
S 3850 1900 1200 950 
U 5CA4902E
F0 "Switching Regulator" 50
F1 "SwitchingRegulator.sch" 50
F2 "PI" I L 3850 2050 50 
F3 "REGout1" I L 3850 2700 50 
F4 "REGout2" I R 5050 2050 50 
$EndSheet
Wire Wire Line
	2800 2050 2800 1900
Connection ~ 2800 1900
Wire Wire Line
	2800 1900 2900 1900
Wire Wire Line
	2800 2050 3000 2050
$Sheet
S 2350 3450 850  650 
U 5CA92318
F0 "Current Source" 50
F1 "CurrentSource.sch" 50
F2 "PI" I L 2350 3600 50 
F3 "CSout" I R 3200 3600 50 
F4 "CSset" I R 3200 3950 50 
$EndSheet
Wire Wire Line
	2350 3600 2000 3600
Wire Wire Line
	3000 2600 3000 2050
Connection ~ 3000 2050
Wire Wire Line
	3000 2050 3850 2050
Wire Wire Line
	2000 3600 2000 2600
Wire Wire Line
	2000 2600 3000 2600
Wire Wire Line
	3200 3600 3500 3600
Wire Wire Line
	3500 3600 3500 2700
Wire Wire Line
	3500 2700 3850 2700
Text Notes 1700 7450 0    50   ~ 0
5 & 6 - Voltage Control 10K Potentiometer Wiper to GND
$Sheet
S 6050 1900 1100 950 
U 5CAA5A19
F0 "Linear Regulator 1" 50
F1 "LinearRegulator.sch" 50
F2 "REGin" I L 6050 2050 50 
F3 "Vset" I L 6050 2250 50 
F4 "Iout" I R 7150 2650 50 
F5 "ILIM+" I R 7150 2250 50 
F6 "IBASEin" I R 7150 2050 50 
F7 "TEMP1out" I L 6050 2450 50 
F8 "TEMP2out" I L 6050 2600 50 
F9 "IMONout" I L 6050 2750 50 
F10 "ILIM-" I R 7150 2450 50 
$EndSheet
Wire Wire Line
	5550 2250 6050 2250
Wire Wire Line
	3200 3950 4700 3950
Connection ~ 5550 3950
Wire Wire Line
	5550 3950 5550 4650
Wire Wire Line
	6050 2450 5700 2450
Text Label 5700 2450 0    50   ~ 0
T1OUT
Text Label 4950 7050 1    50   ~ 0
T2OUT
Text Label 4850 7050 1    50   ~ 0
T1OUT
Text Label 1750 6950 1    50   ~ 0
VCTRL+
$Comp
L power:GNDS #PWR03
U 1 1 5CA9711E
P 1850 6700
F 0 "#PWR03" H 1850 6450 50  0001 C CNN
F 1 "GNDS" H 1855 6527 50  0000 C CNN
F 2 "" H 1850 6700 50  0001 C CNN
F 3 "" H 1850 6700 50  0001 C CNN
	1    1850 6700
	-1   0    0    1   
$EndComp
Text Notes 4500 7650 0    50   ~ 0
Arduino Analog (A0:A6 = 1:6) and SDA/SCL outputs\nFor monitoring
Text Label 5550 4650 2    50   ~ 0
VCTRL+
Text Label 1950 6950 1    50   ~ 0
ICTRL+
Text Label 2050 6950 1    50   ~ 0
ICTRL-
Text Notes 1700 7550 0    50   ~ 0
3 & 4 - Current Control 5K Potentiometer Wiper to ICTRL-
Text Label 7650 2250 0    50   ~ 0
ICTRL+
Text Label 7650 2450 0    50   ~ 0
ICTRL-
Connection ~ 2000 3600
$Sheet
S 9000 1150 1100 1000
U 5CAB0D5A
F0 "-Ve Power Supply" 50
F1 "NegPowerSupply.sch" 50
F2 "REG5VIN" I L 9000 1350 50 
F3 "REG-5VOUT" I L 9000 1900 50 
$EndSheet
Wire Wire Line
	9000 1350 8650 1350
Text Label 8650 1350 2    50   ~ 0
REG5V
Wire Wire Line
	7150 2050 8700 2050
Wire Wire Line
	3500 4850 5150 4850
Connection ~ 3500 3600
$Sheet
S 5350 5150 1050 800 
U 5CAC1458
F0 "Output Monitoring" 50
F1 "Output_Monitor.sch" 50
F2 "PI" I L 5350 5300 50 
F3 "REG5VIN" I L 5350 5500 50 
F4 "POUT" I R 6400 5300 50 
F5 "SDA" I R 6400 5500 50 
F6 "SCL" I R 6400 5700 50 
F7 "TMOSOUT" I L 5350 5700 50 
F8 "TBROUT" I L 5350 5850 50 
F9 "TCASEOUT" I R 6400 5850 50 
$EndSheet
Wire Wire Line
	5350 5300 5150 5300
Wire Wire Line
	5150 5300 5150 4850
Connection ~ 5150 4850
Wire Wire Line
	5150 4850 8700 4850
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5CACEB04
P 8650 5300
F 0 "J5" H 8730 5292 50  0000 L CNN
F 1 "Conn_01x02" H 8730 5201 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 8650 5300 50  0001 C CNN
F 3 "https://cpc.farnell.com/phoenix-contact/1729128/terminal-block-pcb-5-08mm-2way/dp/CN14697?st=pcb%20terminal%20blocks" H 8650 5300 50  0001 C CNN
F 4 "CN14697" H 8650 5300 50  0001 C CNN "CPC Code"
	1    8650 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5400 8300 5400
Wire Wire Line
	8300 5400 8300 5500
$Comp
L power:GNDS #PWR07
U 1 1 5CAD2031
P 8300 5500
F 0 "#PWR07" H 8300 5250 50  0001 C CNN
F 1 "GNDS" H 8305 5327 50  0000 C CNN
F 2 "" H 8300 5500 50  0001 C CNN
F 3 "" H 8300 5500 50  0001 C CNN
	1    8300 5500
	1    0    0    -1  
$EndComp
Text Notes 8450 5150 0    50   ~ 0
Connection to LOAD
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 5CAD2E2D
P 4950 7400
F 0 "J4" V 4800 7850 50  0000 L CNN
F 1 "Conn_01x08" V 4950 7850 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-08A_1x08_P2.54mm_Vertical" H 4950 7400 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022272081_sd.pdf" H 4950 7400 50  0001 C CNN
F 4 "WM4117-ND + WM1581-ND + WM2623-ND" V 4950 7400 50  0001 C CNN "Digikey Code"
	1    4950 7400
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 7200 4950 7050
Wire Wire Line
	5050 7200 5050 7050
Text Label 700  7050 1    50   ~ 0
REG5V
Text Label 4550 7050 1    50   ~ 0
SDA
Text Label 4650 7050 1    50   ~ 0
SCL
Wire Wire Line
	6400 5500 6550 5500
Wire Wire Line
	6400 5700 6550 5700
Text Label 6550 5500 0    50   ~ 0
SDA
Text Label 6550 5700 0    50   ~ 0
SCL
Wire Wire Line
	4850 7050 4850 7200
$Comp
L power:GNDS #PWR06
U 1 1 5CB18664
P 800 7050
F 0 "#PWR06" H 800 6800 50  0001 C CNN
F 1 "GNDS" V 800 6800 50  0000 C CNN
F 2 "" H 800 7050 50  0001 C CNN
F 3 "" H 800 7050 50  0001 C CNN
	1    800  7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 2050 6050 2050
Wire Wire Line
	5550 2250 5550 3950
Wire Wire Line
	7150 2250 7650 2250
Wire Wire Line
	6050 2600 5700 2600
Text Label 5700 2600 0    50   ~ 0
T2OUT
Wire Wire Line
	7150 2450 7650 2450
Wire Wire Line
	7150 2650 8700 2650
Connection ~ 8700 2650
Wire Wire Line
	8700 2650 8700 4850
Wire Wire Line
	6050 2750 5700 2750
Text Label 5700 2750 0    50   ~ 0
IMON
$Sheet
S 2700 5300 1000 700 
U 5CAA5FE8
F0 "Low Voltage Supply" 50
F1 "LowVoltageSupply.sch" 50
F2 "PI" I L 2700 5500 50 
F3 "REG_5v" I R 3700 5500 50 
$EndSheet
Wire Wire Line
	3700 5500 4050 5500
Text Label 4050 5400 1    50   ~ 0
REG5V
Wire Wire Line
	4050 5400 4050 5500
Connection ~ 4050 5500
Wire Wire Line
	4050 5500 5350 5500
Wire Wire Line
	2000 5500 2000 3600
Wire Wire Line
	2000 5500 2700 5500
Wire Wire Line
	3500 3600 3500 4850
Wire Wire Line
	4700 3950 4700 4650
Connection ~ 4700 3950
Wire Wire Line
	4700 3950 5550 3950
Text Label 4700 4650 2    50   ~ 0
ON-OFF
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5CC207AE
P 2050 7300
F 0 "J3" V 1900 7600 50  0000 L CNN
F 1 "Conn_01x06" V 2000 7600 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 2050 7300 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022272061_sd.pdf" H 2050 7300 50  0001 C CNN
F 4 "WM4115-ND + WM1579-ND + WM2623-ND" V 2050 7300 50  0001 C CNN "Digikey Code"
	1    2050 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 7100 2150 6950
Text Label 2150 6950 1    50   ~ 0
ON-OFF
$Comp
L power:GNDS #PWR04
U 1 1 5CC236EE
P 2250 6700
F 0 "#PWR04" H 2250 6450 50  0001 C CNN
F 1 "GNDS" H 2255 6527 50  0000 C CNN
F 2 "" H 2250 6700 50  0001 C CNN
F 3 "" H 2250 6700 50  0001 C CNN
	1    2250 6700
	-1   0    0    1   
$EndComp
Text Label 4750 7050 1    50   ~ 0
IMON
Wire Wire Line
	8700 2050 8700 2650
Wire Wire Line
	9000 1900 8700 1900
Wire Wire Line
	8700 1900 8700 2050
Connection ~ 8700 2050
Wire Wire Line
	4650 7200 4650 7050
Wire Wire Line
	5150 7200 5150 7050
Wire Wire Line
	4750 7050 4750 7200
Wire Wire Line
	2050 7100 2050 6950
Wire Wire Line
	1950 7100 1950 6950
Wire Wire Line
	1750 7100 1750 6950
Wire Wire Line
	1850 6700 1850 7100
Wire Wire Line
	2250 6700 2250 7100
Text Notes 1700 7650 0    50   ~ 0
1 & 2 - SPST switch.  Circuit to ground when closed (circuit off)
Text Notes 650  7650 0    50   ~ 0
Power for Arduino
Text Notes 650  6450 0    50   ~ 0
Rotary Potentiometers\n5K   - Bourns 3590S-1-502L Digikey Code: 3590S-1-502L-ND\n10K - Bourns 3590S-1-103L Digikey Code: 3590S-1-103L-ND\n2xcaps - Bourns H-516-6A Digikey Code: H-516-6A-ND
Text Notes 8200 6050 0    50   ~ 0
Binding Posts\nRed Farnell Code: 1815818\nBlack Farnell Code: 1815819
Text Notes 2650 6900 0    50   ~ 0
Switch\nSPDT On-On \nE-Switch RR3130CBLKBLKFS \nDigikey Code: EG1891-ND
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5CD715D4
P 800 7400
F 0 "J1" V 672 7480 50  0000 L CNN
F 1 "Conn_01x02" V 763 7480 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 800 7400 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022272021_sd.pdf" H 800 7400 50  0001 C CNN
F 4 "WM4111-ND + WM1575-ND + WM2623-ND" V 800 7400 50  0001 C CNN "Digikey Code"
	1    800  7400
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 7200 4550 7050
Wire Wire Line
	5250 7200 5250 7050
Text Label 5050 7050 1    50   ~ 0
TMOSOUT
Text Label 5150 7050 1    50   ~ 0
TBROUT
Text Label 5250 7050 1    50   ~ 0
TCASEOUT
Wire Wire Line
	700  7200 700  7050
Wire Wire Line
	800  7200 800  7050
Wire Wire Line
	6400 5300 8450 5300
Wire Wire Line
	5150 5700 5350 5700
Wire Wire Line
	5350 5850 5150 5850
Wire Wire Line
	6400 5850 6550 5850
Text Label 5150 5700 2    50   ~ 0
TMOSOUT
Text Label 5150 5850 2    50   ~ 0
TBROUT
Text Label 6550 5850 0    50   ~ 0
TCASEOUT
$Comp
L power:GNDS #PWR0101
U 1 1 5CE4A23B
P 10250 3550
F 0 "#PWR0101" H 10250 3300 50  0001 C CNN
F 1 "GNDS" H 10255 3377 50  0000 C CNN
F 2 "" H 10250 3550 50  0001 C CNN
F 3 "" H 10250 3550 50  0001 C CNN
	1    10250 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0102
U 1 1 5CE4E9AE
P 9850 3550
F 0 "#PWR0102" H 9850 3350 50  0001 C CNN
F 1 "GNDPWR" H 9854 3396 50  0000 C CNN
F 2 "" H 9850 3500 50  0001 C CNN
F 3 "" H 9850 3500 50  0001 C CNN
	1    9850 3550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5CE50B68
P 10500 3800
F 0 "#FLG0102" H 10500 3875 50  0001 C CNN
F 1 "PWR_FLAG" V 10500 3927 50  0000 L CNN
F 2 "" H 10500 3800 50  0001 C CNN
F 3 "~" H 10500 3800 50  0001 C CNN
	1    10500 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 2300 1650 2600
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5CE59423
P 10050 3450
F 0 "NT1" H 10050 3631 50  0000 C CNN
F 1 "Net-Tie_2" H 10050 3540 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad2.0mm" H 10050 3450 50  0001 C CNN
F 3 "~" H 10050 3450 50  0001 C CNN
	1    10050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3550 9850 3500
Wire Wire Line
	9850 3450 9950 3450
Wire Wire Line
	10250 3550 10250 3500
Wire Wire Line
	10250 3450 10150 3450
Wire Wire Line
	10500 3500 10500 3800
Wire Wire Line
	10250 3500 10500 3500
Connection ~ 10250 3500
Wire Wire Line
	10250 3500 10250 3450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5CE7C97D
P 9500 3800
F 0 "#FLG0101" H 9500 3875 50  0001 C CNN
F 1 "PWR_FLAG" V 9500 3927 50  0000 L CNN
F 2 "" H 9500 3800 50  0001 C CNN
F 3 "~" H 9500 3800 50  0001 C CNN
	1    9500 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 3800 9500 3500
Wire Wire Line
	9500 3500 9850 3500
Connection ~ 9850 3500
Wire Wire Line
	9850 3500 9850 3450
$EndSCHEMATC
