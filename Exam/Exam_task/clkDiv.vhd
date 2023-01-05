
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clkDiv is
    port (
        i_clk : in STD_LOGIC;
        i_clkEn32 : in STD_LOGIC;
        o_clkEn2 : out STD_LOGIC);
end clkDiv;

architecture Structural of clkDiv is
    component frqDivN is
        port (
            ck : in STD_LOGIC;
            ckEn : out STD_LOGIC);
    end component;

begin

    FreqDiv : frqDivN port map(ck => i_clkEn32, ckEn => o_clkEn2);

end Structural;