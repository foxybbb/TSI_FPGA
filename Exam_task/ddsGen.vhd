
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ddsGen is
    port (
        i_clk : in STD_LOGIC;
        i_clkEn : in STD_LOGIC;
        i_En : in STD_LOGIC;
        o_outReg : out STD_LOGIC_VECTOR (11 downto 0));
end ddsGen;

architecture Structural of ddsGen is
    constant DataWidth : INTEGER := 12;

    type rom_type is array (0 to 63) of STD_LOGIC_VECTOR (DataWidth - 1 downto 0);
    signal ROM : rom_type := (X"7FF", X"7FF", X"7FF", X"7FF", X"800", X"800", X"801", X"801", X"802", X"804", X"805", X"807", X"809", X"80B",
    X"80E", X"812", X"816", X"81B", X"820", X"827", X"82F", X"838", X"843", X"84F", X"85D", X"86D", X"880", X"894",
    X"8AB", X"8C5", X"8E2", X"902", X"925", X"94C", X"976", X"9A4", X"9D5", X"A0A", X"A43", X"A7F", X"ABF", X"B02",
    X"B48", X"B91", X"BDB", X"C28", X"C76", X"CC5", X"D14", X"D62", X"DAF", X"DFA", X"E43", X"E89", X"ECA", X"F07",
    X"F3E", X"F6F", X"F9A", X"FBD", X"FDA", X"FEE", X"FFA", X"FFE");

    signal count : INTEGER := 0;
    signal phase_acc : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal phase_inc : STD_LOGIC_VECTOR(7 downto 0) := X"01";

begin

    process (i_clk) begin
        if rising_edge(i_clk) then
            if i_clkEn = '1' then
                if i_En = '1' then
                    if phase_acc(7 downto 6) = "00" then
                        o_outReg <= ROM(to_integer(unsigned(phase_acc(5 downto 0))));
                    end if;
                    if phase_acc(7 downto 6) = "01" then
                        o_outReg <= ROM(to_integer(unsigned(not(phase_acc(5 downto 0)))));
                    end if;
                    if phase_acc(7 downto 6) = "10" then
                        o_outReg <= not(ROM(to_integer(unsigned(phase_acc(5 downto 0)))));
                    end if;
                    if phase_acc(7 downto 6) = "11" then
                        o_outReg <= not(ROM(to_integer(unsigned(not(phase_acc(5 downto 0))))));
                    end if;
                    phase_acc <= STD_LOGIC_VECTOR(unsigned(phase_acc) + unsigned(phase_inc));
                end if;
            end if;
        end if;

    end process;
end Structural;