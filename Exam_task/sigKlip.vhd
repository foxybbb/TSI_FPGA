
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sigKlip is
    port (
        i_clk : in STD_LOGIC;
        i_clkEn : in STD_LOGIC;
        i_bypass : in STD_LOGIC;
        i_signal : in STD_LOGIC_VECTOR (11 downto 0);
        o_signal : out STD_LOGIC_VECTOR (11 downto 0));
end sigKlip;

architecture Structural of sigKlip is

begin

    process (i_clk)
    begin
        if rising_edge(i_clk) then
            if i_clkEn = '1' then
                if i_bypass = '1' then
                    o_signal <= i_signal;
                else
                    if i_signal > x"B33" then
                        o_signal <= x"B33";
                    elsif i_signal < x"265" then
                        o_signal <= x"B33";
                    else
                        o_signal <= i_signal;
                    end if;
                end if;
            end if;
        end if;
    end process;
end Structural;