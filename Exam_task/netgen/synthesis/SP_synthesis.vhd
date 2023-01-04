--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SP_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jan 04 15:35:16 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SP -w -dir netgen/synthesis -ofmt vhdl -sim SP.ngc SP_synthesis.vhd 
-- Device	: xc3s500e-4-ft256
-- Input file	: SP.ngc
-- Output file	: C:\Users\Ivan\Documents\git\TSI_FPGA\Exam_task\netgen\synthesis\SP_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SP
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity SP is
  port (
    clk : in STD_LOGIC := 'X'; 
    dack : out STD_LOGIC; 
    dapd : out STD_LOGIC; 
    daou : out STD_LOGIC_VECTOR ( 11 downto 0 ) 
  );
end SP;

architecture Structure of SP is
  component dIV
    port (
      rfd : out STD_LOGIC; 
      clk : in STD_LOGIC := 'X'; 
      dividend : in STD_LOGIC_VECTOR ( 11 downto 0 ); 
      quotient : out STD_LOGIC_VECTOR ( 11 downto 0 ); 
      divisor : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      fractional : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
    );
  end component;
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal dack_OBUF_6 : STD_LOGIC; 
  signal dack_OBUF1 : STD_LOGIC; 
  signal dapd_OBUF_21 : STD_LOGIC; 
  signal gen_Maccum_phase_acc_xor_7_11 : STD_LOGIC; 
  signal gen_Maccum_phase_acc_xor_7_111_23 : STD_LOGIC; 
  signal gen_Mrom_not0000_4_1 : STD_LOGIC; 
  signal gen_Mrom_varindex0000 : STD_LOGIC; 
  signal gen_Mrom_varindex00001_28 : STD_LOGIC; 
  signal gen_Mrom_varindex000010_29 : STD_LOGIC; 
  signal gen_Mrom_varindex0000101_30 : STD_LOGIC; 
  signal gen_Mrom_varindex000010_f5_31 : STD_LOGIC; 
  signal gen_Mrom_varindex000010_f6_32 : STD_LOGIC; 
  signal gen_Mrom_varindex000011_33 : STD_LOGIC; 
  signal gen_Mrom_varindex000012_34 : STD_LOGIC; 
  signal gen_Mrom_varindex000013_35 : STD_LOGIC; 
  signal gen_Mrom_varindex000014_36 : STD_LOGIC; 
  signal gen_Mrom_varindex00001_f5_37 : STD_LOGIC; 
  signal gen_Mrom_varindex00001_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00001_f6_39 : STD_LOGIC; 
  signal gen_Mrom_varindex00002_40 : STD_LOGIC; 
  signal gen_Mrom_varindex000021_41 : STD_LOGIC; 
  signal gen_Mrom_varindex000022_42 : STD_LOGIC; 
  signal gen_Mrom_varindex000023_43 : STD_LOGIC; 
  signal gen_Mrom_varindex000024_44 : STD_LOGIC; 
  signal gen_Mrom_varindex00002_f5_45 : STD_LOGIC; 
  signal gen_Mrom_varindex00002_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00002_f6_47 : STD_LOGIC; 
  signal gen_Mrom_varindex00003_48 : STD_LOGIC; 
  signal gen_Mrom_varindex000031_49 : STD_LOGIC; 
  signal gen_Mrom_varindex000032_50 : STD_LOGIC; 
  signal gen_Mrom_varindex000033_51 : STD_LOGIC; 
  signal gen_Mrom_varindex000034_52 : STD_LOGIC; 
  signal gen_Mrom_varindex00003_f5_53 : STD_LOGIC; 
  signal gen_Mrom_varindex00003_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00003_f6_55 : STD_LOGIC; 
  signal gen_Mrom_varindex00004_56 : STD_LOGIC; 
  signal gen_Mrom_varindex000041_57 : STD_LOGIC; 
  signal gen_Mrom_varindex000042_58 : STD_LOGIC; 
  signal gen_Mrom_varindex000043_59 : STD_LOGIC; 
  signal gen_Mrom_varindex00004_f5_60 : STD_LOGIC; 
  signal gen_Mrom_varindex00004_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00004_f6_62 : STD_LOGIC; 
  signal gen_Mrom_varindex00005_63 : STD_LOGIC; 
  signal gen_Mrom_varindex000051_64 : STD_LOGIC; 
  signal gen_Mrom_varindex000052_65 : STD_LOGIC; 
  signal gen_Mrom_varindex000053 : STD_LOGIC; 
  signal gen_Mrom_varindex00005_f5_67 : STD_LOGIC; 
  signal gen_Mrom_varindex00005_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00005_f6_69 : STD_LOGIC; 
  signal gen_Mrom_varindex00006_70 : STD_LOGIC; 
  signal gen_Mrom_varindex000061_71 : STD_LOGIC; 
  signal gen_Mrom_varindex000062_72 : STD_LOGIC; 
  signal gen_Mrom_varindex00006_f5_73 : STD_LOGIC; 
  signal gen_Mrom_varindex00006_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00006_f5_0_75 : STD_LOGIC; 
  signal gen_Mrom_varindex00006_f6_76 : STD_LOGIC; 
  signal gen_Mrom_varindex00007_77 : STD_LOGIC; 
  signal gen_Mrom_varindex000071_78 : STD_LOGIC; 
  signal gen_Mrom_varindex000072_79 : STD_LOGIC; 
  signal gen_Mrom_varindex00007_f5_80 : STD_LOGIC; 
  signal gen_Mrom_varindex00007_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00007_f5_0_82 : STD_LOGIC; 
  signal gen_Mrom_varindex00007_f6_83 : STD_LOGIC; 
  signal gen_Mrom_varindex00008_84 : STD_LOGIC; 
  signal gen_Mrom_varindex000081_85 : STD_LOGIC; 
  signal gen_Mrom_varindex000082_86 : STD_LOGIC; 
  signal gen_Mrom_varindex00008_f5_87 : STD_LOGIC; 
  signal gen_Mrom_varindex00008_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00008_f5_0_89 : STD_LOGIC; 
  signal gen_Mrom_varindex00008_f6_90 : STD_LOGIC; 
  signal gen_Mrom_varindex00009_91 : STD_LOGIC; 
  signal gen_Mrom_varindex000091_92 : STD_LOGIC; 
  signal gen_Mrom_varindex00009_f5_93 : STD_LOGIC; 
  signal gen_Mrom_varindex00009_f6_94 : STD_LOGIC; 
  signal gen_Mrom_varindex0000_f5_95 : STD_LOGIC; 
  signal gen_Mrom_varindex0000_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex0000_f6_97 : STD_LOGIC; 
  signal gen_Mrom_varindex0001 : STD_LOGIC; 
  signal gen_Mrom_varindex00011_99 : STD_LOGIC; 
  signal gen_Mrom_varindex000110_100 : STD_LOGIC; 
  signal gen_Mrom_varindex0001101_101 : STD_LOGIC; 
  signal gen_Mrom_varindex000110_f5_102 : STD_LOGIC; 
  signal gen_Mrom_varindex000110_f6_103 : STD_LOGIC; 
  signal gen_Mrom_varindex000111_104 : STD_LOGIC; 
  signal gen_Mrom_varindex000112_105 : STD_LOGIC; 
  signal gen_Mrom_varindex000113_106 : STD_LOGIC; 
  signal gen_Mrom_varindex000114_107 : STD_LOGIC; 
  signal gen_Mrom_varindex00011_f5_108 : STD_LOGIC; 
  signal gen_Mrom_varindex00011_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00011_f6_110 : STD_LOGIC; 
  signal gen_Mrom_varindex00012_111 : STD_LOGIC; 
  signal gen_Mrom_varindex000121_112 : STD_LOGIC; 
  signal gen_Mrom_varindex000122_113 : STD_LOGIC; 
  signal gen_Mrom_varindex000123_114 : STD_LOGIC; 
  signal gen_Mrom_varindex000124_115 : STD_LOGIC; 
  signal gen_Mrom_varindex00012_f5_116 : STD_LOGIC; 
  signal gen_Mrom_varindex00012_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00012_f6_118 : STD_LOGIC; 
  signal gen_Mrom_varindex00013_119 : STD_LOGIC; 
  signal gen_Mrom_varindex000131_120 : STD_LOGIC; 
  signal gen_Mrom_varindex000132_121 : STD_LOGIC; 
  signal gen_Mrom_varindex000133_122 : STD_LOGIC; 
  signal gen_Mrom_varindex000134_123 : STD_LOGIC; 
  signal gen_Mrom_varindex00013_f5_124 : STD_LOGIC; 
  signal gen_Mrom_varindex00013_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00013_f6_126 : STD_LOGIC; 
  signal gen_Mrom_varindex00014_127 : STD_LOGIC; 
  signal gen_Mrom_varindex000141_128 : STD_LOGIC; 
  signal gen_Mrom_varindex000142_129 : STD_LOGIC; 
  signal gen_Mrom_varindex000143_130 : STD_LOGIC; 
  signal gen_Mrom_varindex00014_f5_131 : STD_LOGIC; 
  signal gen_Mrom_varindex00014_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00014_f6_133 : STD_LOGIC; 
  signal gen_Mrom_varindex00015_134 : STD_LOGIC; 
  signal gen_Mrom_varindex000151_135 : STD_LOGIC; 
  signal gen_Mrom_varindex000152_136 : STD_LOGIC; 
  signal gen_Mrom_varindex000153 : STD_LOGIC; 
  signal gen_Mrom_varindex00015_f5_138 : STD_LOGIC; 
  signal gen_Mrom_varindex00015_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00015_f6_140 : STD_LOGIC; 
  signal gen_Mrom_varindex00016_141 : STD_LOGIC; 
  signal gen_Mrom_varindex000161_142 : STD_LOGIC; 
  signal gen_Mrom_varindex000162_143 : STD_LOGIC; 
  signal gen_Mrom_varindex00016_f5_144 : STD_LOGIC; 
  signal gen_Mrom_varindex00016_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00016_f5_0_146 : STD_LOGIC; 
  signal gen_Mrom_varindex00016_f6_147 : STD_LOGIC; 
  signal gen_Mrom_varindex00017_148 : STD_LOGIC; 
  signal gen_Mrom_varindex000171_149 : STD_LOGIC; 
  signal gen_Mrom_varindex000172_150 : STD_LOGIC; 
  signal gen_Mrom_varindex00017_f5_151 : STD_LOGIC; 
  signal gen_Mrom_varindex00017_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00017_f5_0_153 : STD_LOGIC; 
  signal gen_Mrom_varindex00017_f6_154 : STD_LOGIC; 
  signal gen_Mrom_varindex00018_155 : STD_LOGIC; 
  signal gen_Mrom_varindex000181_156 : STD_LOGIC; 
  signal gen_Mrom_varindex000182_157 : STD_LOGIC; 
  signal gen_Mrom_varindex00018_f5_158 : STD_LOGIC; 
  signal gen_Mrom_varindex00018_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex00018_f5_0_160 : STD_LOGIC; 
  signal gen_Mrom_varindex00018_f6_161 : STD_LOGIC; 
  signal gen_Mrom_varindex00019_162 : STD_LOGIC; 
  signal gen_Mrom_varindex000191_163 : STD_LOGIC; 
  signal gen_Mrom_varindex00019_f5_164 : STD_LOGIC; 
  signal gen_Mrom_varindex00019_f6_165 : STD_LOGIC; 
  signal gen_Mrom_varindex0001_f5_166 : STD_LOGIC; 
  signal gen_Mrom_varindex0001_f51 : STD_LOGIC; 
  signal gen_Mrom_varindex0001_f6_168 : STD_LOGIC; 
  signal gen_N5 : STD_LOGIC; 
  signal gen_phase_acc_1_1_204 : STD_LOGIC; 
  signal gen_phase_acc_4_1_208 : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_cy_0_rt_245 : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_cy_2_rt_248 : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_cy_6_rt_253 : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_lut_1_Q : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_lut_3_Q_256 : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_lut_4_Q_257 : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_lut_5_Q_258 : STD_LOGIC; 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_lut_7_Q_259 : STD_LOGIC; 
  signal sigPr02_o_signal_cmp_gt000020_272 : STD_LOGIC; 
  signal sigPr02_o_signal_cmp_gt0000213_273 : STD_LOGIC; 
  signal sigPr02_o_signal_cmp_gt000025_274 : STD_LOGIC; 
  signal sigPr02_o_signal_cmp_lt0000 : STD_LOGIC; 
  signal sigPr02_o_signal_mux0003_10_11 : STD_LOGIC; 
  signal sigPr02_o_signal_mux0003_1_11 : STD_LOGIC; 
  signal sigPr02_o_signal_mux0003_4_11 : STD_LOGIC; 
  signal sigPr02_o_signal_mux0003_5_11 : STD_LOGIC; 
  signal sigPr02_o_signal_mux0003_8_11 : STD_LOGIC; 
  signal sigPr02_o_signal_mux0003_9_11 : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_cy_3_rt_286 : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_cy_4_rt_288 : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_cy_7_rt_292 : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_cy_8_rt_294 : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_lut_10_Q : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_lut_1_Q : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_lut_2_Q : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_lut_5_Q : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_lut_6_Q : STD_LOGIC; 
  signal sigPr03_Madd_o_signal_add0000_lut_9_Q : STD_LOGIC; 
  signal NLW_sigPr03_Divider_rfd_UNCONNECTED : STD_LOGIC; 
  signal NLW_sigPr03_Divider_fractional_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_sigPr03_Divider_fractional_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_sigPr03_Divider_fractional_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_sigPr03_Divider_fractional_0_UNCONNECTED : STD_LOGIC; 
  signal gen_Mrom_not0000 : STD_LOGIC_VECTOR ( 5 downto 4 ); 
  signal gen_Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal gen_o_outReg : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal gen_o_outReg_mux0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal gen_phase_acc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sigPr01_Mcompar_o_signal_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal sigPr01_Mcompar_o_signal_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal sigPr01_o_signal : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal sigPr01_o_signal_mux0002 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal sigPr02_Mcompar_o_signal_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sigPr02_o_signal : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal sigPr03_Madd_o_signal_add0000_cy : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal sigPr03_divRes : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal sigPr03_o_signal : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal sigPr03_o_signal_add0000 : STD_LOGIC_VECTOR ( 11 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => dapd_OBUF_21
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  gen_phase_acc_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(7),
      Q => gen_phase_acc(7)
    );
  gen_phase_acc_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(6),
      Q => gen_phase_acc(6)
    );
  gen_phase_acc_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(5),
      Q => gen_phase_acc(5)
    );
  gen_phase_acc_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(4),
      Q => gen_phase_acc(4)
    );
  gen_phase_acc_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(3),
      Q => gen_phase_acc(3)
    );
  gen_phase_acc_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(2),
      Q => gen_phase_acc(2)
    );
  gen_phase_acc_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(1),
      Q => gen_phase_acc(1)
    );
  gen_phase_acc_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(0),
      Q => gen_phase_acc(0)
    );
  gen_Mrom_varindex000110_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex0001101_101,
      I1 => gen_Mrom_varindex000110_f5_102,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex000110_f6_103
    );
  gen_Mrom_varindex0001101 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => gen_phase_acc(4),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(3),
      O => gen_Mrom_varindex0001101_101
    );
  gen_Mrom_varindex000110_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000110_100,
      I1 => N1,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex000110_f5_102
    );
  gen_Mrom_varindex000110 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000110_100
    );
  gen_Mrom_varindex00019_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex0001101_101,
      I1 => gen_Mrom_varindex00019_f5_164,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00019_f6_165
    );
  gen_Mrom_varindex00019_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000191_163,
      I1 => gen_Mrom_varindex00019_162,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00019_f5_164
    );
  gen_Mrom_varindex000191 : LUT4
    generic map(
      INIT => X"666A"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000191_163
    );
  gen_Mrom_varindex00019 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(3),
      O => gen_Mrom_varindex00019_162
    );
  gen_Mrom_varindex00018_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00018_f51,
      I1 => gen_Mrom_varindex00018_f5_158,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00018_f6_161
    );
  gen_Mrom_varindex00018_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00018_f5_0_160,
      I1 => gen_Mrom_varindex000182_157,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00018_f51
    );
  gen_Mrom_varindex000183 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex000153
    );
  gen_Mrom_varindex000182 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000182_157
    );
  gen_Mrom_varindex00018_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000181_156,
      I1 => gen_Mrom_varindex00018_155,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00018_f5_158
    );
  gen_Mrom_varindex000181 : LUT4
    generic map(
      INIT => X"3637"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000181_156
    );
  gen_Mrom_varindex00018 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex00018_155
    );
  gen_Mrom_varindex00017_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00017_f51,
      I1 => gen_Mrom_varindex00017_f5_151,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00017_f6_154
    );
  gen_Mrom_varindex00017_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00017_f5_0_153,
      I1 => gen_Mrom_varindex000172_150,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00017_f51
    );
  gen_Mrom_varindex000172 : LUT4
    generic map(
      INIT => X"60E0"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000172_150
    );
  gen_Mrom_varindex00017_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000171_149,
      I1 => gen_Mrom_varindex00017_148,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00017_f5_151
    );
  gen_Mrom_varindex000171 : LUT4
    generic map(
      INIT => X"9198"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000171_149
    );
  gen_Mrom_varindex00017 : LUT4
    generic map(
      INIT => X"FC6C"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex00017_148
    );
  gen_Mrom_varindex00016_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00016_f51,
      I1 => gen_Mrom_varindex00016_f5_144,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00016_f6_147
    );
  gen_Mrom_varindex00016_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00016_f5_0_146,
      I1 => gen_Mrom_varindex000162_143,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00016_f51
    );
  gen_Mrom_varindex000162 : LUT4
    generic map(
      INIT => X"64A4"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000162_143
    );
  gen_Mrom_varindex00016_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000161_142,
      I1 => gen_Mrom_varindex00016_141,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00016_f5_144
    );
  gen_Mrom_varindex000161 : LUT4
    generic map(
      INIT => X"8E9E"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000161_142
    );
  gen_Mrom_varindex00016 : LUT4
    generic map(
      INIT => X"9CBC"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex00016_141
    );
  gen_Mrom_varindex00015_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00015_f51,
      I1 => gen_Mrom_varindex00015_f5_138,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00015_f6_140
    );
  gen_Mrom_varindex00015_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000153,
      I1 => gen_Mrom_varindex000152_136,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00015_f51
    );
  gen_Mrom_varindex000152 : LUT4
    generic map(
      INIT => X"16C6"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000152_136
    );
  gen_Mrom_varindex00015_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000151_135,
      I1 => gen_Mrom_varindex00015_134,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00015_f5_138
    );
  gen_Mrom_varindex000151 : LUT4
    generic map(
      INIT => X"49A3"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000151_135
    );
  gen_Mrom_varindex00015 : LUT4
    generic map(
      INIT => X"A8DE"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex00015_134
    );
  gen_Mrom_varindex00014_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00014_f51,
      I1 => gen_Mrom_varindex00014_f5_131,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00014_f6_133
    );
  gen_Mrom_varindex00014_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000143_130,
      I1 => gen_Mrom_varindex000142_129,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00014_f51
    );
  gen_Mrom_varindex000144 : LUT4
    generic map(
      INIT => X"9111"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000143_130
    );
  gen_Mrom_varindex000143 : LUT4
    generic map(
      INIT => X"0293"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000142_129
    );
  gen_Mrom_varindex00014_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000141_128,
      I1 => gen_Mrom_varindex00014_127,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00014_f5_131
    );
  gen_Mrom_varindex000142 : LUT4
    generic map(
      INIT => X"5994"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000141_128
    );
  gen_Mrom_varindex000141 : LUT4
    generic map(
      INIT => X"8CAD"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex00014_127
    );
  gen_Mrom_varindex00013_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00013_f51,
      I1 => gen_Mrom_varindex00013_f5_124,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00013_f6_126
    );
  gen_Mrom_varindex00013_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000134_123,
      I1 => gen_Mrom_varindex000133_122,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00013_f51
    );
  gen_Mrom_varindex000134 : LUT4
    generic map(
      INIT => X"1999"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000134_123
    );
  gen_Mrom_varindex000133 : LUT4
    generic map(
      INIT => X"207E"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000133_122
    );
  gen_Mrom_varindex00013_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000132_121,
      I1 => gen_Mrom_varindex000131_120,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00013_f5_124
    );
  gen_Mrom_varindex000132 : LUT4
    generic map(
      INIT => X"18DA"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000132_121
    );
  gen_Mrom_varindex000131 : LUT4
    generic map(
      INIT => X"BEEE"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000131_120
    );
  gen_Mrom_varindex00012_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00012_f51,
      I1 => gen_Mrom_varindex00012_f5_116,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00012_f6_118
    );
  gen_Mrom_varindex00012_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000124_115,
      I1 => gen_Mrom_varindex000123_114,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00012_f51
    );
  gen_Mrom_varindex000124 : LUT4
    generic map(
      INIT => X"3B31"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000124_115
    );
  gen_Mrom_varindex000123 : LUT4
    generic map(
      INIT => X"61E5"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000123_114
    );
  gen_Mrom_varindex00012_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000122_113,
      I1 => gen_Mrom_varindex000121_112,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00012_f5_116
    );
  gen_Mrom_varindex000122 : LUT4
    generic map(
      INIT => X"E137"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000122_113
    );
  gen_Mrom_varindex000121 : LUT4
    generic map(
      INIT => X"C98B"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000121_112
    );
  gen_Mrom_varindex00011_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00011_f51,
      I1 => gen_Mrom_varindex00011_f5_108,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex00011_f6_110
    );
  gen_Mrom_varindex00011_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000114_107,
      I1 => gen_Mrom_varindex000113_106,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00011_f51
    );
  gen_Mrom_varindex000114 : LUT4
    generic map(
      INIT => X"B993"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000114_107
    );
  gen_Mrom_varindex000113 : LUT4
    generic map(
      INIT => X"DC1D"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000113_106
    );
  gen_Mrom_varindex00011_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000112_105,
      I1 => gen_Mrom_varindex000111_104,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex00011_f5_108
    );
  gen_Mrom_varindex000112 : LUT4
    generic map(
      INIT => X"4D6A"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000112_105
    );
  gen_Mrom_varindex000111 : LUT4
    generic map(
      INIT => X"BFF6"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000111_104
    );
  gen_Mrom_varindex0001_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex0001_f51,
      I1 => gen_Mrom_varindex0001_f5_166,
      S => gen_phase_acc(5),
      O => gen_Mrom_varindex0001_f6_168
    );
  gen_Mrom_varindex0001_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00013_119,
      I1 => gen_Mrom_varindex00012_111,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex0001_f51
    );
  gen_Mrom_varindex00014 : LUT3
    generic map(
      INIT => X"79"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(1),
      O => gen_Mrom_varindex00013_119
    );
  gen_Mrom_varindex00013 : LUT4
    generic map(
      INIT => X"3D2E"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex00012_111
    );
  gen_Mrom_varindex0001_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00011_99,
      I1 => gen_Mrom_varindex0001,
      S => gen_phase_acc(4),
      O => gen_Mrom_varindex0001_f5_166
    );
  gen_Mrom_varindex00012 : LUT4
    generic map(
      INIT => X"A785"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex00011_99
    );
  gen_Mrom_varindex00011 : LUT4
    generic map(
      INIT => X"6162"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(3),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex0001
    );
  gen_Mrom_varindex000010_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex0000101_30,
      I1 => gen_Mrom_varindex000010_f5_31,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex000010_f6_32
    );
  gen_Mrom_varindex000010_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000010_29,
      I1 => N1,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex000010_f5_31
    );
  gen_Mrom_varindex00009_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex0000101_30,
      I1 => gen_Mrom_varindex00009_f5_93,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00009_f6_94
    );
  gen_Mrom_varindex00009_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000091_92,
      I1 => gen_Mrom_varindex00009_91,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00009_f5_93
    );
  gen_Mrom_varindex00008_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00008_f51,
      I1 => gen_Mrom_varindex00008_f5_87,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00008_f6_90
    );
  gen_Mrom_varindex00008_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00008_f5_0_89,
      I1 => gen_Mrom_varindex000082_86,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00008_f51
    );
  gen_Mrom_varindex00008_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000081_85,
      I1 => gen_Mrom_varindex00008_84,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00008_f5_87
    );
  gen_Mrom_varindex00007_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00007_f51,
      I1 => gen_Mrom_varindex00007_f5_80,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00007_f6_83
    );
  gen_Mrom_varindex00007_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00007_f5_0_82,
      I1 => gen_Mrom_varindex000072_79,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00007_f51
    );
  gen_Mrom_varindex00007_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000071_78,
      I1 => gen_Mrom_varindex00007_77,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00007_f5_80
    );
  gen_Mrom_varindex00006_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00006_f51,
      I1 => gen_Mrom_varindex00006_f5_73,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00006_f6_76
    );
  gen_Mrom_varindex00006_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00006_f5_0_75,
      I1 => gen_Mrom_varindex000062_72,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00006_f51
    );
  gen_Mrom_varindex00006_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000061_71,
      I1 => gen_Mrom_varindex00006_70,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00006_f5_73
    );
  gen_Mrom_varindex00005_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00005_f51,
      I1 => gen_Mrom_varindex00005_f5_67,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00005_f6_69
    );
  gen_Mrom_varindex00005_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000053,
      I1 => gen_Mrom_varindex000052_65,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00005_f51
    );
  gen_Mrom_varindex00005_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000051_64,
      I1 => gen_Mrom_varindex00005_63,
      S => gen_Mrom_not0000(4),
      O => gen_Mrom_varindex00005_f5_67
    );
  gen_Mrom_varindex00004_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00004_f51,
      I1 => gen_Mrom_varindex00004_f5_60,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00004_f6_62
    );
  gen_Mrom_varindex00004_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000043_59,
      I1 => gen_Mrom_varindex000042_58,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00004_f51
    );
  gen_Mrom_varindex00004_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000041_57,
      I1 => gen_Mrom_varindex00004_56,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00004_f5_60
    );
  gen_Mrom_varindex00003_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00003_f51,
      I1 => gen_Mrom_varindex00003_f5_53,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00003_f6_55
    );
  gen_Mrom_varindex00003_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000034_52,
      I1 => gen_Mrom_varindex000033_51,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00003_f51
    );
  gen_Mrom_varindex00003_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000032_50,
      I1 => gen_Mrom_varindex000031_49,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00003_f5_53
    );
  gen_Mrom_varindex00002_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00002_f51,
      I1 => gen_Mrom_varindex00002_f5_45,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00002_f6_47
    );
  gen_Mrom_varindex00002_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000024_44,
      I1 => gen_Mrom_varindex000023_43,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00002_f51
    );
  gen_Mrom_varindex00002_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000022_42,
      I1 => gen_Mrom_varindex000021_41,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00002_f5_45
    );
  gen_Mrom_varindex00001_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex00001_f51,
      I1 => gen_Mrom_varindex00001_f5_37,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex00001_f6_39
    );
  gen_Mrom_varindex00001_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000014_36,
      I1 => gen_Mrom_varindex000013_35,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00001_f51
    );
  gen_Mrom_varindex00001_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex000012_34,
      I1 => gen_Mrom_varindex000011_33,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex00001_f5_37
    );
  gen_Mrom_varindex0000_f6 : MUXF6
    port map (
      I0 => gen_Mrom_varindex0000_f51,
      I1 => gen_Mrom_varindex0000_f5_95,
      S => gen_Mrom_not0000(5),
      O => gen_Mrom_varindex0000_f6_97
    );
  gen_Mrom_varindex0000_f5_0 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00003_48,
      I1 => gen_Mrom_varindex00002_40,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex0000_f51
    );
  gen_Mrom_varindex0000_f5 : MUXF5
    port map (
      I0 => gen_Mrom_varindex00001_28,
      I1 => gen_Mrom_varindex0000,
      S => gen_Mrom_not0000_4_1,
      O => gen_Mrom_varindex0000_f5_95
    );
  gen_o_outReg_11 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(11),
      Q => gen_o_outReg(11)
    );
  gen_o_outReg_10 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(10),
      Q => gen_o_outReg(10)
    );
  gen_o_outReg_9 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(9),
      Q => gen_o_outReg(9)
    );
  gen_o_outReg_8 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(8),
      Q => gen_o_outReg(8)
    );
  gen_o_outReg_7 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(7),
      Q => gen_o_outReg(7)
    );
  gen_o_outReg_6 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(6),
      Q => gen_o_outReg(6)
    );
  gen_o_outReg_5 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(5),
      Q => gen_o_outReg(5)
    );
  gen_o_outReg_4 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(4),
      Q => gen_o_outReg(4)
    );
  gen_o_outReg_3 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(3),
      Q => gen_o_outReg(3)
    );
  gen_o_outReg_2 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(2),
      Q => gen_o_outReg(2)
    );
  gen_o_outReg_1 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(1),
      Q => gen_o_outReg(1)
    );
  gen_o_outReg_0 : FD
    port map (
      C => dack_OBUF_6,
      D => gen_o_outReg_mux0000(0),
      Q => gen_o_outReg(0)
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(2),
      DI => N1,
      S => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(3),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3)
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(1),
      DI => dapd_OBUF_21,
      S => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(2),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(2)
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_lut_2_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => gen_o_outReg(8),
      I1 => gen_o_outReg(9),
      I2 => gen_o_outReg(10),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(2)
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(0),
      DI => dapd_OBUF_21,
      S => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(1),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(1)
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => gen_o_outReg(4),
      I1 => gen_o_outReg(5),
      I2 => gen_o_outReg(6),
      I3 => gen_o_outReg(7),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(1)
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => dapd_OBUF_21,
      S => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(0),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(0)
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => gen_o_outReg(0),
      I1 => gen_o_outReg(1),
      I2 => gen_o_outReg(2),
      I3 => gen_o_outReg(3),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(0)
    );
  sigPr01_o_signal_11 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(11),
      Q => sigPr01_o_signal(11)
    );
  sigPr01_o_signal_10 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(10),
      Q => sigPr01_o_signal(10)
    );
  sigPr01_o_signal_9 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(9),
      Q => sigPr01_o_signal(9)
    );
  sigPr01_o_signal_8 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(8),
      Q => sigPr01_o_signal(8)
    );
  sigPr01_o_signal_7 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(7),
      Q => sigPr01_o_signal(7)
    );
  sigPr01_o_signal_6 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(6),
      Q => sigPr01_o_signal(6)
    );
  sigPr01_o_signal_5 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(5),
      Q => sigPr01_o_signal(5)
    );
  sigPr01_o_signal_4 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(4),
      Q => sigPr01_o_signal(4)
    );
  sigPr01_o_signal_3 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(3),
      Q => sigPr01_o_signal(3)
    );
  sigPr01_o_signal_2 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(2),
      Q => sigPr01_o_signal(2)
    );
  sigPr01_o_signal_1 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(1),
      Q => sigPr01_o_signal(1)
    );
  sigPr01_o_signal_0 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal_mux0002(0),
      Q => sigPr01_o_signal(0)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(6),
      DI => N1,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_7_Q_259,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(7)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => sigPr01_o_signal(10),
      I1 => sigPr01_o_signal(11),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_7_Q_259
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(5),
      DI => dapd_OBUF_21,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_cy_6_rt_253,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(6)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(4),
      DI => N1,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_5_Q_258,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(5)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => sigPr01_o_signal(7),
      I1 => sigPr01_o_signal(8),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_5_Q_258
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(3),
      DI => dapd_OBUF_21,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_4_Q_257,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(4)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sigPr01_o_signal(5),
      I1 => sigPr01_o_signal(6),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_4_Q_257
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(2),
      DI => N1,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_3_Q_256,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(3)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => sigPr01_o_signal(3),
      I1 => sigPr01_o_signal(4),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_3_Q_256
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(1),
      DI => dapd_OBUF_21,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_cy_2_rt_248,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(2)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(0),
      DI => N1,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_1_Q,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(1)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => dapd_OBUF_21,
      S => sigPr02_Mcompar_o_signal_cmp_lt0000_cy_0_rt_245,
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(0)
    );
  sigPr03_Madd_o_signal_add0000_xor_11_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(10),
      LI => sigPr03_divRes(11),
      O => sigPr03_o_signal_add0000(11)
    );
  sigPr03_Madd_o_signal_add0000_xor_10_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(9),
      LI => sigPr03_Madd_o_signal_add0000_lut_10_Q,
      O => sigPr03_o_signal_add0000(10)
    );
  sigPr03_Madd_o_signal_add0000_cy_10_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(9),
      DI => N1,
      S => sigPr03_Madd_o_signal_add0000_lut_10_Q,
      O => sigPr03_Madd_o_signal_add0000_cy(10)
    );
  sigPr03_Madd_o_signal_add0000_xor_9_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(8),
      LI => sigPr03_Madd_o_signal_add0000_lut_9_Q,
      O => sigPr03_o_signal_add0000(9)
    );
  sigPr03_Madd_o_signal_add0000_cy_9_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(8),
      DI => N1,
      S => sigPr03_Madd_o_signal_add0000_lut_9_Q,
      O => sigPr03_Madd_o_signal_add0000_cy(9)
    );
  sigPr03_Madd_o_signal_add0000_xor_8_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(7),
      LI => sigPr03_Madd_o_signal_add0000_cy_8_rt_294,
      O => sigPr03_o_signal_add0000(8)
    );
  sigPr03_Madd_o_signal_add0000_cy_8_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(7),
      DI => dapd_OBUF_21,
      S => sigPr03_Madd_o_signal_add0000_cy_8_rt_294,
      O => sigPr03_Madd_o_signal_add0000_cy(8)
    );
  sigPr03_Madd_o_signal_add0000_xor_7_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(6),
      LI => sigPr03_Madd_o_signal_add0000_cy_7_rt_292,
      O => sigPr03_o_signal_add0000(7)
    );
  sigPr03_Madd_o_signal_add0000_cy_7_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(6),
      DI => dapd_OBUF_21,
      S => sigPr03_Madd_o_signal_add0000_cy_7_rt_292,
      O => sigPr03_Madd_o_signal_add0000_cy(7)
    );
  sigPr03_Madd_o_signal_add0000_xor_6_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(5),
      LI => sigPr03_Madd_o_signal_add0000_lut_6_Q,
      O => sigPr03_o_signal_add0000(6)
    );
  sigPr03_Madd_o_signal_add0000_cy_6_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(5),
      DI => N1,
      S => sigPr03_Madd_o_signal_add0000_lut_6_Q,
      O => sigPr03_Madd_o_signal_add0000_cy(6)
    );
  sigPr03_Madd_o_signal_add0000_xor_5_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(4),
      LI => sigPr03_Madd_o_signal_add0000_lut_5_Q,
      O => sigPr03_o_signal_add0000(5)
    );
  sigPr03_Madd_o_signal_add0000_cy_5_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(4),
      DI => N1,
      S => sigPr03_Madd_o_signal_add0000_lut_5_Q,
      O => sigPr03_Madd_o_signal_add0000_cy(5)
    );
  sigPr03_Madd_o_signal_add0000_xor_4_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(3),
      LI => sigPr03_Madd_o_signal_add0000_cy_4_rt_288,
      O => sigPr03_o_signal_add0000(4)
    );
  sigPr03_Madd_o_signal_add0000_cy_4_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(3),
      DI => dapd_OBUF_21,
      S => sigPr03_Madd_o_signal_add0000_cy_4_rt_288,
      O => sigPr03_Madd_o_signal_add0000_cy(4)
    );
  sigPr03_Madd_o_signal_add0000_xor_3_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(2),
      LI => sigPr03_Madd_o_signal_add0000_cy_3_rt_286,
      O => sigPr03_o_signal_add0000(3)
    );
  sigPr03_Madd_o_signal_add0000_cy_3_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(2),
      DI => dapd_OBUF_21,
      S => sigPr03_Madd_o_signal_add0000_cy_3_rt_286,
      O => sigPr03_Madd_o_signal_add0000_cy(3)
    );
  sigPr03_Madd_o_signal_add0000_xor_2_Q : XORCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(1),
      LI => sigPr03_Madd_o_signal_add0000_lut_2_Q,
      O => sigPr03_o_signal_add0000(2)
    );
  sigPr03_Madd_o_signal_add0000_cy_2_Q : MUXCY
    port map (
      CI => sigPr03_Madd_o_signal_add0000_cy(1),
      DI => N1,
      S => sigPr03_Madd_o_signal_add0000_lut_2_Q,
      O => sigPr03_Madd_o_signal_add0000_cy(2)
    );
  sigPr03_Madd_o_signal_add0000_xor_1_Q : XORCY
    port map (
      CI => dapd_OBUF_21,
      LI => sigPr03_Madd_o_signal_add0000_lut_1_Q,
      O => sigPr03_o_signal_add0000(1)
    );
  sigPr03_Madd_o_signal_add0000_cy_1_Q : MUXCY
    port map (
      CI => dapd_OBUF_21,
      DI => N1,
      S => sigPr03_Madd_o_signal_add0000_lut_1_Q,
      O => sigPr03_Madd_o_signal_add0000_cy(1)
    );
  sigPr03_o_signal_11 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(11),
      Q => sigPr03_o_signal(11)
    );
  sigPr03_o_signal_10 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(10),
      Q => sigPr03_o_signal(10)
    );
  sigPr03_o_signal_9 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(9),
      Q => sigPr03_o_signal(9)
    );
  sigPr03_o_signal_8 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(8),
      Q => sigPr03_o_signal(8)
    );
  sigPr03_o_signal_7 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(7),
      Q => sigPr03_o_signal(7)
    );
  sigPr03_o_signal_6 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(6),
      Q => sigPr03_o_signal(6)
    );
  sigPr03_o_signal_5 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(5),
      Q => sigPr03_o_signal(5)
    );
  sigPr03_o_signal_4 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(4),
      Q => sigPr03_o_signal(4)
    );
  sigPr03_o_signal_3 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(3),
      Q => sigPr03_o_signal(3)
    );
  sigPr03_o_signal_2 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(2),
      Q => sigPr03_o_signal(2)
    );
  sigPr03_o_signal_1 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_o_signal_add0000(1),
      Q => sigPr03_o_signal(1)
    );
  sigPr03_o_signal_0 : FD
    port map (
      C => dack_OBUF_6,
      D => sigPr03_divRes(0),
      Q => sigPr03_o_signal(0)
    );
  gen_Maccum_phase_acc_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(0),
      O => gen_Result(1)
    );
  gen_Maccum_phase_acc_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      O => gen_Result(2)
    );
  gen_Maccum_phase_acc_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Result(3)
    );
  gen_Maccum_phase_acc_xor_4_12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_phase_acc(4),
      I1 => N5,
      O => gen_Result(4)
    );
  gen_Maccum_phase_acc_xor_5_11 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => gen_phase_acc(5),
      I1 => gen_phase_acc(4),
      I2 => gen_N5,
      O => gen_Result(5)
    );
  gen_o_outReg_mux0000_11_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(4),
      I2 => gen_phase_acc(5),
      I3 => gen_phase_acc(6),
      O => N2
    );
  gen_o_outReg_mux0000_11_Q : LUT4
    generic map(
      INIT => X"6C39"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(7),
      I2 => N3,
      I3 => N2,
      O => gen_o_outReg_mux0000(11)
    );
  sigPr02_o_signal_cmp_gt000025 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => sigPr01_o_signal(5),
      I1 => sigPr01_o_signal(4),
      I2 => sigPr01_o_signal(2),
      I3 => sigPr01_o_signal(3),
      O => sigPr02_o_signal_cmp_gt000025_274
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => dack_OBUF1
    );
  dack_OBUF : OBUF
    port map (
      I => dack_OBUF1,
      O => dack
    );
  dapd_OBUF : OBUF
    port map (
      I => dapd_OBUF_21,
      O => dapd
    );
  daou_11_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(11),
      O => daou(11)
    );
  daou_10_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(10),
      O => daou(10)
    );
  daou_9_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(9),
      O => daou(9)
    );
  daou_8_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(8),
      O => daou(8)
    );
  daou_7_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(7),
      O => daou(7)
    );
  daou_6_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(6),
      O => daou(6)
    );
  daou_5_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(5),
      O => daou(5)
    );
  daou_4_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(4),
      O => daou(4)
    );
  daou_3_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(3),
      O => daou(3)
    );
  daou_2_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(2),
      O => daou(2)
    );
  daou_1_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(1),
      O => daou(1)
    );
  daou_0_OBUF : OBUF
    port map (
      I => sigPr03_o_signal(0),
      O => daou(0)
    );
  sigPr02_o_signal_11 : FDS
    port map (
      C => dack_OBUF_6,
      D => sigPr01_o_signal(11),
      S => sigPr02_o_signal_cmp_lt0000,
      Q => sigPr02_o_signal(11)
    );
  sigPr02_o_signal_10 : FDR
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_1_11,
      R => sigPr02_o_signal_cmp_lt0000,
      Q => sigPr02_o_signal(10)
    );
  sigPr02_o_signal_mux0003_1_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => sigPr01_o_signal(11),
      I1 => sigPr01_o_signal(10),
      O => sigPr02_o_signal_mux0003_1_11
    );
  sigPr02_o_signal_9 : FDS
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_10_11,
      S => sigPr01_o_signal(9),
      Q => sigPr02_o_signal(9)
    );
  sigPr02_o_signal_8 : FDS
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_10_11,
      S => sigPr01_o_signal(8),
      Q => sigPr02_o_signal(8)
    );
  sigPr02_o_signal_7 : FDR
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_4_11,
      R => sigPr02_o_signal_cmp_lt0000,
      Q => sigPr02_o_signal(7)
    );
  sigPr02_o_signal_6 : FDR
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_5_11,
      R => sigPr02_o_signal_cmp_lt0000,
      Q => sigPr02_o_signal(6)
    );
  sigPr02_o_signal_5 : FDS
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_10_11,
      S => sigPr01_o_signal(5),
      Q => sigPr02_o_signal(5)
    );
  sigPr02_o_signal_4 : FDS
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_10_11,
      S => sigPr01_o_signal(4),
      Q => sigPr02_o_signal(4)
    );
  sigPr02_o_signal_3 : FDR
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_8_11,
      R => sigPr02_o_signal_cmp_lt0000,
      Q => sigPr02_o_signal(3)
    );
  sigPr02_o_signal_2 : FDR
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_9_11,
      R => sigPr02_o_signal_cmp_lt0000,
      Q => sigPr02_o_signal(2)
    );
  sigPr02_o_signal_1 : FDS
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_10_11,
      S => sigPr01_o_signal(1),
      Q => sigPr02_o_signal(1)
    );
  sigPr02_o_signal_0 : FDS
    port map (
      C => dack_OBUF_6,
      D => sigPr02_o_signal_mux0003_10_11,
      S => sigPr01_o_signal(0),
      Q => sigPr02_o_signal(0)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sigPr01_o_signal(9),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy_6_rt_253
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sigPr01_o_signal(2),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy_2_rt_248
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sigPr01_o_signal(0),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_cy_0_rt_245
    );
  sigPr03_Madd_o_signal_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sigPr03_divRes(8),
      O => sigPr03_Madd_o_signal_add0000_cy_8_rt_294
    );
  sigPr03_Madd_o_signal_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sigPr03_divRes(7),
      O => sigPr03_Madd_o_signal_add0000_cy_7_rt_292
    );
  sigPr03_Madd_o_signal_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sigPr03_divRes(4),
      O => sigPr03_Madd_o_signal_add0000_cy_4_rt_288
    );
  sigPr03_Madd_o_signal_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sigPr03_divRes(3),
      O => sigPr03_Madd_o_signal_add0000_cy_3_rt_286
    );
  gen_Mrom_varindex00018_f5_01 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex00018_f5_0_160
    );
  gen_Mrom_varindex00017_f5_01 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex00017_f5_0_153
    );
  gen_Mrom_varindex00016_f5_01 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex00016_f5_0_146
    );
  gen_Mrom_varindex000010 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000010_29
    );
  gen_Mrom_varindex000091 : LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000091_92
    );
  gen_Mrom_varindex000082 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000082_86
    );
  gen_Mrom_varindex000081 : LUT4
    generic map(
      INIT => X"EA6A"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000081_85
    );
  gen_Mrom_varindex00008 : LUT4
    generic map(
      INIT => X"ABFF"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex00008_84
    );
  gen_Mrom_varindex000072 : LUT4
    generic map(
      INIT => X"1154"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000072_79
    );
  gen_Mrom_varindex000071 : LUT4
    generic map(
      INIT => X"1989"
    )
    port map (
      I0 => gen_phase_acc(1),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000071_78
    );
  gen_Mrom_varindex00007 : LUT4
    generic map(
      INIT => X"1F3D"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex00007_77
    );
  gen_Mrom_varindex000062 : LUT4
    generic map(
      INIT => X"4436"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000062_72
    );
  gen_Mrom_varindex000061 : LUT4
    generic map(
      INIT => X"3F83"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000061_71
    );
  gen_Mrom_varindex00006 : LUT4
    generic map(
      INIT => X"3D39"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex00006_70
    );
  gen_Mrom_varindex000052 : LUT4
    generic map(
      INIT => X"3968"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000052_65
    );
  gen_Mrom_varindex000051 : LUT4
    generic map(
      INIT => X"C91A"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000051_64
    );
  gen_Mrom_varindex00005 : LUT4
    generic map(
      INIT => X"49DD"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex00005_63
    );
  gen_Mrom_varindex000044 : LUT4
    generic map(
      INIT => X"8889"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000043_59
    );
  gen_Mrom_varindex000043 : LUT4
    generic map(
      INIT => X"C908"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000042_58
    );
  gen_Mrom_varindex000042 : LUT4
    generic map(
      INIT => X"7906"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000041_57
    );
  gen_Mrom_varindex000041 : LUT4
    generic map(
      INIT => X"82F3"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex00004_56
    );
  gen_Mrom_varindex000034 : LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000034_52
    );
  gen_Mrom_varindex000033 : LUT4
    generic map(
      INIT => X"4CCA"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex000033_51
    );
  gen_Mrom_varindex000032 : LUT4
    generic map(
      INIT => X"5B42"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000032_50
    );
  gen_Mrom_varindex000031 : LUT4
    generic map(
      INIT => X"36FF"
    )
    port map (
      I0 => gen_phase_acc(0),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000031_49
    );
  gen_Mrom_varindex000024 : LUT4
    generic map(
      INIT => X"BF10"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000024_44
    );
  gen_Mrom_varindex000023 : LUT4
    generic map(
      INIT => X"C786"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000023_43
    );
  gen_Mrom_varindex000022 : LUT4
    generic map(
      INIT => X"EA93"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(2),
      O => gen_Mrom_varindex000022_42
    );
  gen_Mrom_varindex000021 : LUT4
    generic map(
      INIT => X"89B3"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000021_41
    );
  gen_Mrom_varindex000014 : LUT4
    generic map(
      INIT => X"AA97"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000014_36
    );
  gen_Mrom_varindex000013 : LUT4
    generic map(
      INIT => X"B83B"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000013_35
    );
  gen_Mrom_varindex000012 : LUT4
    generic map(
      INIT => X"56B2"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex000012_34
    );
  gen_Mrom_varindex000011 : LUT4
    generic map(
      INIT => X"6FFD"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(3),
      O => gen_Mrom_varindex000011_33
    );
  gen_Mrom_varindex00003 : LUT4
    generic map(
      INIT => X"4EE6"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(1),
      I2 => gen_phase_acc(2),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex00002_40
    );
  gen_Mrom_varindex00002 : LUT4
    generic map(
      INIT => X"F207"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      I3 => gen_phase_acc(0),
      O => gen_Mrom_varindex00001_28
    );
  gen_Mrom_varindex00001 : LUT4
    generic map(
      INIT => X"2686"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(0),
      I3 => gen_phase_acc(1),
      O => gen_Mrom_varindex0000
    );
  gen_Mrom_varindex00004 : LUT3
    generic map(
      INIT => X"9E"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(1),
      O => gen_Mrom_varindex00003_48
    );
  gen_Mrom_varindex0000101 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      I2 => gen_phase_acc(4),
      O => gen_Mrom_varindex0000101_30
    );
  gen_Mrom_varindex00009 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex00009_91
    );
  gen_Mrom_varindex000083 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex000053
    );
  gen_Mrom_varindex00008_f5_01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex00008_f5_0_89
    );
  gen_Mrom_varindex00007_f5_01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex00007_f5_0_82
    );
  gen_Mrom_varindex00006_f5_01 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gen_phase_acc(3),
      I1 => gen_phase_acc(2),
      O => gen_Mrom_varindex00006_f5_0_75
    );
  sigPr01_o_signal_mux0002_9_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(9),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(9)
    );
  sigPr01_o_signal_mux0002_8_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(8),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(8)
    );
  sigPr01_o_signal_mux0002_7_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(7),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(7)
    );
  sigPr01_o_signal_mux0002_6_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(6),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(6)
    );
  sigPr01_o_signal_mux0002_5_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(5),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(5)
    );
  sigPr01_o_signal_mux0002_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(4),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(4)
    );
  sigPr01_o_signal_mux0002_3_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(3),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(3)
    );
  sigPr01_o_signal_mux0002_2_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(2),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(2)
    );
  sigPr01_o_signal_mux0002_1_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(1),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(1)
    );
  sigPr01_o_signal_mux0002_11_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(11),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(11)
    );
  sigPr01_o_signal_mux0002_10_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(10),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(10)
    );
  sigPr01_o_signal_mux0002_0_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => gen_o_outReg(0),
      I1 => sigPr01_Mcompar_o_signal_cmp_lt0000_cy(3),
      O => sigPr01_o_signal_mux0002(0)
    );
  sigPr02_o_signal_cmp_gt0000213 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => sigPr01_o_signal(9),
      I1 => sigPr01_o_signal(8),
      I2 => sigPr02_o_signal_cmp_gt000020_272,
      I3 => sigPr02_o_signal_cmp_gt000025_274,
      O => sigPr02_o_signal_cmp_gt0000213_273
    );
  sigPr02_o_signal_mux0003_4_111 : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => sigPr01_o_signal(7),
      I1 => sigPr01_o_signal(10),
      I2 => sigPr01_o_signal(11),
      I3 => sigPr02_o_signal_cmp_gt0000213_273,
      O => sigPr02_o_signal_mux0003_4_11
    );
  sigPr02_o_signal_mux0003_5_111 : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => sigPr01_o_signal(6),
      I1 => sigPr01_o_signal(10),
      I2 => sigPr01_o_signal(11),
      I3 => sigPr02_o_signal_cmp_gt0000213_273,
      O => sigPr02_o_signal_mux0003_5_11
    );
  sigPr02_o_signal_mux0003_8_111 : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => sigPr01_o_signal(3),
      I1 => sigPr01_o_signal(10),
      I2 => sigPr01_o_signal(11),
      I3 => sigPr02_o_signal_cmp_gt0000213_273,
      O => sigPr02_o_signal_mux0003_8_11
    );
  sigPr02_o_signal_mux0003_9_111 : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => sigPr01_o_signal(2),
      I1 => sigPr01_o_signal(10),
      I2 => sigPr01_o_signal(11),
      I3 => sigPr02_o_signal_cmp_gt0000213_273,
      O => sigPr02_o_signal_mux0003_9_11
    );
  sigPr02_o_signal_mux0003_2_111 : LUT4
    generic map(
      INIT => X"CF8F"
    )
    port map (
      I0 => sigPr01_o_signal(10),
      I1 => sigPr01_o_signal(11),
      I2 => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(7),
      I3 => sigPr02_o_signal_cmp_gt0000213_273,
      O => sigPr02_o_signal_mux0003_10_11
    );
  gen_Mmux_o_outReg_mux0000_2_f5 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex0001_f6_168,
      I3 => gen_Mrom_varindex0000_f6_97,
      O => gen_o_outReg_mux0000(0)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_0 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex000110_f6_103,
      I3 => gen_Mrom_varindex000010_f6_32,
      O => gen_o_outReg_mux0000(10)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_1 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00011_f6_110,
      I3 => gen_Mrom_varindex00001_f6_39,
      O => gen_o_outReg_mux0000(1)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_2 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00012_f6_118,
      I3 => gen_Mrom_varindex00002_f6_47,
      O => gen_o_outReg_mux0000(2)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_3 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00013_f6_126,
      I3 => gen_Mrom_varindex00003_f6_55,
      O => gen_o_outReg_mux0000(3)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_4 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00014_f6_133,
      I3 => gen_Mrom_varindex00004_f6_62,
      O => gen_o_outReg_mux0000(4)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_5 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00015_f6_140,
      I3 => gen_Mrom_varindex00005_f6_69,
      O => gen_o_outReg_mux0000(5)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_6 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00016_f6_147,
      I3 => gen_Mrom_varindex00006_f6_76,
      O => gen_o_outReg_mux0000(6)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_7 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00017_f6_154,
      I3 => gen_Mrom_varindex00007_f6_83,
      O => gen_o_outReg_mux0000(7)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_8 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00018_f6_161,
      I3 => gen_Mrom_varindex00008_f6_90,
      O => gen_o_outReg_mux0000(8)
    );
  gen_Mmux_o_outReg_mux0000_2_f5_9 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => gen_phase_acc(7),
      I1 => gen_phase_acc(6),
      I2 => gen_Mrom_varindex00019_f6_165,
      I3 => gen_Mrom_varindex00009_f6_94,
      O => gen_o_outReg_mux0000(9)
    );
  gen_Maccum_phase_acc_xor_6_12 : LUT4
    generic map(
      INIT => X"A6AA"
    )
    port map (
      I0 => gen_phase_acc(6),
      I1 => gen_phase_acc(5),
      I2 => gen_N5,
      I3 => gen_phase_acc(4),
      O => gen_Result(6)
    );
  gen_phase_acc_4_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(4),
      Q => gen_phase_acc_4_1_208
    );
  gen_phase_acc_1_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => dack_OBUF_6,
      D => gen_Result(1),
      Q => gen_phase_acc_1_1_204
    );
  dack_OBUF_BUFG : BUFG
    port map (
      I => dack_OBUF1,
      O => dack_OBUF_6
    );
  sigPr01_Mcompar_o_signal_cmp_lt0000_lut_3_INV_0 : INV
    port map (
      I => gen_o_outReg(11),
      O => sigPr01_Mcompar_o_signal_cmp_lt0000_lut(3)
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_cy_7_inv_INV_0 : INV
    port map (
      I => sigPr02_Mcompar_o_signal_cmp_lt0000_cy(7),
      O => sigPr02_o_signal_cmp_lt0000
    );
  sigPr02_Mcompar_o_signal_cmp_lt0000_lut_1_INV_0 : INV
    port map (
      I => sigPr01_o_signal(1),
      O => sigPr02_Mcompar_o_signal_cmp_lt0000_lut_1_Q
    );
  sigPr03_Madd_o_signal_add0000_lut_10_INV_0 : INV
    port map (
      I => sigPr03_divRes(10),
      O => sigPr03_Madd_o_signal_add0000_lut_10_Q
    );
  sigPr03_Madd_o_signal_add0000_lut_9_INV_0 : INV
    port map (
      I => sigPr03_divRes(9),
      O => sigPr03_Madd_o_signal_add0000_lut_9_Q
    );
  sigPr03_Madd_o_signal_add0000_lut_6_INV_0 : INV
    port map (
      I => sigPr03_divRes(6),
      O => sigPr03_Madd_o_signal_add0000_lut_6_Q
    );
  sigPr03_Madd_o_signal_add0000_lut_5_INV_0 : INV
    port map (
      I => sigPr03_divRes(5),
      O => sigPr03_Madd_o_signal_add0000_lut_5_Q
    );
  sigPr03_Madd_o_signal_add0000_lut_2_INV_0 : INV
    port map (
      I => sigPr03_divRes(2),
      O => sigPr03_Madd_o_signal_add0000_lut_2_Q
    );
  sigPr03_Madd_o_signal_add0000_lut_1_INV_0 : INV
    port map (
      I => sigPr03_divRes(1),
      O => sigPr03_Madd_o_signal_add0000_lut_1_Q
    );
  gen_Mrom_not0000_5_1_INV_0 : INV
    port map (
      I => gen_phase_acc(5),
      O => gen_Mrom_not0000(5)
    );
  gen_Mrom_not0000_4_1_INV_0 : INV
    port map (
      I => gen_phase_acc_4_1_208,
      O => gen_Mrom_not0000(4)
    );
  gen_Result_0_1_INV_0 : INV
    port map (
      I => gen_phase_acc(0),
      O => gen_Result(0)
    );
  gen_Mrom_not0000_4_1_1_INV_0 : INV
    port map (
      I => gen_phase_acc_4_1_208,
      O => gen_Mrom_not0000_4_1
    );
  gen_Maccum_phase_acc_xor_7_111 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => gen_phase_acc(6),
      I1 => gen_N5,
      I2 => gen_phase_acc(5),
      I3 => gen_phase_acc(4),
      O => gen_Maccum_phase_acc_xor_7_11
    );
  gen_Maccum_phase_acc_xor_7_112 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => gen_N5,
      I1 => gen_phase_acc(5),
      I2 => gen_phase_acc(4),
      I3 => gen_phase_acc(6),
      O => gen_Maccum_phase_acc_xor_7_111_23
    );
  gen_Maccum_phase_acc_xor_7_11_f5 : MUXF5
    port map (
      I0 => gen_Maccum_phase_acc_xor_7_111_23,
      I1 => gen_Maccum_phase_acc_xor_7_11,
      S => gen_phase_acc(7),
      O => gen_Result(7)
    );
  gen_o_outReg_mux0000_11_SW1 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => gen_phase_acc(2),
      I1 => gen_phase_acc(4),
      I2 => gen_phase_acc(5),
      I3 => gen_phase_acc(6),
      LO => N3
    );
  gen_Maccum_phase_acc_xor_4_111 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => gen_phase_acc_1_1_204,
      I1 => gen_phase_acc(0),
      I2 => gen_phase_acc(3),
      I3 => gen_phase_acc(2),
      LO => N5,
      O => gen_N5
    );
  sigPr02_o_signal_cmp_gt000020 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sigPr01_o_signal(7),
      I1 => sigPr01_o_signal(6),
      LO => sigPr02_o_signal_cmp_gt000020_272
    );
  sigPr03_Divider : dIV
    port map (
      rfd => NLW_sigPr03_Divider_rfd_UNCONNECTED,
      clk => dack_OBUF_6,
      dividend(11) => sigPr02_o_signal(11),
      dividend(10) => sigPr02_o_signal(10),
      dividend(9) => sigPr02_o_signal(9),
      dividend(8) => sigPr02_o_signal(8),
      dividend(7) => sigPr02_o_signal(7),
      dividend(6) => sigPr02_o_signal(6),
      dividend(5) => sigPr02_o_signal(5),
      dividend(4) => sigPr02_o_signal(4),
      dividend(3) => sigPr02_o_signal(3),
      dividend(2) => sigPr02_o_signal(2),
      dividend(1) => sigPr02_o_signal(1),
      dividend(0) => sigPr02_o_signal(0),
      quotient(11) => sigPr03_divRes(11),
      quotient(10) => sigPr03_divRes(10),
      quotient(9) => sigPr03_divRes(9),
      quotient(8) => sigPr03_divRes(8),
      quotient(7) => sigPr03_divRes(7),
      quotient(6) => sigPr03_divRes(6),
      quotient(5) => sigPr03_divRes(5),
      quotient(4) => sigPr03_divRes(4),
      quotient(3) => sigPr03_divRes(3),
      quotient(2) => sigPr03_divRes(2),
      quotient(1) => sigPr03_divRes(1),
      quotient(0) => sigPr03_divRes(0),
      divisor(3) => dapd_OBUF_21,
      divisor(2) => N1,
      divisor(1) => dapd_OBUF_21,
      divisor(0) => N1,
      fractional(3) => NLW_sigPr03_Divider_fractional_3_UNCONNECTED,
      fractional(2) => NLW_sigPr03_Divider_fractional_2_UNCONNECTED,
      fractional(1) => NLW_sigPr03_Divider_fractional_1_UNCONNECTED,
      fractional(0) => NLW_sigPr03_Divider_fractional_0_UNCONNECTED
    );

end Structure;

-- synthesis translate_on
