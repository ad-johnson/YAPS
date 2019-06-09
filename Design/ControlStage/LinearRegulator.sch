EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "YAPS - Regulated Power Supply"
Date "2019-06-08"
Rev "1.1"
Comp "Andrew Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 2000 0    50   Input ~ 0
REGin
$Comp
L Device:C C11
U 1 1 5CAA5E6C
P 1750 2300
AR Path="/5CAA5A19/5CAA5E6C" Ref="C11"  Part="1" 
AR Path="/5CABF3A4/5CAA5E6C" Ref="C?"  Part="1" 
F 0 "C11" H 1900 2350 50  0000 L CNN
F 1 "10uF" H 1900 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 2150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 1750 2300 50  0001 C CNN
F 4 "2611943" H 1750 2300 50  0001 C CNN "Farnell Code"
	1    1750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2150 1750 2000
Wire Wire Line
	2450 2150 2450 2000
$Comp
L power:GNDS #PWR015
U 1 1 5CAA69A7
P 1750 2600
AR Path="/5CAA5A19/5CAA69A7" Ref="#PWR015"  Part="1" 
AR Path="/5CABF3A4/5CAA69A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 1750 2350 50  0001 C CNN
F 1 "GNDS" H 1755 2427 50  0000 C CNN
F 2 "" H 1750 2600 50  0001 C CNN
F 3 "" H 1750 2600 50  0001 C CNN
	1    1750 2600
	1    0    0    -1  
$EndComp
$Comp
L CustomSymbolLibrary:LT3081_TO-220 U4
U 1 1 5CAA8266
P 6100 2250
AR Path="/5CAA5A19/5CAA8266" Ref="U4"  Part="1" 
AR Path="/5CABF3A4/5CAA8266" Ref="U?"  Part="1" 
F 0 "U4" H 6100 2765 50  0000 C CNN
F 1 "LT3081_TO-220" H 6100 2674 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220F-7_P2.54x3.7mm_StaggerOdd_Lead3.5mm_Vertical" H 5900 2100 50  0001 C CNN
F 3 "http://www.linear.com/docs/43256" H 5900 2100 50  0001 C CNN
F 4 "LT3081ET7#PBF-ND" H 6100 2250 50  0001 C CNN "Digikey Code"
	1    6100 2250
	1    0    0    -1  
$EndComp
NoConn ~ 6500 2450
Text HLabel 7400 2850 2    50   Input ~ 0
ILIM+
Wire Wire Line
	5700 2450 5600 2450
$Comp
L Device:R R13
U 1 1 5CAAA3EB
P 5600 2900
AR Path="/5CAA5A19/5CAAA3EB" Ref="R13"  Part="1" 
AR Path="/5CABF3A4/5CAAA3EB" Ref="R?"  Part="1" 
F 0 "R13" H 5670 2946 50  0000 L CNN
F 1 "10K 1%" H 5670 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 2900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2189453.pdf?_ga=2.218517404.464475340.1555178862-441347304.1541859637&_gac=1.50055954.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 5600 2900 50  0001 C CNN
F 4 "2694096" H 5600 2900 50  0001 C CNN "Farnell Code"
	1    5600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2150 4500 2150
Wire Wire Line
	5700 2300 5350 2300
$Comp
L Device:C C18
U 1 1 5CAABA41
P 7300 2250
AR Path="/5CAA5A19/5CAABA41" Ref="C18"  Part="1" 
AR Path="/5CABF3A4/5CAABA41" Ref="C?"  Part="1" 
F 0 "C18" H 7415 2296 50  0000 L CNN
F 1 "10uF" H 7415 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7338 2100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 7300 2250 50  0001 C CNN
F 4 "2611943" H 7300 2250 50  0001 C CNN "Farnell Code"
	1    7300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5CAAC37F
P 7700 2250
AR Path="/5CAA5A19/5CAAC37F" Ref="C20"  Part="1" 
AR Path="/5CABF3A4/5CAAC37F" Ref="C?"  Part="1" 
F 0 "C20" H 7815 2296 50  0000 L CNN
F 1 "10uF" H 7815 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7738 2100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 7700 2250 50  0001 C CNN
F 4 "2611943" H 7700 2250 50  0001 C CNN "Farnell Code"
	1    7700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5CAAC95C
