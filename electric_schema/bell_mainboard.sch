EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:bell_mainboard-cache
EELAYER 25 0
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
L AC #PWR?
U 1 1 5E3BE75B
P 700 800
F 0 "#PWR?" H 700 700 50  0001 C CNN
F 1 "AC" H 700 1050 50  0000 C CNN
F 2 "" H 700 800 50  0001 C CNN
F 3 "" H 700 800 50  0001 C CNN
	1    700  800 
	1    0    0    -1  
$EndComp
$Comp
L Transformer_1P_1S T1
U 1 1 5E3BE7A0
P 1650 1000
F 0 "T1" H 1650 1250 50  0000 C CNN
F 1 "220VAC/12VAC" H 1650 700 50  0000 C CNN
F 2 "" H 1650 1000 50  0001 C CNN
F 3 "" H 1650 1000 50  0001 C CNN
	1    1650 1000
	1    0    0    -1  
$EndComp
$Comp
L AC #PWR?
U 1 1 5E3BE8A9
P 700 1200
F 0 "#PWR?" H 700 1100 50  0001 C CNN
F 1 "AC" H 700 1450 50  0000 C CNN
F 2 "" H 700 1200 50  0001 C CNN
F 3 "" H 700 1200 50  0001 C CNN
	1    700  1200
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5E3BE90E
P 2650 800
F 0 "D2" H 2650 900 50  0000 C CNN
F 1 "D" H 2650 700 50  0000 C CNN
F 2 "" H 2650 800 50  0001 C CNN
F 3 "" H 2650 800 50  0001 C CNN
	1    2650 800 
	-1   0    0    1   
$EndComp
$Comp
L D D3
U 1 1 5E3BE96D
P 2800 950
F 0 "D3" H 2800 1050 50  0000 C CNN
F 1 "D" H 2800 850 50  0000 C CNN
F 2 "" H 2800 950 50  0001 C CNN
F 3 "" H 2800 950 50  0001 C CNN
	1    2800 950 
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 5E3BE9B5
P 2500 950
F 0 "D1" H 2500 1050 50  0000 C CNN
F 1 "D" H 2500 850 50  0000 C CNN
F 2 "" H 2500 950 50  0001 C CNN
F 3 "" H 2500 950 50  0001 C CNN
	1    2500 950 
	0    1    1    0   
$EndComp
$Comp
L D D4
U 1 1 5E3BE9FC
P 2650 1100
F 0 "D4" H 2650 1200 50  0000 C CNN
F 1 "D" H 2650 1000 50  0000 C CNN
F 2 "" H 2650 1100 50  0001 C CNN
F 3 "" H 2650 1100 50  0001 C CNN
	1    2650 1100
	-1   0    0    1   
$EndComp
$Comp
L CP C?
U 1 1 5E3BEADA
P 3350 950
F 0 "C?" H 3375 1050 50  0000 L CNN
F 1 "CP" H 3375 850 50  0000 L CNN
F 2 "" H 3388 800 50  0001 C CNN
F 3 "" H 3350 950 50  0001 C CNN
	1    3350 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5E3BEB59
P 2900 1350
F 0 "#PWR?" H 2900 1100 50  0001 C CNN
F 1 "GND" H 2900 1200 50  0000 C CNN
F 2 "" H 2900 1350 50  0001 C CNN
F 3 "" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
$Comp
L LM7805_TO220 U?
U 1 1 5E3BEF7B
P 4200 800
F 0 "U?" H 4050 925 50  0000 C CNN
F 1 "LM7805_TO220" H 4200 925 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 4200 1025 50  0001 C CIN
F 3 "" H 4200 750 50  0001 C CNN
	1    4200 800 
	1    0    0    -1  
$EndComp
Text GLabel 5250 800  2    60   Input ~ 0
5V
Text GLabel 5200 1100 2    60   Input ~ 0
GND
$Comp
L FINDER-32.21-x000 K?
U 1 1 5E3C0A51
P 2000 3600
F 0 "K?" H 2450 3750 50  0000 L CNN
F 1 "FINDER-32.21-x000" H 2450 3650 50  0000 L CNN
F 2 "Relays_THT:Relay_SPST_Finder_32.21-x300" H 3270 3570 50  0001 C CNN
F 3 "" H 2000 3600 50  0001 C CNN
	1    2000 3600
	1    0    0    -1  
