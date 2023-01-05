
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
    -- gaus
    type rom_type is array (0 to 63) of STD_LOGIC_VECTOR (DataWidth - 1 downto 0);
--    signal ROM : rom_type := (X"7FF", X"7FF", X"7FF", X"7FF", X"800", X"800", X"801", X"801", X"802", X"804", X"805", X"807", X"809", X"80B",
--    X"80E", X"812", X"816", X"81B", X"820", X"827", X"82F", X"838", X"843", X"84F", X"85D", X"86D", X"880", X"894",
--    X"8AB", X"8C5", X"8E2", X"902", X"925", X"94C", X"976", X"9A4", X"9D5", X"A0A", X"A43", X"A7F", X"ABF", X"B02",
--    X"B48", X"B91", X"BDB", X"C28", X"C76", X"CC5", X"D14", X"D62", X"DAF", X"DFA", X"E43", X"E89", X"ECA", X"F07",
--    X"F3E", X"F6F", X"F9A", X"FBD", X"FDA", X"FEE", X"FFA", X"FFE");
    -- sum sines
--    signal ROM : rom_type := (X"7FF", X"875", X"8EB", X"961", X"9D5", X"A47", X"AB7", X"B25", X"B90", X"BF8", X"C5C", X"CBC", X"D18", X"D6F", 
--      X"DC2", X"E10", X"E58", X"E9B", X"ED8", X"F10", X"F42", X"F6E", X"F94", X"FB5", X"FCF", X"FE3", X"FF2", X"FFB", 
--      X"FFF", X"FFD", X"FF6", X"FE9", X"FD9", X"FC3", X"FAA", X"F8D", X"F6C", X"F48", X"F21", X"EF7", X"ECC", X"E9E", 
--      X"E6F", X"E3F", X"E0F", X"DDE", X"DAD", X"D7D", X"D4E", X"D1F", X"CF3", X"CC8", X"CA0", X"C7A", X"C56", X"C36", 
--      X"C19", X"BFF", X"BE9", X"BD7", X"BC9", X"BBF", X"BB8", X"BB6");
--	 -- parabola
--    signal ROM : rom_type := (X"7FF",X"81F",X"840",X"860",X"881",X"8A1",X"8C2",X"8E2",X"903",X"923",X"944",X"964",X"985",X"9A5",X"9C6",X"9E6",
--    X"A07",X"A27",X"A48",X"A68",X"A89",X"AA9",X"ACA",X"AEA",X"B0B",X"B2B",X"B4C",X"B6C",X"B8D",X"BAD",X"BCE",X"BEE",
--    X"C0F",X"C2F",X"C50",X"C70",X"C91",X"CB1",X"CD2",X"CF2",X"D13",X"D33",X"D54",X"D74",X"D95",X"DB5",X"DD6",X"DF6",
--    X"E17",X"E37",X"E58",X"E78",X"E99",X"EB9",X"EDA",X"EFA",X"F1B",X"F3B",X"F5C",X"F7C",X"F9D",X"FBD",X"FDE",X"FFF");
--    
--	 --circle
--    signal ROM : rom_type := (X"7FF",X"96A",X"9FE",X"A6F",X"ACD",X"B1E",X"B67",X"BA9",X"BE5",X"C1D",X"C52",X"C83",X"CB1",X"CDC",X"D06",X"D2D",
--    X"D52",X"D76",X"D98",X"DB8",X"DD7",X"DF5",X"E11",X"E2D",X"E47",X"E60",X"E78",X"E8F",X"EA5",X"EBB",X"ECF",X"EE3",
--    X"EF5",X"F07",X"F19",X"F29",X"F39",X"F48",X"F56",X"F64",X"F71",X"F7E",X"F89",X"F95",X"F9F",X"FA9",X"FB3",X"FBB",
--    X"FC4",X"FCB",X"FD2",X"FD9",X"FDF",X"FE5",X"FE9",X"FEE",X"FF2",X"FF5",X"FF8",X"FFA",X"FFC",X"FFD",X"FFE",X"FFF");
--	 
--	 --parabola 2
    signal ROM : rom_type := (X"7FF",X"83F",X"87E",X"8BD",X"8FA",X"937",X"972",X"9AC",X"9E6",X"A1E",X"A55",X"A8B",X"AC0",X"AF5",X"B28",X"B5A",
    X"B8B",X"BBB",X"BEA",X"C18",X"C44",X"C70",X"C9B",X"CC5",X"CEE",X"D15",X"D3C",X"D62",X"D86",X"DAA",X"DCD",X"DEE",
    X"E0F",X"E2E",X"E4D",X"E6A",X"E86",X"EA2",X"EBC",X"ED5",X"EEE",X"F05",X"F1B",X"F30",X"F44",X"F57",X"F69",X"F7A",
    X"F8A",X"F99",X"FA7",X"FB4",X"FC0",X"FCB",X"FD5",X"FDD",X"FE5",X"FEC",X"FF2",X"FF6",X"FFA",X"FFC",X"FFE",X"FFF");
--	 
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