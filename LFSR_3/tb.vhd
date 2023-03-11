--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:48:35 12/13/2022
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Documents/FPGA/LFSR_3/tb.vhd
-- Project Name:  LFSR_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LFSR
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
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LFSR
    PORT(
         ckIn : IN  std_logic;
			ckEn : in STD_LOGIC;
         outReg : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ckIn : std_logic := '0';
	signal ckEn : std_logic := '1';

 	--Outputs
   signal outReg : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace clk below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LFSR PORT MAP (
          ckIn => ckIn,
			 ckEn => ckEn,
          outReg => outReg
        );

   -- Clock process definitions
   clk_process :process
   begin
		ckIn <= '0';
		wait for clk_period/2;
		ckIn <= '1';
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