P 8100 2250
AR Path="/5CAA5A19/5CAAC95C" Ref="C22"  Part="1" 
AR Path="/5CABF3A4/5CAAC95C" Ref="C?"  Part="1" 
F 0 "C22" H 8215 2296 50  0000 L CNN
F 1 "10uF" H 8215 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8138 2100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 8100 2250 50  0001 C CNN
F 4 "2611943" H 8100 2250 50  0001 C CNN "Farnell Code"
	1    8100 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5CAAD02A
P 8500 2250
AR Path="/5CAA5A19/5CAAD02A" Ref="R17"  Part="1" 
AR Path="/5CABF3A4/5CAAD02A" Ref="R?"  Part="1" 
F 0 "R17" H 8570 2296 50  0000 L CNN
F 1 "10K" H 8570 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 2250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2189453.pdf?_ga=2.218517404.464475340.1555178862-441347304.1541859637&_gac=1.50055954.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 8500 2250 50  0001 C CNN
F 4 "2694096" H 8500 2250 50  0001 C CNN "Farnell Code"
	1    8500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2100 8500 2000
Connection ~ 8500 2000
Wire Wire Line
	8500 2000 8800 2000
Wire Wire Line
	8100 2100 8100 2000
Connection ~ 8100 2000
Wire Wire Line
	8100 2000 8500 2000
Wire Wire Line
	7700 2100 7700 2000
Connection ~ 7700 2000
Wire Wire Line
	7700 2000 8100 2000
Wire Wire Line
	7300 2100 7300 2000
Connection ~ 7300 2000
Wire Wire Line
	7300 2000 7700 2000
Wire Wire Line
	7300 2400 7300 2550
Wire Wire Line
	8500 2550 8500 2400
Wire Wire Line
	8100 2400 8100 2550
Wire Wire Line
	7700 2400 7700 2550
$Comp
L Device:R R19
U 1 1 5CAAFA34
P 8950 2000
AR Path="/5CAA5A19/5CAAFA34" Ref="R19"  Part="1" 
AR Path="/5CABF3A4/5CAAFA34" Ref="R?"  Part="1" 
F 0 "R19" V 8743 2000 50  0000 C CNN
F 1 "15m 1%" V 8834 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 2000 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDN0000/AOA0000C313.pdf" H 8950 2000 50  0001 C CNN
F 4 "P19200CT-ND" V 8950 2000 50  0001 C CNN "Digikey Code"
	1    8950 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 2000 9250 2000
Text HLabel 9250 1750 1    50   Input ~ 0
IBASEin
Connection ~ 7000 2000
Wire Wire Line
	7000 2000 7300 2000
Wire Wire Line
	5600 2650 6000 2650
Connection ~ 5600 2650
Text HLabel 6000 2650 2    50   Input ~ 0
TEMP1out
$Comp
L Device:C C13
U 1 1 5CAA6356
P 2450 2300
AR Path="/5CAA5A19/5CAA6356" Ref="C13"  Part="1" 
AR Path="/5CABF3A4/5CAA6356" Ref="C?"  Part="1" 
F 0 "C13" H 2565 2346 50  0000 L CNN
F 1 "10uF" H 2565 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2488 2150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 2450 2300 50  0001 C CNN
F 4 "2611943" H 2450 2300 50  0001 C CNN "Farnell Code"
	1    2450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2450 1750 2600
Wire Wire Line
	2450 2450 2450 2600
$Comp
L power:GNDS #PWR017
U 1 1 5CAB585B
P 2450 2600
AR Path="/5CAA5A19/5CAB585B" Ref="#PWR017"  Part="1" 
AR Path="/5CABF3A4/5CAB585B" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 2450 2350 50  0001 C CNN
F 1 "GNDS" H 2455 2427 50  0000 C CNN
F 2 "" H 2450 2600 50  0001 C CNN
F 3 "" H 2450 2600 50  0001 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR028
U 1 1 5CAB6204
P 7700 2550
AR Path="/5CAA5A19/5CAB6204" Ref="#PWR028"  Part="1" 
AR Path="/5CABF3A4/5CAB6204" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 7700 2300 50  0001 C CNN
F 1 "GNDS" H 7705 2377 50  0000 C CNN
F 2 "" H 7700 2550 50  0001 C CNN
F 3 "" H 7700 2550 50  0001 C CNN
	1    7700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR030