$EndComp
$Comp
L D D5
U 1 1 5E3C0AF0
P 1350 3600
F 0 "D5" H 1350 3700 50  0000 C CNN
F 1 "D" H 1350 3500 50  0000 C CNN
F 2 "" H 1350 3600 50  0001 C CNN
F 3 "" H 1350 3600 50  0001 C CNN
	1    1350 3600
	0    1    1    0   
$EndComp
$Comp
L BC547 Q?
U 1 1 5E3C0C07
P 1500 4350
F 0 "Q?" H 1700 4425 50  0000 L CNN
F 1 "BC547" H 1700 4350 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 1700 4275 50  0001 L CIN
F 3 "" H 1500 4350 50  0001 L CNN
	1    1500 4350
	1    0    0    -1  
$EndComp
Text GLabel 1600 4700 3    60   Input ~ 0
GND
Text GLabel 1600 3050 1    60   Input ~ 0
5V
$Comp
L R R1
U 1 1 5E3C0F82
P 1050 4350
F 0 "R1" V 1130 4350 50  0000 C CNN
F 1 "1K" V 1050 4350 50  0000 C CNN
F 2 "" V 980 4350 50  0001 C CNN
F 3 "" H 1050 4350 50  0001 C CNN
	1    1050 4350
	0    1    1    0   
$EndComp
Text GLabel 750  4300 1    60   Input ~ 0
RELAY_COMMAND
$Comp
L AC #PWR?
U 1 1 5E3C1258
P 2200 3900
F 0 "#PWR?" H 2200 3800 50  0001 C CNN
F 1 "AC" H 2200 4150 50  0000 C CNN
F 2 "" H 2200 3900 50  0001 C CNN
F 3 "" H 2200 3900 50  0001 C CNN
	1    2200 3900
	-1   0    0    1   
$EndComp
Text GLabel 2100 3000 1    60   Input ~ 0
OUT1
Text GLabel 2300 3000 1    60   Input ~ 0
OUT2
$Comp
L CP_Small C?
U 1 1 5E3C16F9
P 4700 950
F 0 "C?" H 4710 1020 50  0000 L CNN
F 1 "CP_Small" H 4710 870 50  0000 L CNN
F 2 "" H 4700 950 50  0001 C CNN
F 3 "" H 4700 950 50  0001 C CNN
	1    4700 950 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5E3C180D
P 5000 950
F 0 "C?" H 5010 1020 50  0000 L CNN
F 1 "C_Small" H 5010 870 50  0000 L CNN
F 2 "" H 5000 950 50  0001 C CNN
F 3 "" H 5000 950 50  0001 C CNN
	1    5000 950 
	1    0    0    -1  
$EndComp
$Comp
L PCF8574 U?
U 1 1 5E3C198D
P 4500 2400
F 0 "U?" H 4150 3000 50  0000 L CNN
F 1 "PCF8574" H 4600 3000 50  0000 L CNN
F 2 "" H 4500 2400 50  0001 C CNN
F 3 "" H 4500 2400 50  0001 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5E3C1C15
P 3450 2200
F 0 "R?" V 3530 2200 50  0000 C CNN
F 1 "10k" V 3450 2200 50  0000 C CNN
F 2 "" V 3380 2200 50  0001 C CNN
F 3 "" H 3450 2200 50  0001 C CNN
	1    3450 2200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C1CF9
P 3450 2400
F 0 "R?" V 3530 2400 50  0000 C CNN
F 1 "10k" V 3450 2400 50  0000 C CNN
F 2 "" V 3380 2400 50  0001 C CNN
F 3 "" H 3450 2400 50  0001 C CNN
	1    3450 2400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C1D38
P 3450 2600
F 0 "R?" V 3530 2600 50  0000 C CNN
F 1 "10k" V 3450 2600 50  0000 C CNN
F 2 "" V 3380 2600 50  0001 C CNN
F 3 "" H 3450 2600 50  0001 C CNN
	1    3450 2600
	0    1    1    0   
