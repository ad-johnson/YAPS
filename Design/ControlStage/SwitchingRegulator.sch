EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "YAPS - Regulated Power Supply"
Date "2019-05-26"
Rev "0.1"
Comp "Andrew Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3200 1150 0    50   Input ~ 0
PI
$Comp
L CustomSymbolLibrary:LTC1624CS8 U1
U 1 1 5CA61AD6
P 4600 2450
F 0 "U1" H 4700 2950 50  0000 C CNN
F 1 "LTC1624CS8" H 4900 2850 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4650 2100 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1624f.pdf" H 4600 2450 50  0001 C CNN
F 4 "LTC1624CS8#PBF-ND" H 4600 2450 50  0001 C CNN "Digikey Code"
	1    4600 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR010
U 1 1 5CA6497F
P 4600 3050
F 0 "#PWR010" H 4600 2800 50  0001 C CNN
F 1 "GNDS" H 4600 2700 50  0000 C CNN
F 2 "" H 4600 3050 50  0001 C CNN
F 3 "" H 4600 3050 50  0001 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5CA65142
P 3800 2450
F 0 "C3" V 4050 2450 50  0000 C CNN
F 1 "470pF" V 3950 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3838 2300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2620235.pdf?_ga=2.210698384.464475340.1555178862-441347304.1541859637&_gac=1.6496774.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 3800 2450 50  0001 C CNN
F 4 "2896583" V 3800 2450 50  0001 C CNN "Farnell Code"
	1    3800 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2450 4100 2450
$Comp
L Device:R R1
U 1 1 5CA65D18
P 3450 2850
F 0 "R1" H 3520 2896 50  0000 L CNN
F 1 "6K8" H 3520 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 2850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.248842498.464475340.1555178862-441347304.1541859637&_gac=1.246025520.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 3450 2850 50  0001 C CNN
F 4 "2447711" H 3450 2850 50  0001 C CNN "Farnell Code"
	1    3450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2700 3450 2450
Wire Wire Line
	3450 2450 3650 2450
Wire Wire Line
	3450 3000 3450 3150
$Comp
L power:GNDS #PWR08
U 1 1 5CA663CE
P 3450 3150
F 0 "#PWR08" H 3450 2900 50  0001 C CNN
F 1 "GNDS" H 3455 2977 50  0000 C CNN
F 2 "" H 3450 3150 50  0001 C CNN
F 3 "" H 3450 3150 50  0001 C CNN
	1    3450 3150
	1    0    0    -1  
$EndComp
Connection ~ 4600 1150
Wire Wire Line
	3200 1150 4600 1150
Wire Wire Line
	4600 1150 5000 1150
$Comp
L Device:R R2
U 1 1 5CA6A7C1
P 5750 1450
F 0 "R2" H 5820 1496 50  0000 L CNN
F 1 "10m" H 5820 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5680 1450 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/chip-resistor/RU2012FR010CS.jsp" H 5750 1450 50  0001 C CNN
F 4 "1276-6156-1-ND" H 5750 1450 50  0001 C CNN "Digikey Code"
	1    5750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1300 5750 1150
Connection ~ 5750 1150
Wire Wire Line
	5750 1150 6300 1150
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 5CA6B24C
P 5650 2450
F 0 "Q1" H 5856 2496 50  0000 L CNN
F 1 "IRF3205" H 5856 2405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5850 2375 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 5650 2450 50  0001 L CNN
F 4 "1704017" H 5650 2450 50  0001 C CNN "Farnell Code"
	1    5650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2450 5450 2450
Wire Wire Line
	5750 2250 5750 1800
Wire Wire Line
	5750 2650 5750 3050
Wire Wire Line
	5100 2250 5400 2250
Wire Wire Line
	5400 2250 5400 2750
$Comp
L Device:C C7
U 1 1 5CA7229A
P 5400 2900
F 0 "C7" H 5450 3050 50  0000 L CNN
F 1 "0.1uF" H 5500 2950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5438 2750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1901289.pdf?_ga=2.217959571.464475340.1555178862-441347304.1541859637&_gac=1.205178532.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 5400 2900 50  0001 C CNN
F 4 "2320839" H 5400 2900 50  0001 C CNN "Farnell Code"
	1    5400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3050 5750 3050
Connection ~ 5750 3050
Wire Wire Line
	5750 3050 5750 3250
Wire Wire Line
	5100 2650 5200 2650
Wire Wire Line
	5200 2650 5200 3250
Wire Wire Line
	5200 3250 5750 3250
Connection ~ 5750 3250
Wire Wire Line
	4100 2250 3950 2250
Wire Wire Line
	3950 2250 3950 1800
Wire Wire Line
	3950 1800 5000 1800
Connection ~ 5750 1800
Wire Wire Line
	5750 1800 5750 1600
Wire Wire Line
	5750 3250 5750 3450
