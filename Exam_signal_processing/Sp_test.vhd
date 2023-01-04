--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:06:51 01/03/2023
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Documents/git/TSI_FPGA/Exam_signal_processing/Sp_test.vhd
-- Project Name:  Exam_signal_processing
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SignalProcesing
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
 
ENTITY Sp_test IS
END Sp_test;
 
ARCHITECTURE behavior OF Sp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SignalProcesing
    PORT(
         clk : IN  std_logic;
         dac : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal dac : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 file OuFile : TEXT open WRITE_MODE is "sigpr1.txt";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SignalProcesing PORT MAP (
          clk => clk,
          dac => dac
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;
	
-- Output data writing to file
		FileWr: process (clk) is
		 variable LineWr : line;
		begin
		if (clk'event and clk='0') then
		 -- Write output data (result of simulation)
		 write(LineWr, dac(11 downto 0)); -- write binary symbol to line
		 writeline(ouFile, LineWr); -- write line to file
		end if;
end process FileWr;


END;
