
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity cnt4bit is

	port (-- Input signals
		CLK_IN : in STD_LOGIC;
		CLK_EN : in STD_LOGIC;
		-- Output signal
		D_OUT : out STD_LOGIC_VECTOR (3 downto 0)
	);

end cnt4bit;

architecture Structural of cnt4bit is
	signal D_OUT_TEMP : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
	process (CLK_IN) begin
		if rising_edge(CLK_IN) then
			if CLK_EN = '1' then
				D_OUT_TEMP(0) <= not(D_OUT_TEMP(0));
				D_OUT_TEMP(1) <= D_OUT_TEMP(0) xor D_OUT_TEMP(1);
				D_OUT_TEMP(2) <= ((D_OUT_TEMP(1) and D_OUT_TEMP(0)) xor D_OUT_TEMP(2));
				D_OUT_TEMP(3) <= ((D_OUT_TEMP(2) and (D_OUT_TEMP(1) and D_OUT_TEMP(0))) xor D_OUT_TEMP(3));
			end if;
		end if;
	end process;
	D_OUT(3 downto 0) <= D_OUT_TEMP(3 downto 0);
end Structural;