U 1 1 5CAB6431
P 8100 2550
AR Path="/5CAA5A19/5CAB6431" Ref="#PWR030"  Part="1" 
AR Path="/5CABF3A4/5CAB6431" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 8100 2300 50  0001 C CNN
F 1 "GNDS" H 8105 2377 50  0000 C CNN
F 2 "" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0001 C CNN
	1    8100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR032
U 1 1 5CAB6800
P 8500 2550
AR Path="/5CAA5A19/5CAB6800" Ref="#PWR032"  Part="1" 
AR Path="/5CABF3A4/5CAB6800" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 8500 2300 50  0001 C CNN
F 1 "GNDS" H 8505 2377 50  0000 C CNN
F 2 "" H 8500 2550 50  0001 C CNN
F 3 "" H 8500 2550 50  0001 C CNN
	1    8500 2550
	1    0    0    -1  
$EndComp
Text Notes 1550 1600 0    50   ~ 0
Current regulator providing up to 3A (2 x 1.5A) controlled by a potentiometer.
$Comp
L Device:C C14
U 1 1 5CB0492E
P 3000 2300
AR Path="/5CAA5A19/5CB0492E" Ref="C14"  Part="1" 
AR Path="/5CABF3A4/5CB0492E" Ref="C?"  Part="1" 
F 0 "C14" H 3115 2346 50  0000 L CNN
F 1 "10uF" H 3115 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3038 2150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 3000 2300 50  0001 C CNN
F 4 "2611943" H 3000 2300 50  0001 C CNN "Farnell Code"
	1    3000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2150 3000 2000
$Comp
L power:GNDS #PWR018
U 1 1 5CB057C9
P 3000 2600
AR Path="/5CAA5A19/5CB057C9" Ref="#PWR018"  Part="1" 
AR Path="/5CABF3A4/5CB057C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 3000 2350 50  0001 C CNN
F 1 "GNDS" H 3005 2427 50  0000 C CNN
F 2 "" H 3000 2600 50  0001 C CNN
F 3 "" H 3000 2600 50  0001 C CNN
	1    3000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2600 3000 2450
Wire Wire Line
	7000 2000 7000 2850
$Comp
L Device:R R11
U 1 1 5CB087AE
P 5350 2900
AR Path="/5CAA5A19/5CB087AE" Ref="R11"  Part="1" 
AR Path="/5CABF3A4/5CB087AE" Ref="R?"  Part="1" 
F 0 "R11" H 5150 2950 50  0000 L CNN
F 1 "1K 1%" H 5050 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 2900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.189204526.464475340.1555178862-441347304.1541859637&_gac=1.183224978.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 5350 2900 50  0001 C CNN
F 4 "2447587" H 5350 2900 50  0001 C CNN "Farnell Code"
	1    5350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR022
U 1 1 5CB096AA
P 5350 3150
AR Path="/5CAA5A19/5CB096AA" Ref="#PWR022"  Part="1" 
AR Path="/5CABF3A4/5CB096AA" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 5350 2900 50  0001 C CNN
F 1 "GNDS" H 5355 2977 50  0000 C CNN
F 2 "" H 5350 3150 50  0001 C CNN
F 3 "" H 5350 3150 50  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3150 5350 3050
Wire Wire Line
	5350 2300 5000 2300
Connection ~ 5350 2300
Wire Wire Line
	2300 4400 2300 4250
