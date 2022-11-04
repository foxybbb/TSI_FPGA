--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: main_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 07 17:40:26 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm main -w -dir netgen/synthesis -ofmt vhdl -sim main.ngc main_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: main.ngc
-- Output file	: C:\Users\st75026\Desktop\FPGA\Lab_1\netgen\synthesis\main_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: main
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity main is
  port (
    y : out STD_LOGIC; 
    x1 : in STD_LOGIC := 'X'; 
    x2 : in STD_LOGIC := 'X'; 
    x3 : in STD_LOGIC := 'X'; 
    x4 : in STD_LOGIC := 'X' 
  );
end main;

architecture Structure of main is
  signal x1_IBUF_1 : STD_LOGIC; 
  signal x2_IBUF_3 : STD_LOGIC; 
  signal x3_IBUF_5 : STD_LOGIC; 
  signal x4_IBUF_7 : STD_LOGIC; 
  signal y_OBUF_9 : STD_LOGIC; 
begin
  y1 : LUT4
    generic map(
      INIT => X"84EE"
    )
    port map (
      I0 => x1_IBUF_1,
      I1 => x3_IBUF_5,
      I2 => x4_IBUF_7,
      I3 => x2_IBUF_3,
      O => y_OBUF_9
    );
  x1_IBUF : IBUF
    port map (
      I => x1,
      O => x1_IBUF_1
    );
  x2_IBUF : IBUF
    port map (
      I => x2,
      O => x2_IBUF_3
    );
  x3_IBUF : IBUF
    port map (
      I => x3,
      O => x3_IBUF_5
    );
  x4_IBUF : IBUF
    port map (
      I => x4,
      O => x4_IBUF_7
    );
  y_OBUF : OBUF
    port map (
      I => y_OBUF_9,
      O => y
    );

end Structure;

