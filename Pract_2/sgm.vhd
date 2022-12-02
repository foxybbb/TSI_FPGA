
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity sgm is
   port (
      SeL : in STD_LOGIC_VECTOR (3 downto 0);
      ckIn : in STD_LOGIC;
      ckEn : in STD_LOGIC;
      Sg : out STD_LOGIC_VECTOR (6 downto 0));
end sgm;

architecture Structural of sgm is
begin

   process (ckIn)
   begin
      if rising_edge(ckIn) then
         if ckEn = '1' then

            case (SeL) is
               when "0001" => Sg <= "0110000";
               when "0010" => Sg <= "1101101";
               when "0011" => Sg <= "1111001";
               when "0100" => Sg <= "0110011";
               when "0101" => Sg <= "1011011";
               when "0110" => Sg <= "1011111";
               when "0111" => Sg <= "1110010";
               when "1000" => Sg <= "1111111";
               when "1001" => Sg <= "1111011";
               when "1010" => Sg <= "1110111";
               when "1011" => Sg <= "0011111";
               when "1100" => Sg <= "1001110";
               when "1101" => Sg <= "0111101";
               when "1110" => Sg <= "1001111";
               when "1111" => Sg <= "1000111";
               when others => Sg <= "1111110";
            end case;

         else

         end if;
      end if;
   end process;
end Structural;