$Comp
L CustomSymbolLibrary:LT3081_TO-220 U3
U 1 1 5CB49120
P 6050 4500
AR Path="/5CAA5A19/5CB49120" Ref="U3"  Part="1" 
AR Path="/5CABF3A4/5CB49120" Ref="U?"  Part="1" 
F 0 "U3" H 6050 5015 50  0000 C CNN
F 1 "LT3081_TO-220" H 6050 4924 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220F-7_P2.54x3.7mm_StaggerOdd_Lead3.5mm_Vertical" H 5850 4350 50  0001 C CNN
F 3 "http://www.linear.com/docs/43256" H 5850 4350 50  0001 C CNN
F 4 "LT3081ET7#PBF-ND" H 6050 4500 50  0001 C CNN "Digikey Code"
	1    6050 4500
	1    0    0    -1  
$EndComp
NoConn ~ 6450 4700
Wire Wire Line
	5650 4700 5500 4700
$Comp
L Device:R R12
U 1 1 5CB4912F
P 5500 5400
AR Path="/5CAA5A19/5CB4912F" Ref="R12"  Part="1" 
AR Path="/5CABF3A4/5CB4912F" Ref="R?"  Part="1" 
F 0 "R12" H 5570 5446 50  0000 L CNN
F 1 "10K 1%" H 5570 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5430 5400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2189453.pdf?_ga=2.218517404.464475340.1555178862-441347304.1541859637&_gac=1.50055954.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 5500 5400 50  0001 C CNN
F 4 "2694096" H 5500 5400 50  0001 C CNN "Farnell Code"
	1    5500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5550 5500 5650
$Comp
L power:GNDS #PWR023
U 1 1 5CB49136
P 5500 5650
AR Path="/5CAA5A19/5CB49136" Ref="#PWR023"  Part="1" 
AR Path="/5CABF3A4/5CB49136" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 5500 5400 50  0001 C CNN
F 1 "GNDS" H 5505 5477 50  0000 C CNN
F 2 "" H 5500 5650 50  0001 C CNN
F 3 "" H 5500 5650 50  0001 C CNN
	1    5500 5650
	1    0    0    -1  
$EndComp
Text HLabel 4100 4400 0    50   Input ~ 0
Vset
Wire Wire Line
	5650 4550 5300 4550
$Comp
L Device:C C17
U 1 1 5CB4913F
P 7250 4500
AR Path="/5CAA5A19/5CB4913F" Ref="C17"  Part="1" 
AR Path="/5CABF3A4/5CB4913F" Ref="C?"  Part="1" 
F 0 "C17" H 7365 4546 50  0000 L CNN
F 1 "10uF" H 7365 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7288 4350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 7250 4500 50  0001 C CNN
F 4 "2611943" H 7250 4500 50  0001 C CNN "Farnell Code"
	1    7250 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5CB49145
P 7650 4500
AR Path="/5CAA5A19/5CB49145" Ref="C19"  Part="1" 
AR Path="/5CABF3A4/5CB49145" Ref="C?"  Part="1" 
F 0 "C19" H 7765 4546 50  0000 L CNN
F 1 "10uF" H 7765 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7688 4350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 7650 4500 50  0001 C CNN
F 4 "2611943" H 7650 4500 50  0001 C CNN "Farnell Code"
	1    7650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5CB4914B
P 8050 4500
AR Path="/5CAA5A19/5CB4914B" Ref="C21"  Part="1" 
AR Path="/5CABF3A4/5CB4914B" Ref="C?"  Part="1" 
F 0 "C21" H 8165 4546 50  0000 L CNN
F 1 "10uF" H 8165 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8088 4350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 8050 4500 50  0001 C CNN
F 4 "2611943" H 8050 4500 50  0001 C CNN "Farnell Code"
	1    8050 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5CB49151
P 8450 4500
AR Path="/5CAA5A19/5CB49151" Ref="R16"  Part="1" 
AR Path="/5CABF3A4/5CB49151" Ref="R?"  Part="1" 
F 0 "R16" H 8520 4546 50  0000 L CNN
F 1 "10K" H 8520 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 4500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2189453.pdf?_ga=2.218517404.464475340.1555178862-441347304.1541859637&_gac=1.50055954.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 8450 4500 50  0001 C CNN
F 4 "2694096" H 8450 4500 50  0001 C CNN "Farnell Code"
	1    8450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4350 8450 4250
