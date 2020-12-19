EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L stlink-clone-adapter-rescue:ARM_10PIN-kicadlib-stlink-clone-adapter-rescue J5
U 1 1 5643BF5B
P 7300 3300
F 0 "J5" H 7300 2300 60  0000 C CNN
F 1 "ARM_10PIN" H 7300 3950 60  0000 C CNN
F 2 "kicadlib:ARM_10_PIN" H 7300 3300 60  0001 C CNN
F 3 "" H 7300 3300 60  0000 C CNN
	1    7300 3300
	-1   0    0    -1  
$EndComp
Text Label 4250 2500 2    60   ~ 0
RST
Text Label 5350 2650 0    60   ~ 0
GND|SWDIO
Text Label 5350 2800 0    60   ~ 0
SWCLK|GND
Text Label 4250 2800 2    60   ~ 0
SWIM|GND
Text Label 4250 2650 2    60   ~ 0
GND|SWIM
Text Label 5350 2500 0    60   ~ 0
SWDIO|SWCLK
Text Label 5350 2950 0    60   ~ 0
3.3V
Text Label 4250 2950 2    60   ~ 0
3.3V
Wire Wire Line
	4250 2500 4350 2500
Wire Wire Line
	4250 2650 4350 2650
Wire Wire Line
	4250 2800 4350 2800
Wire Wire Line
	4250 2950 4350 2950
Wire Wire Line
	5350 2500 5250 2500
Wire Wire Line
	5250 2650 5350 2650
Wire Wire Line
	5350 2800 5250 2800
Wire Wire Line
	5250 2950 5350 2950
Text Label 6650 2800 2    60   ~ 0
3.3V
Wire Wire Line
	6650 2800 6850 2800
NoConn ~ 5250 3100
NoConn ~ 4350 3100
Text Notes 5350 3100 0    60   ~ 0
5.0V-NC
Text Notes 4250 3100 2    60   ~ 0
5.0V-NC
Text Label 6650 2950 2    60   ~ 0
SWDIO
Text Label 6650 4000 2    60   ~ 0
GND
Wire Wire Line
	6650 4000 6750 4000
Wire Wire Line
	6850 3400 6750 3400
Wire Wire Line
	6750 3100 6750 3400
Connection ~ 6750 4000
Wire Wire Line
	6850 3100 6750 3100
Connection ~ 6750 3400
NoConn ~ 6800 3850
NoConn ~ 6850 3700
Text Label 6650 4150 2    60   ~ 0
RST
Text Label 6650 3550 2    60   ~ 0
SWIM
Text Label 6650 3250 2    60   ~ 0
SWCLK
Wire Wire Line
	6650 2950 6800 2950
Wire Wire Line
	6800 3250 6650 3250
Wire Wire Line
	6650 3550 6800 3550
Wire Wire Line
	6800 4150 6650 4150
$Comp
L stlink-clone-adapter-rescue:2X5_HDR-kicadlib-stlink-clone-adapter-rescue J3
U 1 1 5643C704
P 4800 2750
F 0 "J3" H 4800 2250 60  0000 C CNN
F 1 "2X5_HDR" H 4800 3150 60  0000 C CNN
F 2 "project-lib:IDC-Header_2x05_P2.54mm_Horizontal" H 4700 2500 60  0001 C CNN
F 3 "" H 4700 2500 60  0000 C CNN
	1    4800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4000 6850 4000
Wire Wire Line
	6750 3400 6750 4000
Text Label 3950 4050 2    60   ~ 0
SWDIO
Text Label 3950 4250 2    60   ~ 0
SWIM
Text Label 3950 4150 2    60   ~ 0
GND
Text Label 3950 4350 2    60   ~ 0
SWCLK
Text Label 3150 4050 2    60   ~ 0
SWDIO|SWCLK
Text Label 3150 4150 2    60   ~ 0
GND|SWIM
Text Label 3150 4250 2    60   ~ 0
SWIM|GND
Text Label 3150 4350 2    60   ~ 0
SWCLK|GND
Text Notes 3000 4550 0    50   ~ 0
VARIANT-1
Text Notes 4950 4550 0    50   ~ 0
VARIANT-2
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5FDC1C99
P 4150 4150
F 0 "J2" H 3900 4500 50  0000 L CNN
F 1 "Conn_01x04" H 3900 4400 50  0000 L CNN
F 2 "project-lib:PinHeader_1x04_P2.54mm_Vertical" H 4150 4150 50  0001 C CNN
F 3 "~" H 4150 4150 50  0001 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5FDC755F
P 3350 4150
F 0 "J1" H 3100 4500 50  0000 L CNN
F 1 "Conn_01x04" H 3100 4400 50  0000 L CNN
F 2 "project-lib:PinHeader_1x04_P2.54mm_Vertical" H 3350 4150 50  0001 C CNN
F 3 "~" H 3350 4150 50  0001 C CNN
	1    3350 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FDC78F0
P 5150 4150
F 0 "J4" H 4900 4500 50  0000 L CNN
F 1 "Conn_01x04" H 4900 4400 50  0000 L CNN
F 2 "project-lib:PinHeader_1x04_P2.54mm_Vertical" H 5150 4150 50  0001 C CNN
F 3 "~" H 5150 4150 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
Text Label 4950 4150 2    60   ~ 0
SWIM|GND
Text Label 4950 4350 2    60   ~ 0
SWDIO|SWCLK
Text Label 4950 4250 2    60   ~ 0
GND|SWIM
Text Label 4950 4050 2    60   ~ 0
GND|SWDIO
Wire Notes Line
	2450 3650 2450 4650
Wire Notes Line
	2450 4650 5600 4650
Wire Notes Line
	5600 4650 5600 3650
Wire Notes Line
	5600 3650 2450 3650
Text Notes 3700 4800 0    50   ~ 0
Variant selection header
Text Notes 3950 4550 0    50   ~ 0
Common
$Comp
L Device:LED D1
U 1 1 5FDE2375
P 8400 2950
F 0 "D1" V 8439 2833 50  0000 R CNN
F 1 "LED" V 8348 2833 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8400 2950 50  0001 C CNN
F 3 "~" H 8400 2950 50  0001 C CNN
	1    8400 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FDE299C
P 8400 3500
F 0 "R1" H 8470 3546 50  0000 L CNN
F 1 "R" H 8470 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8330 3500 50  0001 C CNN
F 3 "~" H 8400 3500 50  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
Text Label 8400 3850 0    60   ~ 0
GND
Wire Wire Line
	8400 3850 8400 3650
Wire Wire Line
	8400 3350 8400 3100
Text Label 8400 2650 2    60   ~ 0
3.3V
Wire Wire Line
	8400 2650 8400 2800
$EndSCHEMATC
