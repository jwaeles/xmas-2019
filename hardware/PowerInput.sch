EESchema Schematic File Version 4
LIBS:plan_b-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "Dynamic Xmas Gift Label"
Date "2019-12-04"
Rev "rev0"
Comp "Jordan Waeles"
Comment1 "https://github.com/jwaeles/"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3600 2500 0    50   UnSpc ~ 0
BATT+
Text HLabel 3575 3400 0    50   UnSpc ~ 0
BATT-
Text HLabel 3575 2950 0    50   UnSpc ~ 0
PROG+
Text HLabel 7000 2500 2    50   UnSpc ~ 0
OUT+
Text HLabel 7000 3400 2    50   UnSpc ~ 0
GND
$Comp
L Device:C C?
U 1 1 5DECA76F
P 6850 2925
AR Path="/5DECA76F" Ref="C?"  Part="1" 
AR Path="/5DEB8626/5DECA76F" Ref="C2"  Part="1" 
F 0 "C2" H 6965 3016 50  0000 L CNN
F 1 "10uF" H 6965 2925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6888 2775 50  0001 C CNN
F 3 "~" H 6850 2925 50  0001 C CNN
F 4 "CL21A106KAYNNNE" H 6965 2834 50  0000 L CNN "MFR"
	1    6850 2925
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DECA793
P 6850 2500
AR Path="/5DECA793" Ref="#FLG?"  Part="1" 
AR Path="/5DEB8626/5DECA793" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 6850 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 6850 2673 50  0000 C CNN
F 2 "" H 6850 2500 50  0001 C CNN
F 3 "~" H 6850 2500 50  0001 C CNN
	1    6850 2500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DECA79C
P 6850 3400
AR Path="/5DECA79C" Ref="#FLG?"  Part="1" 
AR Path="/5DEB8626/5DECA79C" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 6850 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 6850 3573 50  0000 C CNN
F 2 "" H 6850 3400 50  0001 C CNN
F 3 "~" H 6850 3400 50  0001 C CNN
	1    6850 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q5
U 1 1 5DCA6C5B
P 5175 2600
F 0 "Q5" V 5518 2600 50  0000 C CNN
F 1 "Si2301CDS" V 5427 2600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5375 2700 50  0001 C CNN
F 3 "~" H 5175 2600 50  0001 C CNN
	1    5175 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DCAABB8
P 4725 3150
AR Path="/5DCAABB8" Ref="R?"  Part="1" 
AR Path="/5DC91175/5DCAABB8" Ref="R10"  Part="1" 
AR Path="/5DEB8626/5DCAABB8" Ref="R6"  Part="1" 
F 0 "R6" H 4475 3150 50  0000 L CNN
F 1 "100K" H 4475 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4725 3150 50  0001 C CNN
F 3 "~" H 4725 3150 50  0001 C CNN
	1    4725 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 2800 4725 2950
Wire Wire Line
	4725 2950 3575 2950
Wire Wire Line
	4725 2950 4725 3050
Connection ~ 4725 2950
Wire Wire Line
	4725 3250 4725 3400
Wire Wire Line
	4725 3400 4075 3400
$Comp
L Device:Q_PMOS_GSD Q4
U 1 1 5D9781DB
P 4725 2600
F 0 "Q4" V 5068 2600 50  0000 C CNN
F 1 "Si2301CDS" V 4977 2600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4925 2700 50  0001 C CNN
F 3 "~" H 4725 2600 50  0001 C CNN
	1    4725 2600
	0    1    -1   0   
$EndComp
Wire Wire Line
	4925 2500 4975 2500
Wire Wire Line
	5175 2800 5175 2950
Wire Wire Line
	5175 2950 4725 2950
$Comp
L Device:D D113
U 1 1 5D9B86C9
P 5475 2950
F 0 "D113" H 5475 2734 50  0000 C CNN
F 1 "SM4007PL" H 5475 2825 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5475 2950 50  0001 C CNN
F 3 "~" H 5475 2950 50  0001 C CNN
	1    5475 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5325 2950 5175 2950
