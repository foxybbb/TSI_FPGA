
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity frqDiv2 is
    port (
        D_IN : in STD_LOGIC;
        CLK_IN : in STD_LOGIC;
        CK_OUT : out STD_LOGIC);
end frqDiv2;

architecture Structural of frqDiv2 is

    signal dLt : STD_LOGIC := '0';
    signal ckEn : STD_LOGIC := '0';
    signal CK_OUT_TMP : STD_LOGIC := '0';

begin

    process (CLK_IN) begin
        if rising_edge(CLK_IN) then
            dLt <= D_IN;
        end if;
    end process;
    ckEn <= D_IN and not(dLt);
    CK_OUT <= CK_OUT_TMP;

    process (CLK_IN) begin
        if rising_edge(CLK_IN) then
            if ckEn = '1' then
                CK_OUT_TMP <= not(CK_OUT_TMP);
            end if;
        end if;
    end process;

end Structural;