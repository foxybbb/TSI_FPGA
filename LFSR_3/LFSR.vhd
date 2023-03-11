--------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LFSR is
    port (
        ckIn : in STD_LOGIC;
        ckEn : in STD_LOGIC;
        outReg : out STD_LOGIC_VECTOR (5 downto 0));
end LFSR;

architecture Structural of LFSR is

    component eLCeLL is
        port (
            inCell : in STD_LOGIC;
            outCell : out STD_LOGIC;
            xorEn : in STD_LOGIC;
            ckIn : in STD_LOGIC;
            ckEn : in STD_LOGIC;
            feedBack : in STD_LOGIC);
    end component;

    constant SEED : STD_LOGIC_VECTOR(5 downto 0) := "110101";
    signal delayReg : STD_LOGIC_VECTOR(3 downto 0) := "1111";
    signal OutRg : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal InRg : STD_LOGIC_VECTOR (5 downto 0) := "000000";

begin
    process (ckIn) begin
        if rising_edge(ckIn) then
            if ckEn = '1' then
                delayReg(3 downto 0) <= delayReg(2 downto 0) & '0';
            end if;


        end if;
    end process;
    InRg <= SEED when delayReg(0) = '1' else outRg;

    outReg <= outRg;
    LFSR_5 : eLCeLL port map(inCell => InRg(5), outCell => outRg(4), feedBack => InRg(0), ckIn => ckIn, ckEn => ckEn, xorEn => '1');
    LFSR_4 : eLCeLL port map(inCell => InRg(4), outCell => outRg(3), feedBack => InRg(0), ckIn => ckIn, ckEn => ckEn, xorEn => '0');
    LFSR_3 : eLCeLL port map(inCell => InRg(3), outCell => outRg(2), feedBack => InRg(0), ckIn => ckIn, ckEn => ckEn, xorEn => '0');
    LFSR_2 : eLCeLL port map(inCell => InRg(2), outCell => outRg(1), feedBack => InRg(0), ckIn => ckIn, ckEn => ckEn, xorEn => '0');
    LFSR_1 : eLCeLL port map(inCell => InRg(1), outCell => outRg(0), feedBack => InRg(0), ckIn => ckIn, ckEn => ckEn, xorEn => '0');
    LFSR_0 : eLCeLL port map(inCell => InRg(0), outCell => outRg(5), feedBack => InRg(0), ckIn => ckIn, ckEn => ckEn, xorEn => '0');
end Structural;