$EndComp
Text GLabel 3050 2400 0    60   Input ~ 0
5V
$Comp
L RC1602A U?
U 1 1 5E3C217E
P 6000 2350
F 0 "U?" H 5750 3000 50  0000 C CNN
F 1 "RC1602A" H 6110 3000 50  0000 L CNN
F 2 "Displays:RC1602A" H 6100 1550 50  0001 C CNN
F 3 "" H 6100 2250 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
Text GLabel 5300 3200 3    60   Input ~ 0
GND
$Comp
L POT RV?
U 1 1 5E3C2912
P 6650 1850
F 0 "RV?" V 6475 1850 50  0000 C CNN
F 1 "POT" V 6550 1850 50  0000 C CNN
F 2 "" H 6650 1850 50  0001 C CNN
F 3 "" H 6650 1850 50  0001 C CNN
	1    6650 1850
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5E3C2EDA
P 3450 1800
F 0 "R?" V 3530 1800 50  0000 C CNN
F 1 "10k" V 3450 1800 50  0000 C CNN
F 2 "" V 3380 1800 50  0001 C CNN
F 3 "" H 3450 1800 50  0001 C CNN
	1    3450 1800
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C2F39
P 3450 2000
F 0 "R?" V 3530 2000 50  0000 C CNN
F 1 "10k" V 3450 2000 50  0000 C CNN
F 2 "" V 3380 2000 50  0001 C CNN
F 3 "" H 3450 2000 50  0001 C CNN
	1    3450 2000
	0    1    1    0   
$EndComp
Text GLabel 3800 1900 0    60   Input ~ 0
SDA
Text GLabel 3950 1800 2    60   Input ~ 0
SCL
$Comp
L R R?
U 1 1 5E3C3305
P 6550 2650
F 0 "R?" V 6630 2650 50  0000 C CNN
F 1 "330R" V 6550 2650 50  0000 C CNN
F 2 "" V 6480 2650 50  0001 C CNN
F 3 "" H 6550 2650 50  0001 C CNN
	1    6550 2650
	0    1    1    0   
$EndComp
$Comp
L SW_DIP_x12 SW?
U 1 1 5E3C36CA
P 8900 2100
F 0 "SW?" H 8900 2850 50  0000 C CNN
F 1 "SW_DIP_x12" H 8900 1450 50  0000 C CNN
F 2 "" H 8900 2100 50  0001 C CNN
F 3 "" H 8900 2100 50  0001 C CNN
	1    8900 2100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5E3C38A7
P 7950 1200
F 0 "R?" V 8030 1200 50  0000 C CNN
F 1 "R" V 7950 1200 50  0000 C CNN
F 2 "" V 7880 1200 50  0001 C CNN
F 3 "" H 7950 1200 50  0001 C CNN
	1    7950 1200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3A3C
P 7950 1400
F 0 "R?" V 8030 1400 50  0000 C CNN
F 1 "R" V 7950 1400 50  0000 C CNN
F 2 "" V 7880 1400 50  0001 C CNN
F 3 "" H 7950 1400 50  0001 C CNN
	1    7950 1400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3A89
P 7950 1650
F 0 "R?" V 8030 1650 50  0000 C CNN
F 1 "R" V 7950 1650 50  0000 C CNN
F 2 "" V 7880 1650 50  0001 C CNN
F 3 "" H 7950 1650 50  0001 C CNN
	1    7950 1650
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3AD4
P 7950 1900
F 0 "R?" V 8030 1900 50  0000 C CNN
F 1 "R" V 7950 1900 50  0000 C CNN
F 2 "" V 7880 1900 50  0001 C CNN
F 3 "" H 7950 1900 50  0001 C CNN
	1    7950 1900
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3B40
P 7950 2100
F 0 "R?" V 8030 2100 50  0000 C CNN
F 1 "R" V 7950 2100 50  0000 C CNN
F 2 "" V 7880 2100 50  0001 C CNN
F 3 "" H 7950 2100 50  0001 C CNN
	1    7950 2100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3B93
