
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;

library UNISIM;
use UNISIM.VComponents.all;

entity LFSR_top is
    port (
        ck : in STD_LOGIC;
        sgmCom_01 : out STD_LOGIC;
        sgmOut : out STD_LOGIC_VECTOR (13 downto 0);
        leds : out STD_LOGIC_VECTOR (5 downto 0));
end LFSR_top;

architecture Behavioral of LFSR_top is
    -- Input Buffer for clock
    component bufg
        port (
            i : in STD_LOGIC;
            o : out STD_LOGIC
        );
    end component;

    component LFSR is
        port (
        ckIn : in STD_LOGIC;
        ckEn : in STD_LOGIC;
        outReg : out STD_LOGIC_VECTOR (5 downto 0));
    end component;

    component frqDivN is
        port (
            ck : in STD_LOGIC;
            ckDiv : out STD_LOGIC;
            ckEn : out STD_LOGIC);
    end component;

    component SGM is
        port (
        ckIn : in STD_LOGIC;
        ckEn : in STD_LOGIC;
        SeL : in STD_LOGIC_VECTOR (6 downto 0);
        sgm_com : out STD_LOGIC;
        sgm_out : out STD_LOGIC_VECTOR (13 downto 0));
    end component;

    signal ckMain : STD_LOGIC := '0';
    signal ckEn : STD_LOGIC := '1';
    signal lfsrReg : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal clkDiv : STD_LOGIC := '0';
begin
    FreqDiv : frqDivN port map(ck => ckMain, ckEn => ckEn);
    LFSR_6bit : LFSR port map(ckIn => ckMain, ckEn => ckEn, outReg => lfsrReg(5 downto 0) );
    Indicator : SGM port map(ckIn => ckMain,ckEn=> '1', SeL => lfsrReg, sgm_com => sgmCom_01, sgm_out => sgmOut);


    InCk : bufg
    port map(
        i => ck,
        o => ckMain);
    -- Sync. process
    process (ckMain) begin
        if rising_edge(ckMain) then
           if ckEn='1' then
           leds <= lfsrReg(5 downto 0);
           end if;
        end if;
    end process;

end Behavioral;