--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: main_map.vhd
-- /___/   /\     Timestamp: Fri Oct 07 16:59:06 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf main.pcf -rpw 100 -tpw 0 -ar Structure -tm main -w -dir netgen/map -ofmt vhdl -sim main_map.ncd main_map.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: main_map.ncd
-- Output file	: C:\Users\st75026\Desktop\FPGA\Lab_1\netgen\map\main_map.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal x1_IBUF_21 : STD_LOGIC; 
  signal x2_IBUF_22 : STD_LOGIC; 
  signal x3_IBUF_23 : STD_LOGIC; 
  signal x4_IBUF_24 : STD_LOGIC; 
  signal y_O : STD_LOGIC; 
  signal x1_INBUF : STD_LOGIC; 
  signal x2_INBUF : STD_LOGIC; 
  signal x3_INBUF : STD_LOGIC; 
  signal x4_INBUF : STD_LOGIC; 
  signal y_OBUF_66 : STD_LOGIC; 
begin
  y_OBUF : X_OBUF
    port map (
      I => y_O,
      O => y
    );
  x1_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x1,
      O => x1_INBUF
    );
  x2_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x2,
      O => x2_INBUF
    );
  x3_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x3,
      O => x3_INBUF
    );
  x3_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x3_INBUF,
      O => x3_IBUF_23
    );
  x4_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x4,
      O => x4_INBUF
    );
  x1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x1_INBUF,
      O => x1_IBUF_21
    );
  x2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x2_INBUF,
      O => x2_IBUF_22
    );
  x4_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => x4_INBUF,
      O => x4_IBUF_24
    );
  y_or00001 : X_LUT4
    generic map(
      INIT => X"84EE"
    )
    port map (
      ADR0 => x1_IBUF_21,
      ADR1 => x3_IBUF_23,
      ADR2 => x4_IBUF_24,
      ADR3 => x2_IBUF_22,
      O => y_OBUF_66
    );
  y_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => y_OBUF_66,
      O => y_O
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

