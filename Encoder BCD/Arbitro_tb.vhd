--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:00:53 10/30/2021
-- Design Name:   
-- Module Name:   /home/so/Scrivania/esercizio_2/Arbitro_tb.vhd
-- Project Name:  esercizio_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Arbitro
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
 
ENTITY Arbitro_tb IS
END Arbitro_tb;
 
ARCHITECTURE behavior OF Arbitro_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Arbitro
    PORT(
         A : IN  std_logic_vector(9 downto 0);
         B : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal A : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal B : std_logic_vector(9 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Arbitro PORT MAP (
          A => A,
          B => B
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
	  A <= "1010101010";
	  wait for 5 ns;
	  assert B = "1000000000"
	  report "errore1"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0101011111";
	  wait for 5 ns;
	  assert B = "0100000000"
	  report "errore2"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0000101010";
	  wait for 5 ns;
	  assert B = "0000100000"
	  report "errore3"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0010111111";
	  wait for 5 ns;
	  assert B = "0010000000"
	  report "errore4"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0001110111";
	  wait for 5 ns;
	  assert B = "0001000000"
	  report "errore5"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0000000001";
	  wait for 5 ns;
	  assert B = "0000000001"
	  report "errore6"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0000010101";
	  wait for 5 ns;
	  assert B = "0000010000"
	  report "errore7"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0000000010";
	  wait for 5 ns;
	  assert B = "0000000010"
	  report "errore8"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "1000000000";
	  wait for 5 ns;
	  assert B = "1000000000"
	  report "errore9"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0000000100";
	  wait for 5 ns;
	  assert B = "0000000100"
	  report "errore10"
	  severity failure;
	  
	  wait for 10 ns;
	  
	  A <= "0000000000";
	  wait for 5 ns;
	  assert B = "----------"
	  report "errore11"
	  severity failure;

      wait;
   end process;

END;
