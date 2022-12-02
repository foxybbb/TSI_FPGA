
library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Adder_top is
	port (
		A_in : in STD_LOGIC_VECTOR (3 downto 0);
		B_in : in STD_LOGIC_VECTOR (3 downto 0);
		S_out : out STD_LOGIC_VECTOR (4 downto 0));

end Adder_top;

architecture Behavioral of Adder_top is
	component bitAdder
		port (
			Cin : in STD_LOGIC;
			a : in STD_LOGIC;
			b : in STD_LOGIC;
			s : out STD_LOGIC;
			Cout : out STD_LOGIC);
	end component;

	signal c_tmp : STD_LOGIC_VECTOR (2 downto 0);

begin

	bitAdd_1 : bitAdder port map(
		Cin => '0',
		a => A_in(0),
		b => B_in(0),
		s => S_out(0),
		Cout => c_tmp(0)
	);
	bitAdd_2 : bitAdder port map(
		Cin => c_tmp(0),
		a => A_in(1),
		b => B_in(1),
		s => S_out(1),
		Cout => c_tmp(1)
	);
	bitAdd_3 : bitAdder port map(
		Cin => c_tmp(1),
		a => A_in(2),
		b => B_in(2),
		s => S_out(2),
		Cout => c_tmp(2)
	);
	bitAdd_4 : bitAdder port map(
		Cin => c_tmp(2),
		a => A_in(3),
		b => B_in(3),
		s => S_out(3),
		Cout => S_out(4)
	);
end Behavioral;