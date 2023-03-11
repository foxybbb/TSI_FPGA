library ieee;
use ieee.std_logic_1164.all;

entity eLCeLL is
  generic(
    INIT : std_logic := '0'
  );
  port(
    ck         : in  std_logic;   
    sIn        : in  std_logic;    
	 sOut       : out std_logic     
  );
end entity;

architecture arch of eLCeLL is
signal state    : std_logic := INIT;
begin

-- register:
process(ck)
begin
	if rising_edge(ck) then
		state <= sIn;
	end if;
end process;

sOut <= state;

  
end architecture;