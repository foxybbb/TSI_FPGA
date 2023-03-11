--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:17:52 10/07/2022
-- Design Name:   
-- Module Name:   C:/Users/st75026/Desktop/FPGA/Lab1/Adder_btw.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder_top
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
 
ENTITY Adder_btw IS
END Adder_btw;
 
ARCHITECTURE behavior OF Adder_btw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder_top
    PORT(
         A_in : IN  std_logic_vector(3 downto 0);
         B_in : IN  std_logic_vector(3 downto 0);
         S_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_in : std_logic_vector(3 downto 0) := (others => '0');
   signal B_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S_out : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder_top PORT MAP (
          A_in => A_in,
          B_in => B_in,
          S_out => S_out
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     A_in <= "1011";
	  B_in <= "1010";
	  wait for 10 ns ;
	  B_in <= "1011";

      -- insert stimulus here 

      wait;
   end process;

END;