Connection ~ 5175 2950
Wire Wire Line
	5375 2500 5925 2500
Wire Wire Line
	5625 2950 5925 2950
Wire Wire Line
	5925 2950 5925 2900
Connection ~ 5925 2500
Wire Wire Line
	5925 2500 6300 2500
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5D9BDE85
P 4075 2600
F 0 "Q1" V 4418 2600 50  0000 C CNN
F 1 "Si2301CDS" V 4327 2600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4275 2700 50  0001 C CNN
F 3 "~" H 4075 2600 50  0001 C CNN
	1    4075 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4275 2500 4525 2500
Wire Wire Line
	4075 2800 4075 3400
Connection ~ 4075 3400
Wire Wire Line
	4075 3400 3575 3400
Text Notes 4625 2200 0    50   ~ 0
ISOLATE BATTERIES\nIF PROG+ IS HIGH
Text Notes 5025 3250 0    39   ~ 0
DIODE DROP DOESN'T MATTER WHEN \nPROGRAMMER POWERS THE CIRCUIT, \nBUT IS UNDESIRABLE WHEN ON BATTERY
Text Notes 4150 1300 0    39   ~ 8
GIVE PRIORITY TO USB/ISP POWER INPUT\nTHEN IF NOT PRESENT USE BATTERIES INSTEAD
Wire Wire Line
	4725 3400 6850 3400
Connection ~ 4725 3400
Wire Wire Line
	6600 2500 6850 2500
Wire Wire Line
	6850 2500 6850 2775
Wire Wire Line
	6850 3075 6850 3400
Connection ~ 6850 3400
Wire Wire Line
	6850 3400 7000 3400
Wire Wire Line
	7000 2500 6850 2500
Connection ~ 6850 2500
$Comp
L Jumper:SolderJumper_2_Bridged JP6
U 1 1 5DF14931
P 5925 2750
F 0 "JP6" V 5879 2818 50  0000 L CNN
F 1 "PROG VCC" V 5970 2818 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_RoundedPad1.0x1.5mm" H 5925 2750 50  0001 C CNN
F 3 "~" H 5925 2750 50  0001 C CNN
	1    5925 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5925 2600 5925 2500
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5DF174DD
P 4625 1725
F 0 "JP5" H 4625 1930 50  0000 C CNN
F 1 "BYPASS PROTECTION" H 4625 1839 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4625 1725 50  0001 C CNN
F 3 "~" H 4625 1725 50  0001 C CNN
	1    4625 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 2500 5925 1725
Wire Wire Line
	5925 1725 4775 1725
Wire Wire Line
	4475 1725 3775 1725
Wire Wire Line
	3775 1725 3775 2500
$Comp
L Device:Polyfuse F?
U 1 1 5DECA776
P 6450 2500
AR Path="/5DECA776" Ref="F?"  Part="1" 
AR Path="/5DEB8626/5DECA776" Ref="F1"  Part="1" 
F 0 "F1" V 6135 2500 50  0000 C CNN
F 1 "500mA" V 6226 2500 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 6500 2300 50  0001 L CNN
F 3 "~" H 6450 2500 50  0001 C CNN
F 4 "TLC-PSMD050" V 6317 2500 39  0000 C CNN "MFR"
	1    6450 2500
	0    1    1    0   
$EndComp
Text Notes 4100 4225 0    50   ~ 0
Note: If this schematic is wrong and just doesn't work,\nand you sent it to the fabhouse and don't have time to\nrun a new batch, you can remove the protection circuit\nby bridging JP5 and cutting JP6.\n\nIn that case, only the batteries will power the circuit, ever,\nand you need batteries connected even to program the\nMCU.
Text Notes 3625 2225 0    50   ~ 0
POLARITY PROTECTION
Wire Wire Line
	3600 2500 3775 2500
Connection ~ 3775 2500
Wire Wire Line
	3775 2500 3875 2500
$EndSCHEMATC
