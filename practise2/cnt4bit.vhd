----------------------------------------------------------------------------------

--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity cnt4bit is

	port (-- Input signals
		ckIn : in STD_LOGIC;
		ckEn : in STD_LOGIC;

		-- Output signal
		D0 : out STD_LOGIC;
		D1 : out STD_LOGIC;
		D2 : out STD_LOGIC;
		D3 : out STD_LOGIC
	);

end cnt4bit;

architecture Structural of cnt4bit is
	signal D0_temp : STD_LOGIC := '0';
	signal D1_temp : STD_LOGIC := '0';
	signal D2_temp : STD_LOGIC := '0';
	signal D3_temp : STD_LOGIC := '0';
begin
	process (ckIn) begin
		if rising_edge(ckIn) then
			if ckEn = '1' then

				D0_temp <= not(D0_temp);
				D1_temp <= D0_temp xor D1_temp;
				D2_temp <= ((D1_temp and D0_temp) xor D2_temp);
				D3_temp <= ((D2_temp and (D1_temp and D0_temp)) xor D3_temp);

			end if;
		end if;
	end process;
	D0 <= D0_temp;
	D1 <= D1_temp;
	D2 <= D2_temp;
	D3 <= D3_temp;

end Structural;