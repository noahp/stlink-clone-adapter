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
Text Label 4250 2150 2    60   ~ 0
RST
Text Label 4750 2250 0    60   ~ 0
GND
Text Label 4750 2350 0    60   ~ 0
SWCLK
Text Label 4250 2350 2    60   ~ 0
SWIM
Text Label 4250 2250 2    60   ~ 0
GND
Text Label 4750 2150 0    60   ~ 0
SWDIO
NoConn ~ 4750 2550
NoConn ~ 4250 2550
Text Notes 4750 2550 0    60   ~ 0
5.0V-NC
Text Notes 4250 2550 2    60   ~ 0
5.0V-NC
Text Label 8150 2350 0    60   ~ 0
SWDIO
Text Label 7550 3200 2    60   ~ 0
GND
Text Label 8150 2050 0    60   ~ 0
RST
Text Label 8150 2450 0    60   ~ 0
SWIM
Text Label 8150 2250 0    60   ~ 0
SWCLK
$Comp
L Device:LED D1
U 1 1 5FDE2375
P 9150 3750
F 0 "D1" V 9189 3633 50  0000 R CNN
F 1 "LED" V 9098 3633 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9150 3750 50  0001 C CNN
F 3 "~" H 9150 3750 50  0001 C CNN
	1    9150 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FDE299C
P 9150 4300
F 0 "R1" H 9220 4346 50  0000 L CNN
F 1 "1K" H 9220 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9080 4300 50  0001 C CNN
F 3 "~" H 9150 4300 50  0001 C CNN
	1    9150 4300
	1    0    0    -1  
$EndComp
Text Label 9150 4650 0    60   ~ 0
GND
Wire Wire Line
	9150 4650 9150 4450
Wire Wire Line
	9150 4150 9150 3900
Wire Wire Line
	9150 3450 9150 3600
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5FE390A4
P 4450 2350
F 0 "J2" H 4500 2767 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4500 2676 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 4450 2350 50  0001 C CNN
F 3 "~" H 4450 2350 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J3
U 1 1 5FE5000B
P 7650 2350
F 0 "J3" H 7207 2396 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 7207 2305 50  0000 R CNN
F 2 "kicadlib:ARM_10_PIN" H 7650 2350 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 7300 1100 50  0001 C CNN
	1    7650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2950 7550 3050
Wire Wire Line
	7650 2950 7650 3050
Wire Wire Line
	7650 3050 7550 3050
Connection ~ 7550 3050
Text Notes 9450 4000 0    50   ~ 0
power good LED
NoConn ~ 8150 2550
Wire Wire Line
	7650 1550 7650 1650
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5FE6AB4B
P 8000 1650
F 0 "#FLG02" H 8000 1725 50  0001 C CNN
F 1 "PWR_FLAG" H 8000 1823 50  0000 C CNN
F 2 "" H 8000 1650 50  0001 C CNN
F 3 "~" H 8000 1650 50  0001 C CNN
	1    8000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1650 7650 1650
Connection ~ 7650 1650
Wire Wire Line
	7650 1650 7650 1750
Wire Wire Line
	7550 3300 7800 3300
Wire Wire Line
	7550 3050 7550 3300
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FE6C1C4
P 7800 3300
F 0 "#FLG01" H 7800 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 7800 3473 50  0000 C CNN
F 2 "" H 7800 3300 50  0001 C CNN
F 3 "~" H 7800 3300 50  0001 C CNN
	1    7800 3300
	1    0    0    -1  
$EndComp
Text Label 9150 3450 2    50   ~ 0
+3.3V
Text Label 7650 1550 2    50   ~ 0
+3.3V
Text Label 4250 2450 2    50   ~ 0
+3.3V
Text Label 4750 2450 0    50   ~ 0
+3.3V
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5FF1064E
P 4200 3700
F 0 "J1" H 4250 4117 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4250 4026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 4200 3700 50  0001 C CNN
F 3 "~" H 4200 3700 50  0001 C CNN
	1    4200 3700
	1    0    0    -1  
$EndComp
Text Notes 4050 4100 0    50   ~ 0
VARIANT-2
Text Notes 4300 2750 0    50   ~ 0
VARIANT-1
Text Notes 4500 3900 0    60   ~ 0
5.0V-NC
Text Notes 4000 3900 2    60   ~ 0
5.0V-NC
NoConn ~ 4500 3900
NoConn ~ 4000 3900
Text Label 4500 3500 0    60   ~ 0
SWCLK
Text Label 4000 3500 2    60   ~ 0
RST
Text Label 4000 3800 2    50   ~ 0
+3.3V
Text Label 4500 3800 0    50   ~ 0
+3.3V
Text Label 4000 3600 2    60   ~ 0
SWIM
Text Label 4000 3700 2    60   ~ 0
GND
Text Label 4500 3700 0    60   ~ 0
GND
Text Label 4500 3600 0    60   ~ 0
SWDIO
$EndSCHEMATC
