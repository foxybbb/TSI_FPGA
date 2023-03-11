library ieee;
use ieee.std_logic_1164.all;

entity LFSR is
  generic(
    INIT_VECTOR : std_logic_vector(5 downto 0) := "001100"
  );
  port(
    ck          : in  std_logic;   
	 state       : out std_logic_vector(5 downto 0)     
  );
end entity;

architecture arch of LFSR is
signal regOut   : std_logic_vector(5 downto 0);
signal regIn    : std_logic_vector(5 downto 0);

component eLCeLL   
  generic(
    INIT : std_logic
  );
  port(
    ck         : in  std_logic;   
    sIn        : in  std_logic;    
	 sOut       : out std_logic     
  );
end component;

begin

eLCeLL0 : eLCeLL   
  generic map(INIT_VECTOR(0))
  port map(ck,regIn(0) ,regOut(0) );
eLCeLL1 : eLCeLL   
  generic map(INIT_VECTOR(1))
  port map(ck,regIn(1) ,regOut(1) );
eLCeLL2 : eLCeLL   
  generic map(INIT_VECTOR(2))
  port map(ck,regIn(2) ,regOut(2) );
eLCeLL3 : eLCeLL   
  generic map(INIT_VECTOR(3))
  port map(ck,regIn(3) ,regOut(3) );
eLCeLL4 : eLCeLL   
  generic map(INIT_VECTOR(4))
  port map(ck,regIn(4) ,regOut(4) );
eLCeLL5 : eLCeLL   
  generic map(INIT_VECTOR(5))
  port map(ck,regIn(5) ,regOut(5) );

regIn(0) <= regOut(0) xor regOut(1);
regIn(1) <= regOut(2);
regIn(2) <= regOut(3);
regIn(3) <= regOut(4);
regIn(4) <= regOut(0) xor regOut(5);
regIn(5) <= regOut(0);

state <= regOut;

  
end architecture;