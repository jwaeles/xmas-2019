EESchema Schematic File Version 4
LIBS:plan_b-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Dynamic Xmas Gift Label"
Date "2019-12-04"
Rev "rev0"
Comp "Jordan Waeles"
Comment1 "https://github.com/jwaeles/"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Reed SW1
U 1 1 5DE5A63E
P 6025 2425
F 0 "SW1" V 6075 2625 50  0000 C CNN
F 1 "SHAKE" V 5975 2625 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6025 2425 50  0001 C CNN
F 3 "~" H 6025 2425 50  0001 C CNN
	1    6025 2425
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5DE5C0AB
P 1675 3825
F 0 "C1" H 1790 3871 50  0000 L CNN
F 1 "100nF" H 1790 3780 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1713 3675 50  0001 C CNN
F 3 "~" H 1675 3825 50  0001 C CNN
	1    1675 3825
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5DE5CF51
P 1875 1725
F 0 "J1" H 1875 1625 50  0000 C CNN
F 1 "+4,5V" H 2075 1725 50  0000 C CNN
F 2 "Jordan:LARGE_PAD" H 1875 1725 50  0001 C CNN
F 3 "~" H 1875 1725 50  0001 C CNN
	1    1875 1725
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5DE5D4A3
P 1875 2325
F 0 "J2" H 1875 2225 50  0000 C CNN
F 1 "-" H 1975 2325 50  0000 C CNN
F 2 "Jordan:LARGE_PAD" H 1875 2325 50  0001 C CNN
F 3 "~" H 1875 2325 50  0001 C CNN
	1    1875 2325
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5DE5F7A1
P 6225 2425
F 0 "SW2" V 6179 2573 50  0000 L CNN
F 1 "PUSH" V 6270 2573 50  0000 L CNN
F 2 "Jordan:TL3305_TACT_SWITCH_OK" H 6225 2625 50  0001 C CNN
F 3 "~" H 6225 2625 50  0001 C CNN
	1    6225 2425
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DE60392
P 6025 1825
F 0 "R2" H 6095 1871 50  0000 L CNN
F 1 "100K" H 6095 1780 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5955 1825 50  0001 C CNN
F 3 "~" H 6025 1825 50  0001 C CNN
	1    6025 1825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DE60BA7
P 4625 5725
F 0 "R1" V 4525 5725 50  0000 C CNN
F 1 "10K" V 4625 5725 39  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4555 5725 50  0001 C CNN
F 3 "~" H 4625 5725 50  0001 C CNN
	1    4625 5725
	0    1    1    0   
$EndComp
$Comp
L Device:Speaker LS1
U 1 1 5EB4DCF1
P 8575 4100
F 0 "LS1" H 8745 4096 50  0000 L CNN
F 1 "8 ohm" H 8745 4005 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8575 3900 50  0001 C CNN
F 3 "~" H 8565 4050 50  0001 C CNN
	1    8575 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EB4F2AF
P 8275 4300
F 0 "#PWR0102" H 8275 4050 50  0001 C CNN
F 1 "GND" H 8280 4127 50  0000 C CNN
F 2 "" H 8275 4300 50  0001 C CNN
F 3 "" H 8275 4300 50  0001 C CNN
	1    8275 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8375 4200 8275 4200
Wire Wire Line
	8275 4200 8275 4300
Wire Wire Line
	5775 4650 6275 4650
Wire Wire Line
	5775 4550 6275 4550
Wire Wire Line
	5775 4750 6275 4750
Wire Wire Line
	5775 4850 6275 4850
Wire Wire Line
	3175 4525 4275 4525
Wire Wire Line
	3175 4625 4275 4625
Wire Wire Line
	3175 4725 4275 4725
Text Label 3475 4525 0    50   ~ 0
MOSI
Text Label 3475 4625 0    50   ~ 0
MISO
Text Label 3475 4725 0    50   ~ 0
SCK
Wire Wire Line
	3175 5725 4075 5725
Text Label 3500 5725 0    50   ~ 0
~RST
Wire Wire Line
	3175 4425 3875 4425
Wire Wire Line
	3175 4325 3875 4325
Wire Wire Line
	3875 4225 3175 4225
Text Label 3475 4225 0    50   ~ 0
SPEAKER
Wire Wire Line
	8375 4100 7825 4100
