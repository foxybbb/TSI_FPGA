----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2022 13:05:56
-- Design Name: 
-- Module Name: eLCeLL - Structural
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity eLCeLL is
    Port ( ini : in STD_LOGIC;
           inCell : in STD_LOGIC;
           seed : in STD_LOGIC;
           outCell : out STD_LOGIC;
           feedBack : in STD_LOGIC;
           ckIn: in std_logic;
           xorEn: in std_logic );
end eLCeLL;

architecture Structural of eLCeLL is
signal Rg : std_logic :='0';
begin

process (ckIn) begin 
if rising_edge(ckIn) then
if ini='1' then
Rg <= seed;
else
Rg<= inCell;

	if xorEn='1' then
	outCell <= Rg xor feedBack;
	else
	outCell <= Rg;
	end if;
end if;
end if;


end process ;

end Structural;
