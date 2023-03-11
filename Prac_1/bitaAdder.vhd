
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bitAdder is
    Port ( Cin : in  STD_LOGIC;
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end bitAdder;

architecture Structural of bitAdder is

begin

s <= (Cin xor (a xor b));
Cout <= ((Cin and (a xor b)) or (a and b));


end Structural;

