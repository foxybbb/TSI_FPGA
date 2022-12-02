----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:50:50 11/28/2022 
-- Design Name: 
-- Module Name:    eLCeLL - Structural 
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eLCeLL is
    port (
        InCell : in STD_LOGIC;
        isFeedBack : in STD_LOGIC;
        FeedBack : in STD_LOGIC;
        OutCell : out STD_LOGIC);
end eLCeLL;

architecture Structural of eLCeLL is

begin
    OutCell <= InCell xor FeedBack when isFeedBack = '1' else
        InCell when isFeedBack = '0';

end Structural;