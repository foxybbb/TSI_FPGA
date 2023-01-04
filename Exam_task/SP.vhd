
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SP is
  port (
    clk : in STD_LOGIC;
    daou : out STD_LOGIC_VECTOR (11 downto 0);
    dack : out STD_LOGIC;
    dapd : out STD_LOGIC);
end SP;

architecture Behavioral of SP is

  component DCM
    port (
      CLKIN_IN : in STD_LOGIC;
      RST_IN : in STD_LOGIC;
      CLKFX_OUT : out STD_LOGIC
    );
  end component;

  component frqDivN is
    port (
      ck : in STD_LOGIC;
      ckEn : out STD_LOGIC);
  end component;

  component ddsGen is
    port (
      i_clk : in STD_LOGIC;
      i_clkEn : in STD_LOGIC;
      i_En : in STD_LOGIC;
      o_outReg : out STD_LOGIC_VECTOR (11 downto 0));
  end component;

  component signalMod is
    port (
      i_clk : in STD_LOGIC;
      i_clkEn : in STD_LOGIC;
      i_bypass : in STD_LOGIC;
      i_signal : in STD_LOGIC_VECTOR (11 downto 0);
      o_signal : out STD_LOGIC_VECTOR (11 downto 0));
  end component;

  component sigKlip is
    port (
      i_clk : in STD_LOGIC;
      i_clkEn : in STD_LOGIC;
      i_bypass : in STD_LOGIC;
      i_signal : in STD_LOGIC_VECTOR (11 downto 0);
      o_signal : out STD_LOGIC_VECTOR (11 downto 0)
    );
  end component;

  component sigDiv is
    port (
      i_clk : in STD_LOGIC;
      i_clkEn : in STD_LOGIC;
      i_bypass : in STD_LOGIC;
      i_signal : in STD_LOGIC_VECTOR (11 downto 0);
      o_signal : out STD_LOGIC_VECTOR (11 downto 0)
    );
  end component;
  signal ckEn : STD_LOGIC := '0';
  signal ckMain32 : STD_LOGIC := '0';
  signal dackRg : STD_LOGIC := '0';
  signal sig : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal sig2 : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal sig3 : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal dacRg : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal delayReg : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
begin

  Inst_DCM : DCM port map(-- devide 50 mhz to 32 mhz
    CLKIN_IN => clk,
    RST_IN => '0', -- not used in this scope
    CLKFX_OUT => ckMain32
  );

  FreqDiv2mhz : frqDivN port map(ck => ckMain32, ckEn => ckEn); -- devide 32 mhz to 2 mhz

 dack <= dackRg;
 
  -- DAC control 
  process (ckMain32) begin
    if falling_edge(ckMain32) then
      if ckEn = '1' then
        dackRg <= not(dackRg);
        
		  
		  if delayReg(0) = '1' then 
		  daou(11 downto 0) <= "000000000000";
		  dapd <= '1';
		  else
		  daou(11 downto 0) <= not(dacRg(11)) & dacRg(10 downto 0);
		  dapd <= '0';
		  end if;
		  delayReg(7 downto 0) <= delayReg(6 downto 0) & '0';
		  
      end if;
    end if;
  end process;
  
  
  
  gen : ddsGen port map(i_clk => ckMain32, i_clkEn => ckEn, i_En => '1', o_outReg => sig);
  sigPr01 : signalMod port map(i_clk => ckMain32, i_clkEn => ckEn, i_bypass => '0', i_signal => sig, o_signal => sig2);
  sigPr02 : sigKlip port map(i_clk => ckMain32, i_clkEn => ckEn, i_bypass => '0', i_signal => sig2, o_signal => sig3);
  sigPr03 : sigDiv port map(i_clk => ckMain32, i_clkEn => ckEn, i_bypass => '0', i_signal => sig3, o_signal => dacRg);

end Behavioral;