P 7950 2350
F 0 "R?" V 8030 2350 50  0000 C CNN
F 1 "R" V 7950 2350 50  0000 C CNN
F 2 "" V 7880 2350 50  0001 C CNN
F 3 "" H 7950 2350 50  0001 C CNN
	1    7950 2350
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3BEA
P 7950 2550
F 0 "R?" V 8030 2550 50  0000 C CNN
F 1 "R" V 7950 2550 50  0000 C CNN
F 2 "" V 7880 2550 50  0001 C CNN
F 3 "" H 7950 2550 50  0001 C CNN
	1    7950 2550
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3C3D
P 7950 2750
F 0 "R?" V 8030 2750 50  0000 C CNN
F 1 "R" V 7950 2750 50  0000 C CNN
F 2 "" V 7880 2750 50  0001 C CNN
F 3 "" H 7950 2750 50  0001 C CNN
	1    7950 2750
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3C92
P 7950 2950
F 0 "R?" V 8030 2950 50  0000 C CNN
F 1 "R" V 7950 2950 50  0000 C CNN
F 2 "" V 7880 2950 50  0001 C CNN
F 3 "" H 7950 2950 50  0001 C CNN
	1    7950 2950
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3CE9
P 7950 3150
F 0 "R?" V 8030 3150 50  0000 C CNN
F 1 "R" V 7950 3150 50  0000 C CNN
F 2 "" V 7880 3150 50  0001 C CNN
F 3 "" H 7950 3150 50  0001 C CNN
	1    7950 3150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3D46
P 7950 3350
F 0 "R?" V 8030 3350 50  0000 C CNN
F 1 "R" V 7950 3350 50  0000 C CNN
F 2 "" V 7880 3350 50  0001 C CNN
F 3 "" H 7950 3350 50  0001 C CNN
	1    7950 3350
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C3DC5
P 7950 3600
F 0 "R?" V 8030 3600 50  0000 C CNN
F 1 "R" V 7950 3600 50  0000 C CNN
F 2 "" V 7880 3600 50  0001 C CNN
F 3 "" H 7950 3600 50  0001 C CNN
	1    7950 3600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5E3C4DE6
P 9750 2050
F 0 "R?" V 9830 2050 50  0000 C CNN
F 1 "R" V 9750 2050 50  0000 C CNN
F 2 "" V 9680 2050 50  0001 C CNN
F 3 "" H 9750 2050 50  0001 C CNN
	1    9750 2050
	0    1    1    0   
$EndComp
Text GLabel 10200 2050 2    60   Input ~ 0
GND
Text GLabel 7600 2250 0    60   Input ~ 0
5V
$Comp
L CP_Small C?
U 1 1 5E3C588B
P 9750 2300
F 0 "C?" H 9760 2370 50  0000 L CNN
F 1 "CP_Small" H 9760 2220 50  0000 L CNN
F 2 "" H 9750 2300 50  0001 C CNN
F 3 "" H 9750 2300 50  0001 C CNN
	1    9750 2300
	0    -1   -1   0   
$EndComp
Text GLabel 9450 1750 1    60   Input ~ 0
A0
$Comp
L ATMEGA328-PU U?
U 1 1 5E3C640C
P 4900 5400
F 0 "U?" H 4150 6650 50  0000 L BNN
F 1 "ATMEGA328-PU" H 5300 4000 50  0000 L BNN
F 2 "DIL28" H 4900 5400 50  0001 C CIN
F 3 "" H 4900 5400 50  0001 C CNN
	1    4900 5400
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y?
U 1 1 5E3C6CC4
P 6250 4950
F 0 "Y?" H 6250 5100 50  0000 C CNN
F 1 "Crystal" H 6250 4800 50  0000 C CNN
F 2 "" H 6250 4950 50  0001 C CNN
F 3 "" H 6250 4950 50  0001 C CNN
	1    6250 4950
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5E3C71BE
P 6550 4950
F 0 "R?" V 6630 4950 50  0000 C CNN
F 1 "R" V 6550 4950 50  0000 C CNN
F 2 "" V 6480 4950 50  0001 C CNN
F 3 "" H 6550 4950 50  0001 C CNN
	1    6550 4950
	1    0    0    -1  
$EndComp
Text GLabel 3600 4450 0    60   Input ~ 0
5V
Text GLabel 3850 6550 0    60   Input ~ 0
GND
Text GLabel 5900 6300 2    60   Input ~ 0
RELAY_COMMAND
Text GLabel 6400 5950 2    60   Input ~ 0
TXD_GPS
Text GLabel 6400 6100 2    60   Input ~ 0
RXD_GPS
Wire Bus Line
	1250 800  700  800 
