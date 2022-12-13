-------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity eLCeLL is
    port (
        inCell : in STD_LOGIC;
        outCell : out STD_LOGIC;
        xorEn : in STD_LOGIC;
        ckIn : in STD_LOGIC;
        ckEn : in STD_LOGIC;
        feedBack : in STD_LOGIC);
end eLCeLL;

architecture Structural of eLCeLL is

begin
    process (ckIn) begin
        if rising_edge(ckIn) then
            if ckEn = '1' then 
                if xorEn = '1' then
                    outCell <= inCell xor feedBack;
                else
                    outCell <= inCell;
                end if;
            end if;
        end if;
    end process;
end Structural;