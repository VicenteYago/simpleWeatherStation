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
L Sensor:BME280 U?
U 1 1 60006D2B
P 7500 2600
F 0 "U?" H 7071 2646 50  0000 R CNN
F 1 "BME280" H 7071 2555 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 9000 2150 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 7500 2400 50  0001 C CNN
	1    7500 2600
	-1   0    0    1   
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini U?
U 1 1 60008C3E
P 4800 2900
F 0 "U?" H 4800 2011 50  0000 C CNN
F 1 "WeMos_D1_mini" H 4800 1920 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 4800 1750 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2950 1750 50  0001 C CNN
	1    4800 2900
	1    0    0    -1  
$EndComp
$Comp
L Driver_Display:CR2013-MI2120 U?
U 1 1 60010288
P 6300 4900
F 0 "U?" V 6346 4256 50  0000 R CNN
F 1 "CR2013-MI2120" V 6255 4256 50  0000 R CNN
F 2 "Display:CR2013-MI2120" H 6300 4200 50  0001 C CNN
F 3 "http://pan.baidu.com/s/11Y990" H 5650 5400 50  0001 C CNN
	1    6300 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 2100 5500 2100
Wire Wire Line
	4800 3700 7150 3700
Wire Wire Line
	8400 3700 8400 1850
Wire Wire Line
	8400 1850 7600 1850
Wire Wire Line
	7600 1850 7600 2000
Wire Wire Line
	7150 3700 7150 4900
Wire Wire Line
	7150 4900 6900 4900
Connection ~ 7150 3700
Wire Wire Line
	7150 3700 8400 3700
Wire Wire Line
	5500 3400 7400 3400
Wire Wire Line
	5500 4900 5700 4900
Wire Wire Line
	6900 2700 5400 2700
Wire Wire Line
	5400 2700 5400 2600
Wire Wire Line
	5400 2600 5200 2600
Wire Wire Line
	6900 2900 5350 2900
Wire Wire Line
	5350 2900 5350 2700
Wire Wire Line
	5350 2700 5200 2700
Wire Wire Line
	6100 4100 6100 3300
Wire Wire Line
	5200 3300 6100 3300
Wire Wire Line
	6600 4100 6600 4000
Wire Wire Line
	6600 4000 4200 4000
Wire Wire Line
	4200 4000 4200 2500
Wire Wire Line
	4200 2500 4400 2500
Wire Wire Line
	6000 4100 6000 2800
Wire Wire Line
	6000 2800 5200 2800
Wire Wire Line
	6200 4100 6200 3200
Wire Wire Line
	6200 3200 5200 3200
Wire Wire Line
	6400 4100 6400 3000
Wire Wire Line
	6400 3000 5200 3000
Wire Wire Line
	6500 4100 6500 3850
Wire Wire Line
	6500 3850 5500 3850
Connection ~ 5500 3850
Wire Wire Line
	5500 3850 5500 4900
Wire Wire Line
	6300 4100 6300 3100
Wire Wire Line
	6300 3100 5200 3100
Connection ~ 5500 3400
Wire Wire Line
	5500 3400 5500 3850
Wire Wire Line
	5500 2100 5500 3400
Wire Wire Line
	7400 3200 7400 3400
$EndSCHEMATC