Wire Bus Line
	1250 1200 700  1200
Wire Bus Line
	2050 800  2500 800 
Wire Bus Line
	2050 1200 2800 1200
Wire Bus Line
	2800 1200 2800 1100
Wire Bus Line
	2800 800  3900 800 
Wire Bus Line
	2500 1100 2500 1350
Wire Bus Line
	2500 1350 3350 1350
Wire Bus Line
	3350 1350 3350 1100
Connection ~ 4200 1100
Connection ~ 3350 1100
Connection ~ 3350 800 
Connection ~ 3900 800 
Connection ~ 2800 800 
Connection ~ 2800 1100
Connection ~ 2500 1100
Connection ~ 2500 800 
Connection ~ 2050 1200
Connection ~ 2050 800 
Connection ~ 1250 1200
Connection ~ 1250 800 
Connection ~ 4500 800 
Wire Bus Line
	3350 1100 5200 1100
Wire Bus Line
	4500 800  5250 800 
Wire Bus Line
	1800 3900 1350 3900
Wire Bus Line
	1350 3900 1350 3750
Wire Bus Line
	1800 3300 1350 3300
Wire Bus Line
	1350 3300 1350 3450
Connection ~ 1350 3450
Connection ~ 1800 3300
Connection ~ 1350 3750
Connection ~ 1800 3900
Wire Bus Line
	1600 4150 1600 3900
Connection ~ 1600 3900
Connection ~ 1600 4150
Wire Bus Line
	1600 4700 1600 4550
Wire Bus Line
	1600 3300 1600 3050
Wire Bus Line
	1200 4350 1300 4350
Connection ~ 1300 4350
Connection ~ 1200 4350
Connection ~ 2200 3900
Wire Bus Line
	2100 3300 2100 3000
Wire Bus Line
	2300 3300 2300 3000
Connection ~ 2300 3300
Connection ~ 2100 3300
Wire Bus Line
	4700 850  4700 800 
Wire Bus Line
	4700 1050 4700 1100
Wire Bus Line
	5000 850  5000 800 
Wire Bus Line
	5000 1050 5000 1100
Wire Bus Line
	3300 1700 3300 2600
Connection ~ 3300 2200
Connection ~ 3300 2600
Wire Bus Line
	3600 2200 4000 2200
Wire Bus Line
	4000 2200 4000 2300
Wire Bus Line
	3600 2400 4000 2400
Wire Bus Line
	3600 2600 4000 2600
Wire Bus Line
	4000 2600 4000 2500
Connection ~ 4000 2500
Connection ~ 4000 2400
Connection ~ 4000 2300
Connection ~ 3600 2200
Connection ~ 3600 2400
Connection ~ 3600 2600
Wire Bus Line
	3050 2400 3300 2400
Connection ~ 3300 2400
Wire Bus Line
	4500 1700 3300 1700
Wire Bus Line
	4500 3100 6000 3100
Wire Bus Line
	6000 3100 6000 3050
Wire Bus Line
	5300 3200 5300 3100
Connection ~ 5300 3100
Wire Bus Line
	4500 1700 4500 1650
Wire Bus Line
	4500 1650 6650 1650
Connection ~ 6000 1650
Connection ~ 4500 1700
Connection ~ 4500 3100
Wire Bus Line
	5000 2000 5000 1850
Wire Bus Line
	5000 1850 5600 1850
Wire Bus Line
	5000 2100 5100 2100
Wire Bus Line
	5100 2100 5100 1950
Wire Bus Line
	5100 1950 5600 1950
Wire Bus Line
	5000 2200 5200 2200
Wire Bus Line
	5200 2200 5200 2050
Wire Bus Line
	5200 2050 5600 2050
Wire Bus Line
	5600 2150 5600 2450
Connection ~ 5600 2150
Connection ~ 5600 2250
Connection ~ 5600 2350
Connection ~ 5600 2450
Wire Bus Line
	6400 2550 6750 2550
Wire Bus Line
	6750 2550 6750 3050
Wire Bus Line
	6750 3050 6000 3050
