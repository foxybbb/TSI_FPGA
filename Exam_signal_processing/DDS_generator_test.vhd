--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:26:43 01/03/2023
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Documents/git/TSI_FPGA/Exam_signal_processing/DDS_generator_test.vhd
-- Project Name:  Exam_signal_processing
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DDS_generator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 use STD.textio.all;
 use IEEE.std_logic_textio.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DDS_generator_test IS
END DDS_generator_test;
 
ARCHITECTURE behavior OF DDS_generator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DDS_generator
    PORT(
         i_clk : IN  std_logic;
         i_clkEn : IN  std_logic;
         o_outReg : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_clk : std_logic := '0';
   signal i_clkEn : std_logic := '0';

 	--Outputs
   signal o_outReg : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant i_clk_period : time := 10 ns;
 file OuFile : TEXT open WRITE_MODE is "testou.txt";

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DDS_generator PORT MAP (
          i_clk => i_clk,
          i_clkEn => i_clkEn,
          o_outReg => o_outReg 
        );

   -- Clock process definitions
   i_clk_process :process  
   begin
	i_clkEn <= '1';
		i_clk <= '0';
		wait for i_clk_period/2;
		i_clk <= '1';
		wait for i_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 1000 ns;	

      wait for i_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;
	
	
	
		-- Output data writing to file
		FileWr: process (i_clk) is
		 variable LineWr : line;
		begin
		if (i_clk'event and i_clk='0') then
		 -- Write output data (result of simulation)
		 write(LineWr, o_outReg(11 downto 0)); -- write binary symbol to line
		 writeline(ouFile, LineWr); -- write line to file
		end if;
end process FileWr;
	

END;