Connection ~ 8450 4250
Wire Wire Line
	8450 4250 8750 4250
Wire Wire Line
	8050 4350 8050 4250
Connection ~ 8050 4250
Wire Wire Line
	8050 4250 8450 4250
Wire Wire Line
	7650 4350 7650 4250
Connection ~ 7650 4250
Wire Wire Line
	7650 4250 8050 4250
Wire Wire Line
	7250 4350 7250 4250
Connection ~ 7250 4250
Wire Wire Line
	7250 4250 7650 4250
Wire Wire Line
	7250 4650 7250 4800
Wire Wire Line
	8450 4800 8450 4650
Wire Wire Line
	8050 4650 8050 4800
Wire Wire Line
	7650 4650 7650 4800
$Comp
L power:GNDS #PWR025
U 1 1 5CB49168
P 7250 4800
AR Path="/5CAA5A19/5CB49168" Ref="#PWR025"  Part="1" 
AR Path="/5CABF3A4/5CB49168" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 7250 4550 50  0001 C CNN
F 1 "GNDS" H 7255 4627 50  0000 C CNN
F 2 "" H 7250 4800 50  0001 C CNN
F 3 "" H 7250 4800 50  0001 C CNN
	1    7250 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5CB4916E
P 8900 4250
AR Path="/5CAA5A19/5CB4916E" Ref="R18"  Part="1" 
AR Path="/5CABF3A4/5CB4916E" Ref="R?"  Part="1" 
F 0 "R18" V 8693 4250 50  0000 C CNN
F 1 "15m 1%" V 8784 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8830 4250 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDN0000/AOA0000C313.pdf" H 8900 4250 50  0001 C CNN
F 4 "P19200CT-ND" V 8900 4250 50  0001 C CNN "Digikey code"
	1    8900 4250
	0    1    1    0   
$EndComp
Text HLabel 9250 4450 3    50   Input ~ 0
Iout
Wire Wire Line
	5500 4700 5500 5100
Wire Wire Line
	5500 5100 5900 5100
Connection ~ 5500 5100
Wire Wire Line
	5500 5100 5500 5250
Text HLabel 5900 5100 2    50   Input ~ 0
TEMP2out
$Comp
L Device:C C12
U 1 1 5CB4917E
P 2300 4550
AR Path="/5CAA5A19/5CB4917E" Ref="C12"  Part="1" 
AR Path="/5CABF3A4/5CB4917E" Ref="C?"  Part="1" 
F 0 "C12" H 2415 4596 50  0000 L CNN
F 1 "10uF" H 2415 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2338 4400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 2300 4550 50  0001 C CNN
F 4 "2611943" H 2300 4550 50  0001 C CNN "Farnell Code"
	1    2300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4700 2300 4850
$Comp
L power:GNDS #PWR016
U 1 1 5CB49186
P 2300 4850
AR Path="/5CAA5A19/5CB49186" Ref="#PWR016"  Part="1" 
AR Path="/5CABF3A4/5CB49186" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 2300 4600 50  0001 C CNN
F 1 "GNDS" H 2305 4677 50  0000 C CNN
F 2 "" H 2300 4850 50  0001 C CNN
F 3 "" H 2300 4850 50  0001 C CNN
	1    2300 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR027
U 1 1 5CB4918C
P 7650 4800
AR Path="/5CAA5A19/5CB4918C" Ref="#PWR027"  Part="1" 
AR Path="/5CABF3A4/5CB4918C" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 7650 4550 50  0001 C CNN
F 1 "GNDS" H 7655 4627 50  0000 C CNN
F 2 "" H 7650 4800 50  0001 C CNN
F 3 "" H 7650 4800 50  0001 C CNN
	1    7650 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR029
U 1 1 5CB49192
P 8050 4800
AR Path="/5CAA5A19/5CB49192" Ref="#PWR029"  Part="1" 
AR Path="/5CABF3A4/5CB49192" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 8050 4550 50  0001 C CNN
F 1 "GNDS" H 8055 4627 50  0000 C CNN
F 2 "" H 8050 4800 50  0001 C CNN
F 3 "" H 8050 4800 50  0001 C CNN
	1    8050 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR031
