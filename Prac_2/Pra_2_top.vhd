
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library UNISIM;
use UNISIM.VComponents.all;
entity Prac_2_top is
    port (
        ckIn : in STD_LOGIC;
        Sg : out STD_LOGIC_VECTOR (6 downto 0);
        Sgm0_com_out : out STD_LOGIC;
        cnt_out : out STD_LOGIC_VECTOR(3 downto 0));
end Prac_2_top;
architecture Behavioral of Prac_2_top is

    component frqDivN
        port (
            ck : in STD_LOGIC;
            ckDiv : out STD_LOGIC);
    end component;

    component cnt4bit
        port (
            CLK_IN : in STD_LOGIC;
            D_OUT : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component sgm
        port (
            SeL : in STD_LOGIC_VECTOR (3 downto 0);
            ckIn : in STD_LOGIC;
            ckEn : in STD_LOGIC;
            Sg : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    component bufg
        port (
            i : in STD_LOGIC;
            o : out STD_LOGIC
        );
    end component;
    signal ckMain : STD_LOGIC := '0';
    signal ckEn : STD_LOGIC := '1';
    signal cntTempIn : STD_LOGIC := '0';
    signal cntTempOut : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    cnt_out(3 downto 0) <= cntTempOut(3 downto 0);
    Sgm0_com_out <= '0';

    InCk : bufg
    port map(
        i => ckIn,
        o => ckMain);
    freqDiv : frqDivN port map(
        ck => ckMain,
        ckDiv => cntTempIn
    );

    cnt : cnt4bit port map(
        CLK_IN => cntTempIn,
        D_OUT => cntTempOut);

    seInd : sgm port map(
        SeL => cntTempOut,
        ckIn => ckMain,
        ckEn => ckEn,
        Sg => Sg);
end Behavioral;