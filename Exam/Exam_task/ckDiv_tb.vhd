
library ieee;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

entity ckDiv_tb is
end ckDiv_tb;

architecture behavior of ckDiv_tb is

   -- Component Declaration for the Unit Under Test (UUT)

   component clkDiv
      port (
         i_clk : in STD_LOGIC;
         i_clkEn32 : in STD_LOGIC;
         o_clkEn2 : out STD_LOGIC
      );
   end component;
   --Inputs
   signal i_clk : STD_LOGIC := '0';
   signal i_clkEn32 : STD_LOGIC := '0';

   --Outputs
   signal o_clkEn2 : STD_LOGIC;

   -- Clock period definitions
   constant i_clk_period : TIME := 10 ns;
   constant i_clkEn32_period : TIME := 31.25 ns;
begin

   -- Instantiate the Unit Under Test (UUT)
   uut : clkDiv port map(
      i_clk => i_clk,
      i_clkEn32 => i_clkEn32,
      o_clkEn2 => o_clkEn2
   );

   -- Clock process definitions
   i_clk_process : process
   begin
      i_clk <= '0';
      wait for i_clk_period/2;
      i_clk <= '1';
      wait for i_clk_period/2;
   end process;

   i_clkEn32_process : process
   begin
      i_clkEn32 <= '0';
      wait for i_clkEn32_period/2;
      i_clkEn32 <= '1';
      wait for i_clkEn32_period/2;
   end process;
   -- Stimulus process
   stim_proc : process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;

      wait for i_clk_period * 10;

      -- insert stimulus here 

      wait;
   end process;

end;