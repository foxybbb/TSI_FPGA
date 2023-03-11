--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:02:03 12/14/2022
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Documents/FPGA/Prac_2/tb.vhd
-- Project Name:  Prac_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Prac_2_top
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
 
    COMPONENT Prac_2_top
    PORT(
         ckIn : IN  std_logic;
         Sg : OUT  std_logic_vector(6 downto 0);
         Sgm0_com_out : OUT  std_logic;
         cnt_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ckIn : std_logic := '0';

 	--Outputs
   signal Sg : std_logic_vector(6 downto 0);
   signal Sgm0_com_out : std_logic;
   signal cnt_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace ckIn below with 
   -- appropriate port name 
 
   constant ckIn_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Prac_2_top PORT MAP (
          ckIn => ckIn,
          Sg => Sg,
          Sgm0_com_out => Sgm0_com_out,
          cnt_out => cnt_out
        );

   -- Clock process definitions
   ckIn_process :process
   begin
		ckIn <= '0';
		wait for ckIn_period/2;
		ckIn <= '1';
		wait for ckIn_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for ckIn_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