Connection ~ 6000 3050
Wire Bus Line
	5000 2400 5500 2400
Wire Bus Line
	5500 2400 5500 2550
Wire Bus Line
	5500 2550 5600 2550
Wire Bus Line
	5000 2500 5450 2500
Wire Bus Line
	5450 2500 5450 2650
Wire Bus Line
	5450 2650 5600 2650
Wire Bus Line
	5000 2600 5400 2600
Wire Bus Line
	5400 2600 5400 2750
Wire Bus Line
	5400 2750 5600 2750
Wire Bus Line
	5000 2700 5350 2700
Wire Bus Line
	5350 2700 5350 2850
Wire Bus Line
	5350 2850 5600 2850
Connection ~ 5600 2550
Connection ~ 5600 2650
Connection ~ 5600 2750
Connection ~ 5600 2850
Connection ~ 5600 2050
Connection ~ 5600 1950
Connection ~ 5600 1850
Wire Bus Line
	6650 1650 6650 1700
Wire Bus Line
	6650 2000 6650 2550
Wire Bus Line
	6500 1850 6500 2150
Wire Bus Line
	6500 2150 6400 2150
Connection ~ 6500 1850
Connection ~ 6400 2150
Connection ~ 6650 2000
Connection ~ 6650 2550
Connection ~ 6400 2550
Wire Bus Line
	3600 1800 3950 1800
Wire Bus Line
	3950 1800 3950 2000
Wire Bus Line
	3950 2000 4000 2000
Wire Bus Line
	3600 2000 3900 2000
Wire Bus Line
	3900 2000 3900 2100
Wire Bus Line
	3900 2100 4000 2100
Connection ~ 3600 1800
Connection ~ 4000 2000
Connection ~ 4000 2100
Connection ~ 3600 2000
Wire Bus Line
	3800 1900 3850 1900
Wire Bus Line
	3850 1900 3850 2000
Connection ~ 3850 2000
Connection ~ 3300 2000
Connection ~ 3300 1800
Wire Bus Line
	6700 2650 6900 2650
Wire Bus Line
	6900 2650 6900 1700
Wire Bus Line
	6900 1700 6650 1700
Connection ~ 6650 1700
Connection ~ 6700 2650
Wire Bus Line
	9200 1500 9200 2600
Connection ~ 9200 2600
Connection ~ 9200 2500
Connection ~ 9200 2400
Connection ~ 9200 2300
Connection ~ 9200 2200
Connection ~ 9200 2100
Connection ~ 9200 2000
Connection ~ 9200 1900
Connection ~ 9200 1800
Connection ~ 9200 1700
Connection ~ 9200 1600
Connection ~ 9200 1500
Wire Bus Line
	8100 1200 8600 1200
Wire Bus Line
	8600 1200 8600 1500
Wire Bus Line
	8100 1400 8550 1400
Wire Bus Line
	8550 1400 8550 1600
Wire Bus Line
	8550 1600 8600 1600
Wire Bus Line
	8100 1650 8550 1650
Wire Bus Line
	8550 1650 8550 1700
Wire Bus Line
	8550 1700 8600 1700
Wire Bus Line
	8100 1900 8150 1900
Wire Bus Line
	8150 1900 8150 1800
Wire Bus Line
	8150 1800 8600 1800
Wire Bus Line
	8100 2100 8200 2100
Wire Bus Line
	8200 2100 8200 1900
Wire Bus Line
	8200 1900 8600 1900
Wire Bus Line
	8100 2350 8250 2350
Wire Bus Line
	8250 2350 8250 2000
Wire Bus Line
	8250 2000 8600 2000
Wire Bus Line
	8100 2550 8300 2550
Wire Bus Line
	8300 2550 8300 2100
Wire Bus Line
	8300 2100 8600 2100
Wire Bus Line
	8100 2750 8350 2750
Wire Bus Line
	8350 2750 8350 2200
Wire Bus Line
	8350 2200 8600 2200
Wire Bus Line
	8100 2950 8400 2950
Wire Bus Line
	8400 2950 8400 2300
Wire Bus Line
	8400 2300 8600 2300
Wire Bus Line
	8100 3150 8450 3150
Wire Bus Line
	8450 3150 8450 2400
