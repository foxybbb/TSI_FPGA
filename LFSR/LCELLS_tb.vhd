--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:40:16 12/08/2022
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Documents/FPGA/LFSR/LCELLS_tb.vhd
-- Project Name:  LFSR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LCeLLS
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
 
ENTITY LCELLS_tb IS
END LCELLS_tb;
 
ARCHITECTURE behavior OF LCELLS_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LCeLLS
    PORT(
         ckEN : IN  std_logic;
         ckIN : IN  std_logic;
        outLFSR : out STD_LOGIC_VECTOR (5 downto 0);
         seed : IN  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ckEN : std_logic := '0';
   signal ckIN : std_logic := '0';
   signal seed : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal outLFSR : STD_LOGIC_VECTOR (5 downto 0);
   -- No clocks detected in port list. Replace ck below with 
   -- appropriate port name 
 
   constant ck_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LCeLLS PORT MAP (
          ckEN => ckEN,
          ckIN => ckIN,
          outLFSR => outLFSR,
          seed => seed
        );

   -- Clock process definitions
   ck_process :process
   begin
		ckIN <= '0';
		wait for ck_period/2;
		ckIN <= '1';
		ckEN <= '1';
		wait for ck_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for ck_period*10;
	
		
      -- insert stimulus here 

      wait;
   end process;

END;