Text Label 7825 4100 0    50   ~ 0
SPEAKER
Wire Wire Line
	3175 6125 3875 6125
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5EBC90CA
P 8575 4900
F 0 "JP1" H 8375 4950 50  0000 C CNN
F 1 "1" H 8675 4950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8575 4900 50  0001 C CNN
F 3 "~" H 8575 4900 50  0001 C CNN
	1    8575 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 4900 7825 4900
Wire Wire Line
	8725 4900 8875 4900
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5EBFAB1C
P 8575 5100
F 0 "JP2" H 8375 5150 50  0000 C CNN
F 1 "2" H 8675 5150 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8575 5100 50  0001 C CNN
F 3 "~" H 8575 5100 50  0001 C CNN
	1    8575 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 5100 7825 5100
Wire Wire Line
	8725 5100 8875 5100
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5EBFEA6A
P 8575 5300
F 0 "JP3" H 8375 5350 50  0000 C CNN
F 1 "4" H 8675 5350 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8575 5300 50  0001 C CNN
F 3 "~" H 8575 5300 50  0001 C CNN
	1    8575 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 5300 7825 5300
Wire Wire Line
	8725 5300 8875 5300
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5EC02C5A
P 8575 5500
F 0 "JP4" H 8375 5550 50  0000 C CNN
F 1 "8" H 8675 5550 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8575 5500 50  0001 C CNN
F 3 "~" H 8575 5500 50  0001 C CNN
	1    8575 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 5500 7825 5500
Wire Wire Line
	8725 5500 8875 5500
Wire Wire Line
	8875 4900 8875 5100
Connection ~ 8875 5100
Wire Wire Line
	8875 5100 8875 5300
Connection ~ 8875 5300
Wire Wire Line
	8875 5300 8875 5500
Connection ~ 8875 5500
Wire Wire Line
	8875 5500 8875 5650
$Comp
L power:GND #PWR0105
U 1 1 5EC0BB72
P 8875 5650
F 0 "#PWR0105" H 8875 5400 50  0001 C CNN
F 1 "GND" H 8880 5477 50  0000 C CNN
F 2 "" H 8875 5650 50  0001 C CNN
F 3 "" H 8875 5650 50  0001 C CNN
	1    8875 5650
	1    0    0    -1  
$EndComp
Text Label 7825 4900 0    50   ~ 0
GIFTNR_1
Text Label 7825 5100 0    50   ~ 0
GIFTNR_2
Text Label 7825 5300 0    50   ~ 0
GIFTNR_4
Text Label 7825 5500 0    50   ~ 0
GIFTNR_8
NoConn ~ 3175 4825
NoConn ~ 3175 4925
Text Label 3425 5125 0    50   ~ 0
GIFTNR_1
Wire Wire Line
	3175 5125 3875 5125
Wire Wire Line
	3175 5225 3875 5225
Wire Wire Line
	3175 5325 3875 5325
Wire Wire Line
	3175 5425 3875 5425
Text Label 3425 5225 0    50   ~ 0
GIFTNR_2
Text Label 3425 5325 0    50   ~ 0
GIFTNR_4
Text Label 3425 5425 0    50   ~ 0
GIFTNR_8
Wire Wire Line
	4875 5725 4775 5725
Text Label 5875 4550 0    50   ~ 0
MOSI
Text Label 5875 4650 0    50   ~ 0
MISO
Text Label 5875 4850 0    50   ~ 0
~RST
Text Label 5875 4750 0    50   ~ 0
SCK
NoConn ~ 1975 4225
NoConn ~ 1975 4425
NoConn ~ 1975 4525
Text Label 3425 6125 0    50   ~ 0
~SHAKE_INT
$Comp
L power:GND #PWR04
U 1 1 5FD32127
P 6025 2825
F 0 "#PWR04" H 6025 2575 50  0001 C CNN
F 1 "GND" H 6030 2652 50  0000 C CNN
F 2 "" H 6025 2825 50  0001 C CNN
F 3 "" H 6025 2825 50  0001 C CNN
	1    6025 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 2625 6025 2725
Wire Wire Line
	6025 1975 6025 2075
Wire Wire Line
	6025 1475 6025 1675
Wire Wire Line
	6025 2075 6225 2075
Wire Wire Line
	6225 2075 6225 2225
Connection ~ 6025 2075
Wire Wire Line
	6025 2075 6025 2225
Wire Wire Line
	6225 2625 6225 2725
Wire Wire Line
	6225 2725 6025 2725
Connection ~ 6025 2725
Wire Wire Line
	6025 2725 6025 2825