U 1 1 5CB49198
P 8450 4800
AR Path="/5CAA5A19/5CB49198" Ref="#PWR031"  Part="1" 
AR Path="/5CABF3A4/5CB49198" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 8450 4550 50  0001 C CNN
F 1 "GNDS" H 8455 4627 50  0000 C CNN
F 2 "" H 8450 4800 50  0001 C CNN
F 3 "" H 8450 4800 50  0001 C CNN
	1    8450 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5CB4919E
P 3000 4550
AR Path="/5CAA5A19/5CB4919E" Ref="C15"  Part="1" 
AR Path="/5CABF3A4/5CB4919E" Ref="C?"  Part="1" 
F 0 "C15" H 3115 4596 50  0000 L CNN
F 1 "10uF" H 3115 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3038 4400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2079187.pdf?_ga=2.184442915.464475340.1555178862-441347304.1541859637&_gac=1.7154438.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 3000 4550 50  0001 C CNN
F 4 "2611943" H 3000 4550 50  0001 C CNN "Farnell Code"
	1    3000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4400 3000 4250
Connection ~ 3000 4250
$Comp
L power:GNDS #PWR019
U 1 1 5CB491A7
P 3000 4850
AR Path="/5CAA5A19/5CB491A7" Ref="#PWR019"  Part="1" 
AR Path="/5CABF3A4/5CB491A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 3000 4600 50  0001 C CNN
F 1 "GNDS" H 3005 4677 50  0000 C CNN
F 2 "" H 3000 4850 50  0001 C CNN
F 3 "" H 3000 4850 50  0001 C CNN
	1    3000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4850 3000 4700
$Comp
L Device:R R10
U 1 1 5CB491AF
P 5300 5400
AR Path="/5CAA5A19/5CB491AF" Ref="R10"  Part="1" 
AR Path="/5CABF3A4/5CB491AF" Ref="R?"  Part="1" 
F 0 "R10" H 5100 5450 50  0000 L CNN
F 1 "1K 1%" H 5000 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 5400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.189204526.464475340.1555178862-441347304.1541859637&_gac=1.183224978.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 5300 5400 50  0001 C CNN
F 4 "2447587" H 5300 5400 50  0001 C CNN "Farnell Code"
	1    5300 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR021
U 1 1 5CB491B6
P 5300 5650
AR Path="/5CAA5A19/5CB491B6" Ref="#PWR021"  Part="1" 
AR Path="/5CABF3A4/5CB491B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 5300 5400 50  0001 C CNN
F 1 "GNDS" H 5305 5477 50  0000 C CNN
F 2 "" H 5300 5650 50  0001 C CNN
F 3 "" H 5300 5650 50  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5650 5300 5550
Wire Wire Line
	5300 4550 5000 4550
Connection ~ 5300 4550
Wire Wire Line
	5300 4550 5300 5250
Text HLabel 4850 4550 0    50   Input ~ 0
IMONout
Wire Wire Line
	1500 2000 1500 4250
Connection ~ 1500 2000
Wire Wire Line
	1500 2000 1750 2000
Connection ~ 1750 2000
Wire Wire Line
	1100 2000 1500 2000
Wire Wire Line
	4500 2150 4500 3150
Wire Wire Line
	4500 4400 5650 4400
Wire Wire Line
	5600 2650 5600 2750
Wire Wire Line
	5600 2450 5600 2650
Wire Wire Line
	5600 3050 5600 3150
$Comp
L power:GNDS #PWR024
U 1 1 5CBC7E51
P 5600 3150
AR Path="/5CAA5A19/5CBC7E51" Ref="#PWR024"  Part="1" 
AR Path="/5CABF3A4/5CBC7E51" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 5600 2900 50  0001 C CNN
F 1 "GNDS" H 5605 2977 50  0000 C CNN
F 2 "" H 5600 3150 50  0001 C CNN
F 3 "" H 5600 3150 50  0001 C CNN
	1    5600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2300 5000 4550
Connection ~ 5000 4550
Wire Wire Line
	5350 2300 5350 2750
