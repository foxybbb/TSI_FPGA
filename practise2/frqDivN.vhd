----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity frqDivN is
	port (
		-- Input signals
		ck : in STD_LOGIC;

		-- Output signal
		ckDivN : out STD_LOGIC
	);
end frqDivN;

architecture Structural of frqDivN is

	signal ckDiv1 : STD_LOGIC := '0';
	signal ckDiv2 : STD_LOGIC := '0';
	signal ckDiv3 : STD_LOGIC := '0';
	signal ckDiv4 : STD_LOGIC := '0';
	signal ckDiv5 : STD_LOGIC := '0';
	signal ckDiv6 : STD_LOGIC := '0';
	signal ckDiv7 : STD_LOGIC := '0';
	signal ckDiv8 : STD_LOGIC := '0';
	signal ckDiv9 : STD_LOGIC := '0';
	signal ckDiv10 : STD_LOGIC := '0';
	signal ckDiv11 : STD_LOGIC := '0';
	signal ckDiv12 : STD_LOGIC := '0';
	signal ckDiv13 : STD_LOGIC := '0';
	signal ckDiv14 : STD_LOGIC := '0';
	signal ckDiv15 : STD_LOGIC := '0';
	signal ckDiv16 : STD_LOGIC := '0';
	signal ckDiv17 : STD_LOGIC := '0';
	signal ckDiv18 : STD_LOGIC := '0';
	signal ckDiv19 : STD_LOGIC := '0';
	signal ckDiv20 : STD_LOGIC := '0';
	signal ckDiv21 : STD_LOGIC := '0';
	signal ckDiv22 : STD_LOGIC := '0';
	signal ckDiv23 : STD_LOGIC := '0';
	signal ckDiv24 : STD_LOGIC := '0';
	signal Rg : STD_LOGIC := '0';

	component frqDiv2
		port (
			-- Input signals
			dIn : in STD_LOGIC;
			ckIn : in STD_LOGIC;

			-- Output signal
			ckOu : out STD_LOGIC
		);
	end component;

begin

	process (ck) begin
		if rising_edge(ck) then
			Rg <= not(Rg);
		end if;
	end process;

	frqDiv2_1 : frqDiv2 port map(dIn => Rg, ckIn => ck, ckOu => ckDiv1);
	frqDiv2_2 : frqDiv2 port map(dIn => ckDiv1, ckIn => ck, ckOu => ckDiv2);
	frqDiv2_3 : frqDiv2 port map(dIn => ckDiv2, ckIn => ck, ckOu => ckDiv3);
	frqDiv2_4 : frqDiv2 port map(dIn => ckDiv3, ckIn => ck, ckOu => ckDiv4);
	frqDiv2_5 : frqDiv2 port map(dIn => ckDiv4, ckIn => ck, ckOu => ckDiv5);
	frqDiv2_6 : frqDiv2 port map(dIn => ckDiv5, ckIn => ck, ckOu => ckDiv6);
	frqDiv2_7 : frqDiv2 port map(dIn => ckDiv6, ckIn => ck, ckOu => ckDiv7);
	frqDiv2_8 : frqDiv2 port map(dIn => ckDiv7, ckIn => ck, ckOu => ckDiv8);
	frqDiv2_9 : frqDiv2 port map(dIn => ckDiv8, ckIn => ck, ckOu => ckDiv9);
	frqDiv2_10 : frqDiv2 port map(dIn => ckDiv9, ckIn => ck, ckOu => ckDiv10);
	frqDiv2_11 : frqDiv2 port map(dIn => ckDiv10, ckIn => ck, ckOu => ckDiv11);
	frqDiv2_12 : frqDiv2 port map(dIn => ckDiv11, ckIn => ck, ckOu => ckDiv12);
	frqDiv2_13 : frqDiv2 port map(dIn => ckDiv12, ckIn => ck, ckOu => ckDiv13);
	frqDiv2_14 : frqDiv2 port map(dIn => ckDiv13, ckIn => ck, ckOu => ckDiv14);
	frqDiv2_15 : frqDiv2 port map(dIn => ckDiv14, ckIn => ck, ckOu => ckDiv15);
	frqDiv2_16 : frqDiv2 port map(dIn => ckDiv15, ckIn => ck, ckOu => ckDiv16);
	frqDiv2_17 : frqDiv2 port map(dIn => ckDiv16, ckIn => ck, ckOu => ckDiv17);
	frqDiv2_18 : frqDiv2 port map(dIn => ckDiv17, ckIn => ck, ckOu => ckDiv18);
	frqDiv2_19 : frqDiv2 port map(dIn => ckDiv18, ckIn => ck, ckOu => ckDiv19);
	frqDiv2_20 : frqDiv2 port map(dIn => ckDiv19, ckIn => ck, ckOu => ckDiv20);
	frqDiv2_21 : frqDiv2 port map(dIn => ckDiv20, ckIn => ck, ckOu => ckDiv21);
	frqDiv2_22 : frqDiv2 port map(dIn => ckDiv21, ckIn => ck, ckOu => ckDiv22);
	frqDiv2_23 : frqDiv2 port map(dIn => ckDiv22, ckIn => ck, ckOu => ckDiv23);
	frqDiv2_24 : frqDiv2 port map(dIn => ckDiv23, ckIn => ck, ckOu => ckDiv24);
	frqDiv2_25 : frqDiv2 port map(dIn => ckDiv24, ckIn => ck, ckOu => ckDivN);

end Structural;