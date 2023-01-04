--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:37:37 01/04/2023
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Documents/git/TSI_FPGA/Exam_signal_processing/sigproc_tb.vhd
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sigproc_tb IS
END sigproc_tb;
 
ARCHITECTURE behavior OF sigproc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SignalProcesing
    PORT(
         clk : IN  std_logic;
         daou : OUT  std_logic_vector(11 downto 0);
         dack : OUT  std_logic;
         dapd : OUT  std_logic;
         switches : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal switches : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal daou : std_logic_vector(11 downto 0);
   signal dack : std_logic;
   signal dapd : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SignalProcesing PORT MAP (
          clk => clk,
          daou => daou,
          dack => dack,
          dapd => dapd,
          switches => switches
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

END;
