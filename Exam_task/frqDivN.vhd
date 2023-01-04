
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity frqDivN is
	port (
		ck : in STD_LOGIC;
		ckDiv : out STD_LOGIC;
		ckEn : out STD_LOGIC);
end frqDivN;

architecture Structural of frqDivN is

	component frqDiv2
		port (
			D_IN : in STD_LOGIC;
			CLK_IN : in STD_LOGIC;
			CK_OUT : out STD_LOGIC);
	end component;
	signal Rg : STD_LOGIC := '0';
	signal ckRg : STD_LOGIC := '0';
	signal ckOut_temp : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin

	process (ck) begin
		if rising_edge(ck) then
			Rg <= not(Rg);
			ckRg <= ckOut_temp(2);
		end if;
	end process;
	ckEn <= not(ckRg) and ckOut_temp(2);

	frqDiv2_01 : frqDiv2 port map(
		D_IN => Rg,
		CLK_IN => ck,
		CK_OUT => ckOut_temp(0));

	frqDiv2_02 : frqDiv2 port map(
		D_IN => ckOut_temp(0),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(1));

	frqDiv2_03 : frqDiv2 port map(
		D_IN => ckOut_temp(1),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(2));
	ckDiv <= ckOut_temp(2);
end Structural;