
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;



entity SignalProcesing is
  port (
    clk : in STD_LOGIC;
    daou : out STD_LOGIC_VECTOR(11 downto 0);
    dack : out STD_LOGIC;
    dapd : out STD_LOGIC

  );
end SignalProcesing;

architecture Behavioral of SignalProcesing is

  
  signal ckMain : STD_LOGIC := '0';
  component DDS_generator is
    port (
      i_clk : in STD_LOGIC;
      i_clkEn : in STD_LOGIC;
      o_outReg : out STD_LOGIC_VECTOR (11 downto 0));
  end component;

  component signalMod is
    port (
      i_clk : in STD_LOGIC;
      i_bypass : in STD_LOGIC;
      i_signal : in STD_LOGIC_VECTOR (11 downto 0);
      o_signal : out STD_LOGIC_VECTOR (11 downto 0));
  end component;

  component sigKlip is
    port (
      i_clk : in STD_LOGIC;
      i_bypass : in STD_LOGIC;
      i_signal : in STD_LOGIC_VECTOR (11 downto 0);
      o_signal : out STD_LOGIC_VECTOR (11 downto 0)
    );
  end component;
  
  component sigDiv is
    port (
      i_clk : in STD_LOGIC;
      i_bypass : in STD_LOGIC;
      i_signal : in STD_LOGIC_VECTOR (11 downto 0);
      o_signal : out STD_LOGIC_VECTOR (11 downto 0)
    );
  end component;
  signal sig : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal sig2 : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal sig3 : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');

begin
 


  -- DAC control 
  dack <= clk;
 -- daou(11 downto 0) <= not(sig4(11)) & sig4(10 downto 0);
  dapd <= '0';
  
  gen : DDS_generator port map(i_clk => clk, i_clkEn => '1', o_outReg => sig);
  sigPr01 : signalMod port map(i_clk => clk, i_bypass => '0', i_signal => sig, o_signal => sig2);
  sigPr02 : sigKlip port map(i_clk => clk, i_bypass => '0', i_signal => sig2, o_signal => sig3);
  sigPr03 : sigDiv port map(i_clk => clk, i_bypass => '0', i_signal => sig3, o_signal => daou);

end Behavioral;