Wire Bus Line
	8450 2400 8600 2400
Wire Bus Line
	8100 3350 8500 3350
Wire Bus Line
	8500 3350 8500 2500
Wire Bus Line
	8500 2500 8600 2500
Wire Bus Line
	8100 3600 8550 3600
Wire Bus Line
	8550 3600 8550 2600
Wire Bus Line
	8550 2600 8600 2600
Connection ~ 8600 1500
Connection ~ 8600 1600
Connection ~ 8600 1700
Connection ~ 8600 1800
Connection ~ 8600 1900
Connection ~ 8600 2000
Connection ~ 8600 2100
Connection ~ 8600 2200
Connection ~ 8600 2300
Connection ~ 8600 2400
Connection ~ 8600 2500
Connection ~ 8600 2600
Connection ~ 8100 1200
Connection ~ 8100 1400
Connection ~ 8100 1650
Connection ~ 8100 1900
Connection ~ 8100 2100
Connection ~ 8100 2350
Connection ~ 8100 2550
Connection ~ 8100 2750
Connection ~ 8100 2950
Connection ~ 8100 3150
Connection ~ 8100 3350
Connection ~ 8100 3600
Wire Bus Line
	7800 1200 7800 3600
Connection ~ 7800 1200
Connection ~ 7800 1400
Connection ~ 7800 1650
Connection ~ 7800 1900
Connection ~ 7800 2100
Connection ~ 7800 2350
Connection ~ 7800 2550
Connection ~ 7800 2750
Connection ~ 7800 2950
Connection ~ 7800 3150
Connection ~ 7800 3350
Wire Bus Line
	9600 2050 9200 2050
Connection ~ 9200 2050
Connection ~ 9600 2050
Wire Bus Line
	9900 2050 10200 2050
Connection ~ 9900 2050
Connection ~ 10200 2050
Wire Bus Line
	7600 2250 7800 2250
Connection ~ 7800 2250
Wire Bus Line
	9450 2300 9650 2300
Wire Bus Line
	9450 1750 9450 2300
Wire Bus Line
	9850 2300 10000 2300
Wire Bus Line
	10000 2300 10000 2050
Connection ~ 9450 2050
Connection ~ 9650 2300
Connection ~ 9850 2300
Connection ~ 10000 2050
Wire Bus Line
	4000 4300 4000 4900
Connection ~ 4000 4600
Connection ~ 4000 4300
Connection ~ 4000 4900
Wire Bus Line
	4000 6500 4000 6600
Connection ~ 4000 6500
Connection ~ 4000 6600
Wire Bus Line
	6050 5100 6550 5100
Wire Bus Line
	6050 5100 6050 5000
Wire Bus Line
	6050 5000 5900 5000
Connection ~ 5900 5000
Connection ~ 6250 5100
Connection ~ 6550 5100
Wire Bus Line
	3600 4450 4000 4450
Connection ~ 4000 4450
Wire Bus Line
	3850 6550 4000 6550
Connection ~ 4000 6550
Wire Bus Line
	900  4350 750  4350
Wire Bus Line
	750  4350 750  4300
Connection ~ 900  4350
Connection ~ 5900 6300
Text GLabel 6800 5450 2    60   Input ~ 0
SDA
Wire Bus Line
	6800 5450 6050 5450
Wire Bus Line
	6050 5450 6050 5550
Wire Bus Line
	6050 5550 5900 5550
Wire Bus Line
	6800 5600 6000 5600
Wire Bus Line
	6000 5600 6000 5650
Wire Bus Line
	6000 5650 5900 5650
Connection ~ 5900 5650
Connection ~ 5900 5550
Text GLabel 6800 5600 2    60   Input ~ 0
SCL
Wire Bus Line
	6400 5950 6000 5950
Wire Bus Line
	6000 5950 6000 5900
Wire Bus Line
	6000 5900 5900 5900
Wire Bus Line
	6400 6100 6000 6100
Wire Bus Line
	6000 6100 6000 6000
Wire Bus Line
	6000 6000 5900 6000
