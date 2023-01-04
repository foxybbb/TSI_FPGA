
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
    dapd : out STD_LOGIC;
    switches : in STD_LOGIC_VECTOR (3 downto 0)

  );
end SignalProcesing;

architecture Behavioral of SignalProcesing is
  attribute box_type : STRING; -- without warning
  component bufg
    port (
      i : in STD_LOGIC; -- input
      o : out STD_LOGIC -- output
    );
  end component;
  attribute box_type of bufg : component is "black_box";
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
  signal sig4 : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal todac : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
begin
  InCk : bufg
  port map(
    i => clk,
    o => ckMain
  );

  process (ckMain) begin
    if falling_edge(ckMain) then
      todac(11 downto 0) <= sig4;
    end if;
  end process;

  -- DAC control 
  dack <= ckMain;
  daou(11 downto 0) <= not(todac(11)) & todac(10 downto 0);
  dapd <= '0';
  gen : DDS_generator port map(i_clk => ckMain, i_clkEn => '1', o_outReg => sig);
  sigPr01 : signalMod port map(i_clk => ckMain, i_bypass => '1', i_signal => sig, o_signal => sig2);
  sigPr02 : sigKlip port map(i_clk => ckMain, i_bypass => '1', i_signal => sig2, o_signal => sig3);
  sigPr03 : sigDiv port map(i_clk => ckMain, i_bypass => '0', i_signal => sig3, o_signal => sig4);

end Behavioral;