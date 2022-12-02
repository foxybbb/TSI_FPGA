
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bitAdder is
    port (
        Cin : in STD_LOGIC;
        a : in STD_LOGIC;
        b : in STD_LOGIC;
        s : out STD_LOGIC;
        Cout : out STD_LOGIC);
end bitAdder;

architecture Structural of bitAdder is

begin

    s <= (Cin xor (a xor b));
    Cout <= ((Cin and (a xor b)) or (a and b));
end Structural;