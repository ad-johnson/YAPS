EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "YAPS - Regulated Power Supply"
Date "2019-06-08"
Rev "1.1"
Comp "Andrew Johnson"
Comment1 "1.1 - changed UA7805 to TSR1-2450"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1000 1000 0    50   Input ~ 0
PI
$Comp
L CustomSymbolLibrary:TSR1-24xx U7
U 1 1 5CAA760D
P 2600 850
F 0 "U7" H 2600 950 50  0000 C CNN
F 1 "TSR1-2450" H 2600 850 50  0000 C CNN
F 2 "CustomFootprintLibrary:TSR1-24xx_TO-220-3" H 2600 1075 50  0001 C CIN
F 3 "https://docs-emea.rs-online.com/webdocs/16ed/0900766b816ed3dd.pdf" H 2600 800 50  0001 C CNN
F 4 "666-4379" H 2600 850 50  0001 C CNN "RS Code"
	1    2600 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR040
U 1 1 5CAA901A
P 2600 1650
F 0 "#PWR040" H 2600 1400 50  0001 C CNN
F 1 "GNDPWR" H 2605 1477 50  0000 C CNN
F 2 "" H 2600 1650 50  0001 C CNN
F 3 "" H 2600 1650 50  0001 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
Text HLabel 4300 1000 2    50   Input ~ 0
REG_5v
Wire Wire Line
	2600 1350 2600 1650
Text Notes 2950 800  0    50   ~ 0
Also use:\nTSR1N 1-2450 Farnell Code 2323602\nLM7805: do thermal calc: Voltage drop * Current of Arduino used.
Text Notes 850  2300 0    50   ~ 0
If LM7805 used add:\n- 0.33uF capacitor from Vin to GND\n- 0.1uF capacitor from Vout to GND
Wire Wire Line
	1000 1000 2300 1000
Wire Wire Line
	2900 1000 4300 1000
$EndSCHEMATC
