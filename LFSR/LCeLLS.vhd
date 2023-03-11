----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2022 01:09:18
-- Design Name: 
-- Module Name: LFSR - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCeLLS is
    Port ( ck : in STD_LOGIC;
           sgm : out STD_LOGIC_VECTOR (14 downto 0);
           leds : out STD_LOGIC_VECTOR (5 downto 0);
           sgm_com : out STD_LOGIC);
end LCeLLS;

architecture Structural of LCeLLS is

component eLCeLL is
    Port ( ini : in STD_LOGIC;
           inCell : in STD_LOGIC;
           seed : in STD_LOGIC;
           outCell : out STD_LOGIC;
           feedBack : in STD_LOGIC;
           ckIn: in std_logic;
           xorEn: in std_logic );
end component;

constant SEED : std_logic_vector(5 downto 0) := "110101";
signal delayReg : std_logic_vector(6 downto 0) := "1111111";
signal tmp : std_logic_vector(5 downto 0) := "000000";

begin
process (ck) begin 
if rising_edge(ck) then

delayReg(6 downto 0)<= delayReg(5 downto 0) & '0';
end if;

end process;

leds <= tmp;
sgm_com <= '0';
sgm (14 downto 0) <= sxt(delayReg,15);

LFSR_1 : eLCeLL port map(ini => delayReg(0),inCell =>tmp(5),seed=> SEED(5),outCell => tmp(4),feedBack => tmp(5),ckIn => ck,xorEn => '0');
LFSR_2 : eLCeLL port map(ini => delayReg(0),inCell =>tmp(4),seed=> SEED(4),outCell => tmp(3),feedBack => tmp(5),ckIn => ck,xorEn => '0');
LFSR_3 : eLCeLL port map(ini => delayReg(0),inCell =>tmp(3),seed=> SEED(3),outCell => tmp(2),feedBack => tmp(5),ckIn => ck,xorEn => '0');
LFSR_4 : eLCeLL port map(ini => delayReg(0),inCell =>tmp(2),seed=> SEED(2),outCell => tmp(1),feedBack => tmp(5),ckIn => ck,xorEn => '0');
LFSR_6 : eLCeLL port map(ini => delayReg(0),inCell =>tmp(1),seed=> SEED(1),outCell => tmp(0),feedBack => tmp(5),ckIn => ck,xorEn => '0');
LFSR_5 : eLCeLL port map(ini => delayReg(0),inCell =>tmp(0),seed=> SEED(0),outCell => tmp(5),feedBack => tmp(5),ckIn => ck,xorEn => '0');

end Structural;
