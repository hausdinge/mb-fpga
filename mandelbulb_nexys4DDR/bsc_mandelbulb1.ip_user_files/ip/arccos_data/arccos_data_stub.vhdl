-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Dec 18 01:10:13 2023
-- Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/hausd/Dateien/Xilinx_proj/bsc_mandelbulb1/bsc_mandelbulb1.gen/sources_1/ip/arccos_data/arccos_data_stub.vhdl
-- Design      : arccos_data
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arccos_data is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end arccos_data;

architecture stub of arccos_data is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[8:0],clk,qspo_ce,qspo[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2022.2";
begin
end;