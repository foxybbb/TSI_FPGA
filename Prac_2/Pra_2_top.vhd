
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library UNISIM;
use UNISIM.VComponents.all;
use IEEE.std_logic_arith.all;
entity Prac_2_top is
    port (
        ckIn : in STD_LOGIC;
        Sg : out STD_LOGIC_VECTOR (13 downto 0);
        Sgm0_com_out : out STD_LOGIC;
        cnt_out : out STD_LOGIC_VECTOR(3 downto 0));
end Prac_2_top;
architecture Behavioral of Prac_2_top is

    component frqDivN
        port (
            ck : in STD_LOGIC;
            ckDiv : out STD_LOGIC;
            ckEn : out STD_LOGIC);
    end component;

    component cnt4bit
        port (-- Input signals
            CLK_IN : in STD_LOGIC;
            CLK_EN : in STD_LOGIC;
            -- Output signal
            D_OUT : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component SGM
        port (
            ckIn : in STD_LOGIC;
            ckEn : in STD_LOGIC;
            SeL : in STD_LOGIC_VECTOR (6 downto 0);
            sgm_com : out STD_LOGIC;
            sgm_out : out STD_LOGIC_VECTOR (13 downto 0));
    end component;

    component bufg
        port (
            i : in STD_LOGIC;
            o : out STD_LOGIC
        );
    end component;
    signal ckMain : STD_LOGIC := '0';
    signal ckEn : STD_LOGIC := '0';
    signal SgRg : STD_LOGIC_VECTOR (13 downto 0):= "00000000000000";
    signal cntTempIn : STD_LOGIC := '0';
    signal cntTempOut : STD_LOGIC_VECTOR(6 downto 0):="0000000";
begin
    cnt_out(3 downto 0) <= cntTempOut(3 downto 0);
 

    InCk : bufg
    port map(
        i => ckIn,
        o => ckMain);
		  
    freqDiv : frqDivN port map(
        ck => ckMain,
        ckEn => ckEn
    );

    cnt : cnt4bit port map(
        CLK_IN => ckMain,
        CLK_EN => ckEn,
        D_OUT => cntTempOut(3 downto 0));

    seInd : sgm port map(
        SeL => cntTempOut,
        ckIn => ckMain,
        ckEn => ckEn,
        sgm_com => Sgm0_com_out,
        sgm_out => SgRg);
    Sg <= SgRg(13 downto 0);
end Behavioral;