Wire Wire Line
	6025 2075 5425 2075
Text Label 5425 2075 0    50   ~ 0
~SHAKE_INT
Wire Wire Line
	2575 3475 2575 3575
Wire Wire Line
	2575 3575 2675 3575
Wire Wire Line
	2675 3575 2675 3925
Connection ~ 2575 3575
Wire Wire Line
	2575 3575 2575 3925
Wire Wire Line
	2575 3575 1675 3575
Wire Wire Line
	1675 3575 1675 3675
$Comp
L power:GND #PWR01
U 1 1 5FD45086
P 1675 4075
F 0 "#PWR01" H 1675 3825 50  0001 C CNN
F 1 "GND" H 1680 3902 50  0000 C CNN
F 2 "" H 1675 4075 50  0001 C CNN
F 3 "" H 1675 4075 50  0001 C CNN
	1    1675 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1675 3975 1675 4075
$Comp
L power:GND #PWR02
U 1 1 5FD4713A
P 2575 7025
F 0 "#PWR02" H 2575 6775 50  0001 C CNN
F 1 "GND" H 2580 6852 50  0000 C CNN
F 2 "" H 2575 7025 50  0001 C CNN
F 3 "" H 2575 7025 50  0001 C CNN
	1    2575 7025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 6925 2575 7025
NoConn ~ 3175 5925
NoConn ~ 3175 6025
NoConn ~ 3175 6225
NoConn ~ 3175 6325
NoConn ~ 3175 6425
NoConn ~ 3175 6525
NoConn ~ 3175 5525
NoConn ~ 3175 5625
Text Label 3325 4325 0    50   ~ 0
MATRIX_DATA
Text Label 3325 4425 0    50   ~ 0
MATRIX_CLK
Wire Wire Line
	3875 6625 3175 6625
Text Label 3275 6625 0    50   ~ 0
MATRIX_ENABLE
$Sheet
S 8125 1625 900  1000
U 5EC673BB
F0 "TM1640" 50
F1 "TM1640.sch" 50
F2 "DIN" I L 8125 2125 50 
F3 "SCLK" I L 8125 2025 50 
F4 "GND" U L 8125 2425 50 
F5 "VBATT" U L 8125 1825 50 
F6 "ENABLE" I L 8125 2225 50 
$EndSheet
Wire Wire Line
	7825 1525 7825 1825
Wire Wire Line
	7825 1825 8125 1825
$Comp
L power:GND #PWR06
U 1 1 5FD663D0
P 7825 2625
F 0 "#PWR06" H 7825 2375 50  0001 C CNN
F 1 "GND" H 7830 2452 50  0000 C CNN
F 2 "" H 7825 2625 50  0001 C CNN
F 3 "" H 7825 2625 50  0001 C CNN
	1    7825 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	8125 2425 7825 2425
Wire Wire Line
	7825 2425 7825 2625
Wire Wire Line
	8125 2225 7425 2225
Wire Wire Line
	8125 2125 7425 2125
Wire Wire Line
	8125 2025 7425 2025
Text Label 7425 2125 0    50   ~ 0
MATRIX_DATA
Text Label 7425 2025 0    50   ~ 0
MATRIX_CLK
Text Label 7425 2225 0    50   ~ 0
MATRIX_ENABLE
$Comp
L JordanLib:ATmega328P-AU-ARDUINO U1
U 1 1 5DE7AE41
P 2575 5425
F 0 "U1" H 2575 3836 50  0000 C CNN
F 1 "ATmega328P-AU" H 2575 3745 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2525 7425 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8025-8-bit-AVR-Microcontroller-ATmega48P-88P-168P_Datasheet.pdf" H 2525 7425 50  0001 C CNN
	1    2575 5425
	1    0    0    -1  
$EndComp
$Comp
L JordanLib:ICSP J3
U 1 1 5DE80978
P 4575 4625
F 0 "J3" H 4803 4621 50  0000 L CNN
F 1 "PROG" H 4803 4530 50  0000 L CNN
F 2 "Jordan:FPC_6_1MM_C262383" H 4675 4525 50  0001 C CNN
F 3 "" H 4675 4525 50  0001 C CNN
	1    4575 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4275 4825 4075 4825
Wire Wire Line
	4075 4825 4075 5725
Connection ~ 4075 5725
Wire Wire Line
	4075 5725 4475 5725
