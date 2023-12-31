## This file is a general .xdc for the Cora Z7-07S Rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## PL System Clock
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { sys_clock }];#set

## RGB LEDs
#set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { pwm_out }]; #IO_L22N_T3_AD7N_35 Sch=led0_b
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L16P_T2_35 Sch=led0_g
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L21P_T3_DQS_AD14P_35 Sch=led0_r
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_0_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L22P_T3_AD7P_35 Sch=led1_g
#set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L23N_T3_35 Sch=led1_r

## Buttons
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L4N_T0_35 Sch=btn[0]
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { selector }]; #IO_L4P_T0_35 Sch=btn[1]

## Pmod Header JA
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { pwm_out }]; #IO_L17P_T2_34 Sch=ja_p[1]
#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { leds[6] }]; #IO_L17N_T2_34 Sch=ja_n[1]
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { leds[5] }]; #IO_L7P_T1_34 Sch=ja_p[2]
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { leds[4] }]; #IO_L7N_T1_34 Sch=ja_n[2]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L12P_T1_MRCC_34 Sch=ja_p[3]
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L12N_T1_MRCC_34 Sch=ja_n[3]
#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L22P_T3_34 Sch=ja_p[4]
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L22N_T3_34 Sch=ja_n[4]

## Pmod Header JB
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { leds[3] }]; #IO_L8P_T1_34 Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { leds[2] }]; #IO_L8N_T1_34 Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { leds[1] }]; #IO_L1P_T0_34 Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { leds[0] }]; #IO_L1N_T0_34 Sch=jb_n[2]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L18P_T2_34 Sch=jb_p[3]
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L18N_T2_34 Sch=jb_n[3]
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L4P_T0_34 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L4N_T0_34 Sch=jb_n[4]

## Crypto SDA 
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { crypto_sda }];

## Dedicated Analog Inputs
#set_property -dict { PACKAGE_PIN K9    IOSTANDARD LVCMOS33 } [get_ports { vp }]; #VP_0 Sch=xadc_v_p
#set_property -dict { PACKAGE_PIN L10   IOSTANDARD LVCMOS33 } [get_ports { vn }]; #VN_0 Sch=xadc_v_n

## ChipKit Outer Analog Header - as Single-Ended Analog Inputs
## NOTE: These ports can be used as single-ended analog inputs with voltages from 0-3.3V (ChipKit analog pins A0-A5) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { vaux1_p }]; #IO_L3P_T0_DQS_AD1P_35 Sch=ck_an_p[0]
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { vaux1_n }]; #IO_L3N_T0_DQS_AD1N_35 Sch=ck_an_n[0]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { vaux9_p }]; #IO_L5P_T0_AD9P_35 Sch=ck_an_p[1]
#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { vaux9_n }]; #IO_L5N_T0_AD9N_35 Sch=ck_an_n[1]
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { vaux6_p }]; #IO_L20P_T3_AD6P_35 Sch=ck_an_p[2]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { vaux6_n }]; #IO_L20N_T3_AD6N_35 Sch=ck_an_n[2]
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { vaux15_p }]; #IO_L24P_T3_AD15P_35 Sch=ck_an_p[3]
#set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { vaux15_n }]; #IO_L24N_T3_AD15N_35 Sch=ck_an_n[3]
#set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { vaux5_p }]; #IO_L17P_T2_AD5P_35 Sch=ck_an_p[4]
#set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { vaux5_n }]; #IO_L17N_T2_AD5N_35 Sch=ck_an_n[4]
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { vaux13_p }]; #IO_L18P_T2_AD13P_35 Sch=ck_an_p[5]
#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { vaux13_n }]; #IO_L18N_T2_AD13N_35 Sch=ck_an_n[5]
## ChipKit Outer Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using these ports as digital I/O.
#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { ck_a0 }]; #IO_L6N_T0_VREF_35 Sch=ck_a[0]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { ck_a1 }]; #IO_L10N_T1_AD11N_35 Sch=ck_a[1]
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { ck_a2 }]; #IO_L12P_T1_MRCC_35 Sch=ck_a[2]
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { ck_a3 }]; #IO_L11P_T1_SRCC_35 Sch=ck_a[3]
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { ck_a4 }]; #IO_L21N_T3_DQS_AD14N_35 Sch=ck_a[4]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { ck_a5 }]; #IO_L6P_T0_34 Sch=ck_a[5]

## ChipKit Inner Analog Header - as Differential Analog Inputs
## NOTE: These ports can be used as differential analog inputs with voltages from 0-1.0V (ChipKit analog pins A6-A11) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { vaux0_p }]; #IO_L1P_T0_AD0P_35 Sch=ad_p[0]
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { vaux0_n }]; #IO_L1N_T0_AD0N_35 Sch=ad_n[0]
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { vaux12_p }]; #IO_L15P_T2_DQS_AD12P_35 Sch=ad_p[12]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { vaux12_n }]; #IO_L15N_T2_DQS_AD12N_35 Sch=ad_n[12]
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { vaux8_p }]; #IO_L2P_T0_AD8P_35 Sch=ad_p[8]
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { vaux8_n }]; #IO_L2N_T0_AD8N_35 Sch=ad_n[8]
## ChipKit Inner Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using the inner analog header ports as digital I/O.
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { ck_a6 }]; #IO_L1P_T0_AD0P_35 Sch=ad_p[0]
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { ck_a7 }]; #IO_L1N_T0_AD0N_35 Sch=ad_n[0]
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { ck_a8 }]; #IO_L15P_T2_DQS_AD12P_35 Sch=ad_p[12]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { ck_a9 }]; #IO_L15N_T2_DQS_AD12N_35 Sch=ad_n[12]
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { ck_a10 }]; #IO_L2P_T0_AD8P_35 Sch=ad_p[8]
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { ck_a11 }]; #IO_L2N_T0_AD8N_35 Sch=ad_n[8]

## ChipKit Outer Digital Header
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { ck_io0 }]; #IO_L11P_T1_SRCC_34 Sch=ck_io[0]
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { ck_io1 }]; #IO_L3N_T0_DQS_34 Sch=ck_io[1]
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { ck_io2 }]; #IO_L5P_T0_34 Sch=ck_io[2]
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { ck_io3 }]; #IO_L5N_T0_34 Sch=ck_io[3]
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io4 }]; #IO_L21P_T3_DQS_34 Sch=ck_io[4]
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { ck_io5 }]; #IO_L21N_T3_DQS_34 Sch=ck_io[5]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io6 }]; #IO_L19N_T3_VREF_34 Sch=ck_io[6]
#set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { ck_io7 }]; #IO_L6N_T0_VREF_34 Sch=ck_io[7]
#set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { ck_io8 }]; #IO_L13P_T2_MRCC_34 Sch=ck_io[8]
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { ck_io9 }]; #IO_L8N_T1_AD10N_35 Sch=ck_io[9]
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { ck_io10 }]; #IO_L11N_T1_SRCC_34 Sch=ck_io[10]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { ck_io11 }]; #IO_L12N_T1_MRCC_35 Sch=ck_io[11]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { ck_io12 }]; #IO_L14P_T2_AD4P_SRCC_35 Sch=ck_io[12]
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { ck_io13 }]; #IO_L19N_T3_VREF_35 Sch=ck_io[13]

## ChipKit Inner Digital Header
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ck_io26 }]; #IO_L19P_T3_34 Sch=ck_io[26]
#set_property 