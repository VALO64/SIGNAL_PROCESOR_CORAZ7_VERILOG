-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Nov 10 18:33:45 2023
-- Host        : LAPTOP-S8QAS0D9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Oscar/TEC/Octavo_Semestre/FPGA/Unidad
--               2/P7_RECONSTRUCCION_DE_UNA_SENAL/PRACTICA_7_T_FINAL/PRACTICA_7_T_FINAL.srcs/sources_1/bd/design_1/ip/design_1_compuerta_xor_0_0/design_1_compuerta_xor_0_0_stub.vhdl}
-- Design      : design_1_compuerta_xor_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_compuerta_xor_0_0 is
  Port ( 
    adc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    nadc : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_compuerta_xor_0_0;

architecture stub of design_1_compuerta_xor_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc[7:0],nadc[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "compuerta_xor,Vivado 2019.1";
begin
end;