$Comp
L power:GND #PWR0107
U 1 1 5DE95EF0
P 4675 5125
F 0 "#PWR0107" H 4675 4875 50  0001 C CNN
F 1 "GND" H 4680 4952 50  0000 C CNN
F 2 "" H 4675 5125 50  0001 C CNN
F 3 "" H 4675 5125 50  0001 C CNN
	1    4675 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 5025 4675 5125
$Comp
L JordanLib:ICSP J4
U 1 1 5DE9EB05
P 6575 4650
F 0 "J4" H 6803 4646 50  0000 L CNN
F 1 "PROG" H 6803 4555 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6675 4550 50  0001 C CNN
F 3 "" H 6675 4550 50  0001 C CNN
	1    6575 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5DEAD7FB
P 6675 5150
F 0 "#PWR0108" H 6675 4900 50  0001 C CNN
F 1 "GND" H 6680 4977 50  0000 C CNN
F 2 "" H 6675 5150 50  0001 C CNN
F 3 "" H 6675 5150 50  0001 C CNN
	1    6675 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 5050 6675 5150
$Sheet
S 2375 1525 1000 1000
U 5DEB8626
F0 "PowerInput" 50
F1 "PowerInput.sch" 50
F2 "BATT+" U L 2375 1725 50 
F3 "BATT-" U L 2375 2325 50 
F4 "PROG+" U L 2375 1925 50 
F5 "OUT+" U R 3375 1725 50 
F6 "GND" U R 3375 2325 50 
$EndSheet
Wire Wire Line
	2375 1725 2075 1725
Wire Wire Line
	2375 2325 2075 2325
Wire Wire Line
	2375 1925 1875 1925
Text Label 1875 1925 0    50   ~ 0
PROG_VCC
Wire Wire Line
	3475 1675 3475 1725
Wire Wire Line
	3475 1725 3375 1725
$Comp
L power:GND #PWR0104
U 1 1 5DEE2AA7
P 3500 2425
F 0 "#PWR0104" H 3500 2175 50  0001 C CNN
F 1 "GND" H 3505 2252 50  0000 C CNN
F 2 "" H 3500 2425 50  0001 C CNN
F 3 "" H 3500 2425 50  0001 C CNN
	1    3500 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 2325 3500 2325
Wire Wire Line
	3500 2325 3500 2425
Wire Wire Line
	4675 4325 4675 4275
Wire Wire Line
	4675 4275 5175 4275
Text Label 4750 4275 0    50   ~ 0
PROG_VCC
Wire Wire Line
	6675 4350 6675 4250
Wire Wire Line
	6675 4250 7150 4250
Text Label 6725 4250 0    50   ~ 0
PROG_VCC
$Comp
L power:VCC #PWR05
U 1 1 5DE8396A
P 3475 1675
F 0 "#PWR05" H 3475 1525 50  0001 C CNN
F 1 "VCC" H 3492 1848 50  0000 C CNN
F 2 "" H 3475 1675 50  0001 C CNN
F 3 "" H 3475 1675 50  0001 C CNN
	1    3475 1675
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5DE860A8
P 6025 1475
F 0 "#PWR08" H 6025 1325 50  0001 C CNN
F 1 "VCC" H 6042 1648 50  0000 C CNN
F 2 "" H 6025 1475 50  0001 C CNN
F 3 "" H 6025 1475 50  0001 C CNN
	1    6025 1475
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5DE86AD0
P 7825 1525
F 0 "#PWR09" H 7825 1375 50  0001 C CNN
F 1 "VCC" H 7842 1698 50  0000 C CNN
F 2 "" H 7825 1525 50  0001 C CNN
F 3 "" H 7825 1525 50  0001 C CNN
	1    7825 1525
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5DE86DF7
P 2575 3475
F 0 "#PWR03" H 2575 3325 50  0001 C CNN
F 1 "VCC" H 2592 3648 50  0000 C CNN
F 2 "" H 2575 3475 50  0001 C CNN
F 3 "" H 2575 3475 50  0001 C CNN
	1    2575 3475
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5DEFE6D7
P 4875 5725
F 0 "#PWR07" H 4875 5575 50  0001 C CNN
F 1 "VCC" H 4892 5898 50  0000 C CNN
F 2 "" H 4875 5725 50  0001 C CNN
F 3 "" H 4875 5725 50  0001 C CNN
	1    4875 5725
	1    0    0    -1  
$EndComp
$EndSCHEMATC