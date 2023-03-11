--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:24:43 12/13/2022
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Documents/FPGA/LFSR_3/tbb.vhd
-- Project Name:  LFSR_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LFSR_top
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
 
ENTITY tbb IS
END tbb;
 
ARCHITECTURE behavior OF tbb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LFSR_top
    PORT(
         ck : IN  std_logic;
         sgmCom_01 : OUT  std_logic;
         sgmOut : OUT  std_logic_vector(13 downto 0);
         leds : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ck : std_logic := '0';

 	--Outputs
   signal sgmCom_01 : std_logic;
   signal sgmOut : std_logic_vector(13 downto 0);
   signal leds : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace ck below with 
   -- appropriate port name 
 
   constant ck_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LFSR_top PORT MAP (
          ck => ck,
          sgmCom_01 => sgmCom_01,
          sgmOut => sgmOut,
          leds => leds
        );

   -- Clock process definitions
   ck_process :process
   begin
		ck <= '0';
		wait for ck_period/2;
		ck <= '1';
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
