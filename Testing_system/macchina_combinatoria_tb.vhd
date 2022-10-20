--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:55:32 03/04/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/Testing_system/macchina_combinatoria_tb.vhd
-- Project Name:  Testing_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Macchina_combinatoria
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
 
ENTITY macchina_combinatoria_tb IS
END macchina_combinatoria_tb;
 
ARCHITECTURE behavior OF macchina_combinatoria_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Macchina_combinatoria
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Macchina_combinatoria PORT MAP (
          X => X,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		X<="0001";
		wait for 5 ns;
		assert Y="001"
		report "errore1"
		severity failure;
		
		
		X<="0010";
		wait for 5 ns;
		assert Y="001"
		report "errore2"
		severity failure;
	
		
		X<="0011";
		wait for 5 ns;
		assert Y="010"
		report "errore3"
		severity failure;
		
		X<="0100";
		wait for 5 ns;
		assert Y="001"
		report "errore4"
		severity failure;
		
      wait;
   end process;

END;
