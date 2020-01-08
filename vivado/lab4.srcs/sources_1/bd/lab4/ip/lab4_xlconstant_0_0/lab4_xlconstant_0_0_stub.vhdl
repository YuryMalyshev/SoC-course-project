-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
-- Date        : Thu Nov 28 10:41:17 2019
-- Host        : lx19 running 64-bit SUSE Linux Enterprise Desktop 12 SP4
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yumaly/workspace/lab4/vivado/lab4.srcs/sources_1/bd/lab4/ip/lab4_xlconstant_0_0/lab4_xlconstant_0_0_stub.vhdl
-- Design      : lab4_xlconstant_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab4_xlconstant_0_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end lab4_xlconstant_0_0;

architecture stub of lab4_xlconstant_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_3_xlconstant,Vivado 2017.3";
begin
end;