Text GLabel 7500 5550 1    60   Input ~ 0
5V
$Comp
L R R?
U 1 1 5E3C3237
P 7350 5700
F 0 "R?" V 7430 5700 50  0000 C CNN
F 1 "R" V 7350 5700 50  0000 C CNN
F 2 "" V 7280 5700 50  0001 C CNN
F 3 "" H 7350 5700 50  0001 C CNN
	1    7350 5700
	0    1    1    0   
$EndComp
Wire Bus Line
	7500 5550 7500 5700
Connection ~ 7500 5700
Wire Bus Line
	7200 5700 5900 5700
Wire Bus Line
	5900 5700 5900 5750
Connection ~ 5900 5900
Connection ~ 5900 6000
Connection ~ 5900 5750
Connection ~ 7200 5700
$Comp
L SW_Push SW?
U 1 1 5E3C3664
P 7350 5900
F 0 "SW?" H 7400 6000 50  0000 L CNN
F 1 "SW_Push" H 7350 5840 50  0000 C CNN
F 2 "" H 7350 6100 50  0001 C CNN
F 3 "" H 7350 6100 50  0001 C CNN
	1    7350 5900
	1    0    0    -1  
$EndComp
Wire Bus Line
	7150 5900 7050 5900
Wire Bus Line
	7050 5700 7050 6150
Connection ~ 7050 5700
Connection ~ 7150 5900
Text GLabel 7700 5900 2    60   Input ~ 0
GND
Wire Bus Line
	7700 5900 7550 5900
Connection ~ 7550 5900
$Comp
L Buzzer BZ?
U 1 1 5E3C3C0C
P 9550 4150
F 0 "BZ?" H 9700 4200 50  0000 L CNN
F 1 "Buzzer" H 9700 4100 50  0000 L CNN
F 2 "" V 9525 4250 50  0001 C CNN
F 3 "" V 9525 4250 50  0001 C CNN
	1    9550 4150
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 5E3C3E67
P 9150 4150
F 0 "D?" H 9150 4250 50  0000 C CNN
F 1 "D" H 9150 4050 50  0000 C CNN
F 2 "" H 9150 4150 50  0001 C CNN
F 3 "" H 9150 4150 50  0001 C CNN
	1    9150 4150
	0    1    1    0   
$EndComp
Wire Bus Line
	9150 4000 9450 4000
Wire Bus Line
	9450 4000 9450 4050
Wire Bus Line
	9150 4300 9450 4300
Wire Bus Line
	9450 4300 9450 4250
Text GLabel 9300 4450 3    60   Input ~ 0
GND
Wire Bus Line
	9300 4450 9300 4300
Connection ~ 9300 4300
Text GLabel 9300 3850 1    60   Input ~ 0
SCK
Wire Bus Line
	9300 3850 9300 4000
Connection ~ 9300 4000
Text GLabel 6550 4600 2    60   Input ~ 0
SCK
Text GLabel 7100 6150 2    60   Input ~ 0
RESET
Wire Bus Line
	7050 6150 7100 6150
Connection ~ 7050 5900
Text GLabel 6550 4450 2    60   Input ~ 0
MISO
Text GLabel 6550 4300 2    60   Input ~ 0
MOSI
Wire Bus Line
	6100 4800 6550 4800
Wire Bus Line
	6100 4800 6100 4900
Wire Bus Line
	6100 4900 5900 4900
Connection ~ 5900 4900
Connection ~ 6250 4800
Connection ~ 6550 4800
Wire Bus Line
	6550 4600 6050 4600
Wire Bus Line
	6050 4600 6050 4800
Wire Bus Line
	6050 4800 5900 4800
Wire Bus Line
	6550 4450 6000 4450
Wire Bus Line
	6000 4450 6000 4700
Wire Bus Line
	6000 4700 5900 4700
Wire Bus Line
	6550 4300 5950 4300
Wire Bus Line
	5950 4300 5950 4600
Wire Bus Line
	5950 4600 5900 4600
Connection ~ 5900 4600
Connection ~ 5900 4700
Connection ~ 5900 4800
Text Label 7400 7500 0    60   ~ 12
Automatic_Bell_System
Text Label 7250 7050 0    394  Italic 79
ANTONELLI99
Text Label 8350 7650 0    79   ~ 16
06/02/2020
Text Label 10700 7650 0    79   ~ 16
1.0
$EndSCHEMATC
