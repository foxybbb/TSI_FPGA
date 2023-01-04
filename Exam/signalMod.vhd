
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.


entity signalMod is
    port (
        i_clk : in STD_LOGIC;
        i_bypass : in STD_LOGIC;
        i_signal : in STD_LOGIC_VECTOR (11 downto 0);
        o_signal : out STD_LOGIC_VECTOR (11 downto 0));
end signalMod;

architecture Structural of signalMod is
begin
    process (i_clk) begin
        if rising_edge(i_clk) then
            if i_bypass = '1' then
                o_signal <= i_signal;
            else
                if i_signal < x"7FF" then
                    o_signal <= STD_LOGIC_VECTOR(X"FFF" - unsigned(i_signal));
                
					 else
						  o_signal <= i_signal;
                end if;
					
            end if;
        end if;
    end process;


end Structural;