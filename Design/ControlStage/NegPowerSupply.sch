EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "YAPS - Regulated Power Supply"
Date "2019-06-08"
Rev "1.1"
Comp "Andrew Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1000 1000 0    50   Input ~ 0
REG5VIN
Wire Wire Line
	1000 1000 1200 1000
$Comp
L Device:C C23
U 1 1 5CAB0F95
P 1200 1250
F 0 "C23" H 1315 1296 50  0000 L CNN
F 1 "10uF" H 1315 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1238 1100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 1200 1250 50  0001 C CNN
F 4 "2611943" H 1200 1250 50  0001 C CNN "Farnell Code"
	1    1200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1100 1200 1000
Connection ~ 1200 1000
Wire Wire Line
	1200 1400 1200 1500
$Comp
L power:GNDS #PWR033
U 1 1 5CAB146C
P 1200 1500
F 0 "#PWR033" H 1200 1250 50  0001 C CNN
F 1 "GNDS" H 1205 1327 50  0000 C CNN
F 2 "" H 1200 1500 50  0001 C CNN
F 3 "" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L CustomSymbolLibrary:LTC1983-3 U5
U 1 1 5CAB2E09
P 2450 1150
F 0 "U5" H 2450 800 50  0000 C CNN
F 1 "LTC1983-3" H 2450 900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6_HandSoldering" H 2450 1150 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1983fc.pdf" H 2450 1150 50  0001 C CNN
F 4 "LTC1983ES6-3#TRPBFCT-ND" H 2450 1150 50  0001 C CNN "Digikey Code"
	1    2450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5CAB454B
P 1750 1300
F 0 "C24" H 1865 1346 50  0000 L CNN
F 1 "1uF" H 1865 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 1150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2189091.pdf?_ga=2.8850352.464475340.1555178862-441347304.1541859637&_gac=1.217835810.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 1750 1300 50  0001 C CNN
F 4 "2688485" H 1750 1300 50  0001 C CNN "Farnell Code"
	1    1750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1150 2100 1150
Wire Wire Line
	1750 1450 2100 1450
Wire Wire Line
	2100 1450 2100 1300
Wire Wire Line
	1200 1000 1850 1000
Wire Wire Line
	2800 1300 2800 1450
$Comp
L power:GNDS #PWR034
U 1 1 5CAB50FE
P 2800 1500
F 0 "#PWR034" H 2800 1250 50  0001 C CNN
F 1 "GNDS" H 2805 1327 50  0000 C CNN
F 2 "" H 2800 1500 50  0001 C CNN
F 3 "" H 2800 1500 50  0001 C CNN
	1    2800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1000 3200 1000
Wire Wire Line
	2800 1150 3000 1150
Wire Wire Line
	3000 1150 3000 750 
Wire Wire Line
	3000 750  1850 750 
Wire Wire Line
	1850 750  1850 1000
Connection ~ 1850 1000
Wire Wire Line
	1850 1000 2100 1000
Text HLabel 4000 1600 2    50   Input ~ 0
REG-5VOUT
$Comp
L Device:R R20
U 1 1 5CAB607A
P 3600 1000
F 0 "R20" V 3393 1000 50  0000 C CNN
F 1 "220" V 3484 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 1000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.223356190.464475340.1555178862-441347304.1541859637&_gac=1.41626134.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 3600 1000 50  0001 C CNN
F 4 "2447606" V 3600 1000 50  0001 C CNN "Farnell Code"
	1    3600 1000
	0    1    1    0   
$EndComp
$Comp
L Device:C C25
U 1 1 5CAB708B
P 3200 1300
F 0 "C25" H 3315 1346 50  0000 L CNN
F 1 "10uF" H 3315 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3238 1150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 3200 1300 50  0001 C CNN
F 4 "2611943" H 3200 1300 50  0001 C CNN "Farnell Code"
	1    3200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1150 3200 1000
Wire Wire Line
	3450 1000 3200 1000
Connection ~ 3200 1000
Wire Wire Line
	3750 1000 4000 1000
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5CAB8B1E
P 4100 1200
F 0 "Q3" H 4291 1154 50  0000 L CNN
F 1 "2N3904" H 4291 1245 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4300 1125 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/2284140.pdf?_ga=2.121420173.44717249.1558464473-287732444.1556558561" H 4100 1200 50  0001 L CNN
F 4 "1700648" H 4100 1200 50  0001 C CNN "Farnell Code"
	1    4100 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 1200 4500 1200
$Comp
L power:GNDS #PWR035
U 1 1 5CAB9D5E
P 4500 1200
F 0 "#PWR035" H 4500 950 50  0001 C CNN
F 1 "GNDS" V 4505 1072 50  0000 R CNN
F 2 "" H 4500 1200 50  0001 C CNN
F 3 "" H 4500 1200 50  0001 C CNN
	1    4500 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1400 4000 1600
Wire Wire Line
	3200 1450 2800 1450
Connection ~ 2800 1450
Wire Wire Line
	2800 1450 2800 1500
Text Notes 1550 1650 0    50   ~ 0
Use =>X5R Ceramic\nCouple close to pins
Text Notes 3050 1650 0    50   ~ 0
Use =>X5R Ceramic\nCouple close to pins
Text Notes 850  1950 0    50   ~ 0
Use =>X5R Ceramic\nCouple close to Vin
Text Notes 1600 2400 0    50   ~ 0
See Datasheet for layout recommendations
$EndSCHEMATC
