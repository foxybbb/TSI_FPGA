
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_top is
	Port ( A_in : in  STD_LOGIC_VECTOR (3 downto 0);
          B_in : in  STD_LOGIC_VECTOR (3 downto 0);
          S_out : out  STD_LOGIC_VECTOR (4 downto 0);
			 Sgm0_out : out STD_LOGIC_VECTOR (6 downto 0);
			 Sgm0_com_out : out STD_LOGIC;
			 Sgm1_out : out STD_LOGIC_VECTOR (6 downto 0);
			 Sgm1_com_out : out STD_LOGIC);
end Adder_top;

architecture Behavioral of Adder_top is
component bitAdder
	port( 
		Cin:in STD_LOGIC;
		a:in STD_LOGIC;
		b:in STD_LOGIC;
		s:out STD_LOGIC;
		Cout:out STD_LOGIC);
	end component;
	
	signal c_tmp : STD_LOGIC_VECTOR (3 downto 0);
	signal S_tmp : STD_LOGIC_VECTOR (4 downto 0);
begin

bitAdd_1: bitAdder port map(Cin => '0',
                    a => A_in(0),
						  b => B_in(0),
						  s => S_tmp(0),
						  Cout => c_tmp(0)
						  );
bitAdd_2: bitAdder port map(Cin => c_tmp(0),
                    a => A_in(1),
						  b => B_in(1),
						  s => S_tmp(1),
						  Cout => c_tmp(1)
						  );
bitAdd_3: bitAdder port map(Cin => c_tmp(1),
                    a => A_in(2),
						  b => B_in(2),
						  s => S_tmp(2),
						  Cout => c_tmp(2)
						  );				  
bitAdd_4: bitAdder port map(Cin => c_tmp(2),
                    a => A_in(3),
						  b => B_in(3),
						  s => S_tmp(3),
						  Cout => S_tmp(4)
						  );	
S_out(4 downto 0) <= S_tmp(4 downto 0);

--with S_tmp(3 downto 0) select
-- Sgm0_out(6 downto 0) <= "0110000" when "0001", --0
--								 "1101101" when "0010", --1
--								 "1111001" when "0011", --2
--								 "0110011" when "0100", --3
--								 
--								 "1011011" when "0101", --4
--								 "1011111" when "0110", --5
--								 "1110010" when "0111", --6
--								 "1111111" when "1000", --7
--								 "1111011" when "1001", --8
--								 
--								 "1110111" when "1010", --A
--								 "0011111" when "1011", --b
--								 "1001110" when "1100", --C
--								 "0111101" when "1101", --d
--								 "1001111" when "1110", --E
--								 "1000111" when "1111", --F
--								 "1111110" when others; --0
process(a)
begin
case S_tmp is
	when "00001" => Sgm0_out <= "0110000";
	when "00010" => Sgm0_out <= "1101101";
	when "00011" => Sgm0_out <= "1111001";
	when "00100" => Sgm0_out <= "0110011";	
	when "00101" => Sgm0_out <= "1011011";
	when "00110" => Sgm0_out <= "1011111";
	when "00111" => Sgm0_out <= "1110010";
	when "01000" => Sgm0_out <= "1111111";
	when "01001" => Sgm0_out <= "1111011";
	
	when "01010" => Sgm1_out <= "0110000";
	when "01011" => Sgm1_out <= "1101101";
	when "01100" => Sgm1_out <= "1111001";
	
	when "01101" => Sgm1_out <= "0110011";
	when "01110" => Sgm1_out <= "1011011";
	when "01111" => Sgm1_out <= "1011111";

	end case;


end process;
		 
	


Sgm1_com_out <= '0';
Sgm0_com_out <= '0';
end Behavioral;