$Comp
L Device:D_Schottky D1
U 1 1 5CA7518F
P 5750 3600
F 0 "D1" V 5700 3400 50  0000 L CNN
F 1 "MBRS340T3G" V 5800 3000 50  0000 L CNN
F 2 "CustomFootprintLibrary:D_SMC_Handsoldering" H 5750 3600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2353896.pdf?_ga=2.180209569.464475340.1555178862-441347304.1541859637&_gac=1.137545092.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 5750 3600 50  0001 C CNN
F 4 "9557377" V 5750 3600 50  0001 C CNN "Farnell Code"
	1    5750 3600
	0    1    1    0   
$EndComp
$Comp
L power:GNDS #PWR011
U 1 1 5CA75DF4
P 5750 3950
F 0 "#PWR011" H 5750 3700 50  0001 C CNN
F 1 "GNDS" H 5755 3777 50  0000 C CNN
F 2 "" H 5750 3950 50  0001 C CNN
F 3 "" H 5750 3950 50  0001 C CNN
	1    5750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3950 5750 3750
Wire Wire Line
	5750 3250 6100 3250
$Comp
L Device:L L1
U 1 1 5CA77123
P 6250 3250
F 0 "L1" V 6440 3250 50  0000 C CNN
F 1 "10uH" V 6349 3250 50  0000 C CNN
F 2 "CustomFootprintLibrary:L_Bourns_SRP1245A_Handsoldering" H 6250 3250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2366823.pdf?_ga=2.215533842.464475340.1555178862-441347304.1541859637&_gac=1.212477472.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 6250 3250 50  0001 C CNN
F 4 "2434072" V 6250 3250 50  0001 C CNN "Farnell Code"
	1    6250 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3250 6850 3250
$Comp
L Device:C C8
U 1 1 5CA79503
P 6300 3800
F 0 "C8" H 6050 3850 50  0000 L CNN
F 1 "1nF" H 6050 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6338 3650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1901289.pdf?_ga=2.17629372.464475340.1555178862-441347304.1541859637&_gac=1.205317668.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 6300 3800 50  0001 C CNN
F 4 "2320837" H 6300 3800 50  0001 C CNN "Farnell Code"
	1    6300 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CA79CB1
P 6550 3800
F 0 "R3" H 6620 3846 50  0000 L CNN
F 1 "1K" H 6620 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 3800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.189204526.464475340.1555178862-441347304.1541859637&_gac=1.183224978.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 6550 3800 50  0001 C CNN
F 4 "2447587" H 6550 3800 50  0001 C CNN "Farnell Code"
	1    6550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CA7A613
P 6850 3800
F 0 "R5" H 6920 3846 50  0000 L CNN
F 1 "100K" H 6920 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6780 3800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.223677342.464475340.1555178862-441347304.1541859637&_gac=1.245572144.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 6850 3800 50  0001 C CNN
F 4 "2447551" H 6850 3800 50  0001 C CNN "Farnell Code"
	1    6850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3650 6850 3500
Connection ~ 6850 3250
Wire Wire Line
	6850 3250 7450 3250
Wire Wire Line
	6550 3650 6550 3500
Wire Wire Line
	6550 3500 6850 3500
Connection ~ 6850 3500
Wire Wire Line
	6850 3500 6850 3250
Wire Wire Line
	6300 3650 6300 3500
Wire Wire Line
	6300 3500 6550 3500
Connection ~ 6550 3500
Wire Wire Line
	6550 3950 6550 4050
Wire Wire Line
	6300 3950 6300 4050
Wire Wire Line
	6300 4050 6550 4050
Connection ~ 6550 4050
Wire Wire Line
	6550 4050 6550 4200
$Comp
L Transistor_BJT:2N3906 Q2
U 1 1 5CA7CAF8
P 6650 4400
F 0 "Q2" H 6841 4354 50  0000 L CNN
F 1 "2N3906" H 6841 4445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6850 4325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 6650 4400 50  0001 L CNN
F 4 "2453753" H 6650 4400 50  0001 C CNN "Farnell Code"
	1    6650 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4600 6550 4750
$Comp
L Device:R R4
U 1 1 5CA7E4C6
P 6550 5000
F 0 "R4" H 6400 5050 50  0000 L CNN
F 1 "5K" H 6400 4950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 5000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2310790.pdf?_ga=2.253037836.464475340.1555178862-441347304.1541859637&_gac=1.209347238.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 6550 5000 50  0001 C CNN
F 4 "2616759" H 6550 5000 50  0001 C CNN "Farnell Code"
	1    6550 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5CA7EBAB
P 6850 5000
F 0 "R6" H 6920 5046 50  0000 L CNN
F 1 "100K" H 6920 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6780 5000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf?_ga=2.223677342.464475340.1555178862-441347304.1541859637&_gac=1.245572144.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 6850 5000 50  0001 C CNN
F 4 "2447551" H 6850 5000 50  0001 C CNN "Farnell Code"
	1    6850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4850 6850 4400
