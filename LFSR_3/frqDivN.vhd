
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity frqDivN is
	port (
		ck : in STD_LOGIC;
		ckDiv : out STD_LOGIC;
		ckEn  : out STD_LOGIC);
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
	signal ckOut_temp : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
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

	frqDiv2_04 : frqDiv2 port map(
		D_IN => ckOut_temp(2),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(3));

	frqDiv2_05 : frqDiv2 port map(
		D_IN => ckOut_temp(3),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(4));

	frqDiv2_06 : frqDiv2 port map(
		D_IN => ckOut_temp(4),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(5));

	frqDiv2_07 : frqDiv2 port map(
		D_IN => ckOut_temp(5),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(6));
	frqDiv2_08 : frqDiv2 port map(
		D_IN => ckOut_temp(6),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(7));

	frqDiv2_09 : frqDiv2 port map(
		D_IN => ckOut_temp(7),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(8));
	frqDiv2_10 : frqDiv2 port map(
		D_IN => ckOut_temp(8),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(9));

	frqDiv2_11 : frqDiv2 port map(
		D_IN => ckOut_temp(9),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(10));

	frqDiv2_12 : frqDiv2 port map(
		D_IN => ckOut_temp(10),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(11));

	frqDiv2_13 : frqDiv2 port map(
		D_IN => ckOut_temp(11),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(12));

	frqDiv2_14 : frqDiv2 port map(
		D_IN => ckOut_temp(12),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(13));

	frqDiv2_15 : frqDiv2 port map(
		D_IN => ckOut_temp(13),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(14));

	frqDiv2_16 : frqDiv2 port map(
		D_IN => ckOut_temp(14),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(15));

	frqDiv2_17 : frqDiv2 port map(
		D_IN => ckOut_temp(15),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(16));

	frqDiv2_18 : frqDiv2 port map(
		D_IN => ckOut_temp(16),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(17));

	frqDiv2_19 : frqDiv2 port map(
		D_IN => ckOut_temp(17),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(18));
	frqDiv2_20 : frqDiv2 port map(
		D_IN => ckOut_temp(18),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(19));

	frqDiv2_21 : frqDiv2 port map(
		D_IN => ckOut_temp(19),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(20));

	frqDiv2_22 : frqDiv2 port map(
		D_IN => ckOut_temp(20),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(21));

	frqDiv2_23 : frqDiv2 port map(
		D_IN => ckOut_temp(21),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(22));

	frqDiv2_24 : frqDiv2 port map(
		D_IN => ckOut_temp(22),
		CLK_IN => ck,
		CK_OUT => ckOut_temp(23));

		ckDiv <= ckOut_temp(2);
end Structural;