Wire Wire Line
	4850 4550 5000 4550
Wire Wire Line
	3000 4250 5650 4250
Wire Wire Line
	4500 4400 4100 4400
Connection ~ 4500 4400
$Comp
L Device:C C16
U 1 1 5CBE0CE0
P 4200 3150
F 0 "C16" V 3948 3150 50  0000 C CNN
F 1 "10000pF" V 4039 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4238 3000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1859359.pdf?_ga=2.248012930.464475340.1555178862-441347304.1541859637&_gac=1.245572912.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 4200 3150 50  0001 C CNN
F 4 "9406352" V 4200 3150 50  0001 C CNN "Farnell Code"
	1    4200 3150
	0    1    1    0   
$EndComp
$Comp
L power:GNDS #PWR020
U 1 1 5CBE1807
P 4050 3150
F 0 "#PWR020" H 4050 2900 50  0001 C CNN
F 1 "GNDS" V 4055 3022 50  0000 R CNN
F 2 "" H 4050 3150 50  0001 C CNN
F 3 "" H 4050 3150 50  0001 C CNN
	1    4050 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3150 4500 3150
Connection ~ 4500 3150
Wire Wire Line
	4500 3150 4500 4400
Wire Wire Line
	6800 4550 6800 3900
Wire Wire Line
	6500 2300 6800 2300
Wire Wire Line
	6450 4550 6800 4550
Wire Wire Line
	7000 2850 7400 2850
Connection ~ 7000 2850
Wire Wire Line
	7000 2850 7000 2950
$Comp
L Device:R R14
U 1 1 5CBEB800
P 7000 3100
F 0 "R14" H 7070 3146 50  0000 L CNN
F 1 "3K3" H 7070 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 3100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2310790.pdf?_ga=2.13634354.464475340.1555178862-441347304.1541859637&_gac=1.45271696.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 7000 3100 50  0001 C CNN
F 4 "1469911" H 7000 3100 50  0001 C CNN "Farnell Code"
	1    7000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5CBEBCBF
P 7000 3600
F 0 "R15" H 7070 3646 50  0000 L CNN
F 1 "100" H 7070 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 3600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.253034636.464475340.1555178862-441347304.1541859637&_gac=1.213591584.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 7000 3600 50  0001 C CNN
F 4 "2447552" H 7000 3600 50  0001 C CNN "Farnell Code"
	1    7000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3250 7000 3350
Wire Wire Line
	7000 3750 7000 3900
Wire Wire Line
	7000 3900 6800 3900
Connection ~ 6800 3900
Wire Wire Line
	6800 3900 6800 2300
Wire Wire Line
	7000 3350 7400 3350
Connection ~ 7000 3350
Wire Wire Line
	7000 3350 7000 3450
Text HLabel 7400 3350 2    50   Input ~ 0
ILIM-
Wire Wire Line
	9250 2000 9250 4250
Wire Wire Line
	9050 4250 9250 4250
Wire Wire Line
	9250 4250 9250 4450
Connection ~ 9250 4250
Wire Wire Line
	9250 2000 9250 1750
Connection ~ 9250 2000
Wire Wire Line
	1500 4250 2300 4250
Connection ~ 2300 4250
Wire Wire Line
	2300 4250 3000 4250
Connection ~ 3000 2000
Wire Wire Line
	3000 2000 5700 2000
Connection ~ 2450 2000
Wire Wire Line
	2450 2000 3000 2000
Wire Wire Line
	1750 2000 2450 2000
Wire Wire Line
	6500 2000 7000 2000
Wire Wire Line
	6450 4250 7250 4250
$Comp
L power:GNDS #PWR026
U 1 1 5CAAF600
P 7300 2550
AR Path="/5CAA5A19/5CAAF600" Ref="#PWR026"  Part="1" 
AR Path="/5CABF3A4/5CAAF600" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 7300 2300 50  0001 C CNN
F 1 "GNDS" H 7305 2377 50  0000 C CNN
F 2 "" H 7300 2550 50  0001 C CNN
F 3 "" H 7300 2550 50  0001 C CNN
	1    7300 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
