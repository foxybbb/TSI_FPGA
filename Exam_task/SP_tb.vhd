
library ieee;
use ieee.std_logic_1164.all;
use STD.textio.all;
use IEEE.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

entity SP_tb is
end SP_tb;

architecture behavior of SP_tb is

  -- Component Declaration for the Unit Under Test (UUT)

  component SP
    port (
      clk : in STD_LOGIC;
      daou : out STD_LOGIC_VECTOR(11 downto 0);
      dack : out STD_LOGIC;
      dapd : out STD_LOGIC
    );
  end component;
  --Inputs
  signal clk : STD_LOGIC := '0';

  --Outputs
  signal daou : STD_LOGIC_VECTOR(11 downto 0);
  signal dack : STD_LOGIC;
  signal dapd : STD_LOGIC;

  -- Clock period definitions
  constant clk_period : TIME := 10 ns;
  file OuFile : TEXT open WRITE_MODE is "sigpr1.txt";
begin

  -- Instantiate the Unit Under Test (UUT)
  uut : SP port map(
    clk => clk,
    daou => daou,
    dack => dack,
    dapd => dapd
  );

  -- Clock process definitions
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
  -- Stimulus process
  stim_proc : process
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;

    wait for clk_period * 10;

    -- insert stimulus here 

    wait;
  end process;

  -- Output data writing to file
  FileWr : process (clk) is
    variable LineWr : line;
  begin
    if (clk'event and clk = '0') then
      -- Write output data (result of simulation)
      write(LineWr, daou(11 downto 0)); -- write binary symbol to line
      writeline(ouFile, LineWr); -- write line to file
    end if;
  end process FileWr;
end;