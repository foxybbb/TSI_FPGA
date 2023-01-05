
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use ieee.numeric_std.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sigDiv is
	port (
		i_clk : in STD_LOGIC;
		i_clkEn : in STD_LOGIC;
		i_bypass : in STD_LOGIC;
		i_signal : in STD_LOGIC_VECTOR (11 downto 0);
		o_signal : out STD_LOGIC_VECTOR (11 downto 0));
end sigDiv;

architecture Structural of sigDiv is
	component dIV
		port (
			clk : in STD_LOGIC;
			rfd : out STD_LOGIC;
			dividend : in STD_LOGIC_VECTOR(11 downto 0);
			divisor : in STD_LOGIC_VECTOR(3 downto 0);
			quotient : out STD_LOGIC_VECTOR(11 downto 0);
			fractional : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	signal divRes : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";
begin

	Divider : dIV
	port map(
		clk => i_clk,
		dividend => i_signal,
		divisor => x"5",
		quotient => divRes);

	process (i_clk) begin
		if rising_edge(i_clk) then
			if i_clkEn = '1' then
				if i_bypass = '1' then
					o_signal <= i_signal;
				else
					o_signal <= STD_LOGIC_VECTOR(unsigned(divRes) + x"666");
					--o_signal <= STD_LOGIC_VECTOR((to_unsigned((i_signal)/div),8) + x"666");
				end if;
			end if;
		end if;
	end process;

end Structural;