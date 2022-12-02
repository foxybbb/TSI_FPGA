----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:12 11/28/2022 
-- Design Name: 
-- Module Name:    cnt4bit_test - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
entity cnt4bit_test is

Port ( -- Input signals
		
	clk : in std_logic;
		ckEn : in std_logic;
		-- Output signal
		
		D0 : out std_logic;
		D1 : out std_logic;
		D2 : out std_logic;
		D3 : out std_logic
		);
		
end cnt4bit_test;

architecture Structural of cnt4bit_test is
	signal D0_tmp, D1_tmp, D2_tmp, D3_tmp;
begin
	process (clk) begin
		if rising_edge(clk) then
		if ckEn = '1' then
		
		-- D0 <= not(D0);
		-- D1 <= D0 xor D1;
		-- D2 <= ((D1 and D0) xor D2);
		-- D3 <= ((D2 and (D1 and D0)) xor D3); 

		end if;
		end if;
		end process;

end Structural;