Connection ~ 6850 4400
Wire Wire Line
	6850 4400 6850 3950
Wire Wire Line
	6550 5150 6550 5350
$Comp
L power:GNDS #PWR012
U 1 1 5CA80270
P 6550 5350
F 0 "#PWR012" H 6550 5100 50  0001 C CNN
F 1 "GNDS" H 6555 5177 50  0000 C CNN
F 2 "" H 6550 5350 50  0001 C CNN
F 3 "" H 6550 5350 50  0001 C CNN
	1    6550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5150 6850 5650
Text HLabel 6850 5650 3    50   Input ~ 0
REGout1
$Comp
L Device:CP C10
U 1 1 5CA824D3
P 7450 3600
F 0 "C10" H 7568 3646 50  0000 L CNN
F 1 "100uF" H 7568 3555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 7488 3450 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2100017.pdf?_ga=2.209634455.464475340.1555178862-441347304.1541859637&_gac=1.250357170.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 7450 3600 50  0001 C CNN
F 4 "8823391" H 7450 3600 50  0001 C CNN "Farnell Code"
	1    7450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3450 7450 3250
Connection ~ 7450 3250
Wire Wire Line
	7450 3250 7950 3250
Wire Wire Line
	7450 3750 7450 3950
$Comp
L power:GNDS #PWR014
U 1 1 5CA84392
P 7450 3950
F 0 "#PWR014" H 7450 3700 50  0001 C CNN
F 1 "GNDS" H 7455 3777 50  0000 C CNN
F 2 "" H 7450 3950 50  0001 C CNN
F 3 "" H 7450 3950 50  0001 C CNN
	1    7450 3950
	1    0    0    -1  
$EndComp
Text HLabel 7950 3250 2    50   Input ~ 0
REGout2
Text Notes 1200 4100 0    50   ~ 0
Outputs a voltage 1.7V higher than the set voltage, \nor that set by the current limit.
$Comp
L Device:C C9
U 1 1 5CA90587
P 6450 1150
F 0 "C9" V 6198 1150 50  0000 C CNN
F 1 "1nF" V 6289 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6488 1000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1901289.pdf?_ga=2.17629372.464475340.1555178862-441347304.1541859637&_gac=1.205317668.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 6450 1150 50  0001 C CNN
F 4 "2320837" V 6450 1150 50  0001 C CNN "Farnell Code"
	1    6450 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 1150 6850 1150
$Comp
L power:GNDS #PWR013
U 1 1 5CA91796
P 6850 1150
F 0 "#PWR013" H 6850 900 50  0001 C CNN
F 1 "GNDS" V 6855 1022 50  0000 R CNN
F 2 "" H 6850 1150 50  0001 C CNN
F 3 "" H 6850 1150 50  0001 C CNN
	1    6850 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 2650 4000 3000
Wire Wire Line
	4000 4750 6550 4750
Connection ~ 6550 4750
Wire Wire Line
	6550 4750 6550 4850
Wire Wire Line
	4000 2650 4100 2650
$Comp
L Device:C C6
U 1 1 5CAF8B1F
P 5000 1450
F 0 "C6" H 5115 1496 50  0000 L CNN
F 1 "1nF" H 5115 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 1300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1901289.pdf?_ga=2.17629372.464475340.1555178862-441347304.1541859637&_gac=1.205317668.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 5000 1450 50  0001 C CNN
F 4 "2320837" H 5000 1450 50  0001 C CNN "Farnell Code"
	1    5000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 5000 1150
Connection ~ 5000 1150
Wire Wire Line
	5000 1150 5750 1150
Wire Wire Line
	5000 1600 5000 1800
Connection ~ 5000 1800
Wire Wire Line
	5000 1800 5750 1800
Wire Wire Line
	4600 3050 4600 3000
$Comp
L Device:C C4
U 1 1 5CAFD7C4
P 4300 3000
F 0 "C4" V 4550 3000 50  0000 C CNN
F 1 "100pF" V 4450 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4338 2850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2750056.pdf?_ga=2.176220192.464475340.1555178862-441347304.1541859637&_gac=1.238813876.1554891125.EAIaIQobChMI16fD9tLD4QIVz5TtCh3QQglqEAAYAiAAEgKKrvD_BwE" H 4300 3000 50  0001 C CNN
F 4 "2905173" V 4300 3000 50  0001 C CNN "Farnell Code"
	1    4300 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3000 4000 3000
Connection ~ 4000 3000
Wire Wire Line
	4000 3000 4000 4750
Wire Wire Line
	4450 3000 4600 3000
Connection ~ 4600 3000
Wire Wire Line
	4600 3000 4600 2850
Wire Wire Line
	4600 1150 4600 2050
$EndSCHEMATC
