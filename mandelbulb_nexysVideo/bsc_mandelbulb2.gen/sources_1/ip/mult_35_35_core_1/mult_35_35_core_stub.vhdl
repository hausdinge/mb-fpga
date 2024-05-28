-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Feb 26 03:56:45 2024
-- Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/hausd/Dateien/Xilinx_proj/bsc_mandelbulb2/bsc_mandelbulb2.gen/sources_1/ip/mult_35_35_core_1/mult_35_35_core_stub.vhdl
-- Design      : mult_35_35_core
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_35_35_core is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 34 downto 0 );
    B : in STD_LOGIC_VECTOR ( 34 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 69 downto 0 )
  );

end mult_35_35_core;

architecture stub of mult_35_35_core is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[34:0],B[34:0],CE,P[69:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_18,Vivado 2022.2";
begin
end;
