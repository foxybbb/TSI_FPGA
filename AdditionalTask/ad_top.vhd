----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:42:31 11/03/2022 
-- Design Name: 
-- Module Name:    ad_top - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity ad_top is
    port (
        ckIn : in STD_LOGIC;
        leds : out STD_LOGIC_VECTOR (7 downto 0));
end ad_top;

architecture Behavioral of ad_top is
--    component frqDivN
--        port (
--            ck : in STD_LOGIC;
--            ckDiv : out STD_LOGIC);
--    end component;

    component bufg
        port (
            i : in STD_LOGIC;
            o : out STD_LOGIC
        );
    end component;
    signal ckMain : STD_LOGIC := '0';
    signal TempIn : STD_LOGIC := '0';
    signal TempLeds : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
begin

    InCk : bufg port map(
        i => ckIn,
        o => ckMain);
--    freqDiv : frqDivN port map(
--        ck => ckMain,
--        ckDiv => TempIn
--    );
	 
    process (ckMain)
    begin
        if rising_edge(ckMain) then
            TempLeds(7 downto 0) <= TempLeds(6 downto 0) & not(TempLeds(7));
        end if;
    end process;

process (ckMain)
begin


end process;
leds(7 downto 0) <= TempLeds(7 downto 0);
end Behavioral;