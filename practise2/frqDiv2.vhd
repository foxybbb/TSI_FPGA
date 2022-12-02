----------------------------------------------------------------------------------
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

entity frqDiv2 is
	port (-- Input signals
		dIn : in STD_LOGIC;
		ckIn : in STD_LOGIC;

		-- Output signal
		ckOu : out STD_LOGIC
	);

end frqDiv2;

architecture Structural of frqDiv2 is
	signal dLt : STD_LOGIC := '0';
	signal ckEn : STD_LOGIC := '0';
	signal ckOu1 : STD_LOGIC := '0';
begin

	process (ckIn) begin
		if rising_edge(ckIn) then
			if ckEn = '1' then
				-- Logic Function

				ckOu1 <= not (ckOu1);

			end if;
			-- Logic Function

			dLt <= dIn;

		end if;
	end process;

	CkEn <= dIn and not(dLt);
end Structural;