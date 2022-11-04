----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:32 10/07/2022 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( 
			  ckIn : in std_logic;
			  x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           x4 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end main;

architecture Behavioral of main is

-- Input Buffer for clock
component bufg
 port ( i : in std_logic;
 o : out std_logic
 );
end component;
signal yRg, ckMain : std_logic := '0';
signal ckEn : std_logic := '1';

begin

--y <= '1' when ((x1='0' and x2='0' and x3='1' and x4='0') or
-- (x1='0' and x2='0' and x3='1' and x4='1') or
-- (x1='0' and x2='1' and x3='1' and x4='0') or
-- (x1='1' and x2='0' and x3='0' and x4='0') or
-- (x1='1' and x2='0' and x3='0' and x4='1') or
-- (x1='1' and x2='0' and x3='1' and x4='0') or
-- (x1='1' and x2='0' and x3='1' and x4='1') or
-- (x1='1' and x2='1' and x3='1' and x4='1')) else
-- '0';

--y <= (not(x1) and x3 and not(x4)) or (x1 and x3 and x4) or (not(x2) and x3) or (x1 and not(x2)) ;

-- Input Clock Buffer instantiation
InCk : bufg
 port map ( i => ckin,
				o => ckMain);
-- Sync. process
process (ckMain) begin
if ckMain'event and (ckMain = '1') then
if ckEn = '1' then
 -- Logic Function
 yRg <= (not(x1) and x3 and not(x4)) or (x1 and x3 and x4) or (not(x2) and x3) or (x1 and not(x2)) ;
end if;
end if;
end process;

y <= yRg;


end Behavioral;

