----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:10 11/29/2022 
-- Design Name: 
-- Module Name:    LFSR_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LFSR_top is
    Port ( clk : in  STD_LOGIC;
           sgm0 : out  STD_LOGIC_VECTOR (6 downto 0);
           sgm0_com : out  STD_LOGIC;
           sgm1 : out  STD_LOGIC_VECTOR (6 downto 0);
           sgm0_com : out  STD_LOGIC);
end LFSR_top;

architecture Behavioral of LFSR_top is
component eLCELL is
  port (
    InCell : in STD_LOGIC;
    isFeedBack : in STD_LOGIC;
    FeedBack : in STD_LOGIC;
    OutCell : out STD_LOGIC)
  ;
end component;
begin


end Behavioral;

