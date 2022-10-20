--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:31:54 10/30/2021
-- Design Name:   
-- Module Name:   /home/so/Scrivania/esercizio_2/Encoder_prioritario_tb.vhd
-- Project Name:  esercizio_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Encoder_prioritario
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
 
ENTITY Encoder_prioritario_tb IS
END Encoder_prioritario_tb;
 
ARCHITECTURE behavior OF Encoder_prioritario_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Encoder_prioritario
    PORT(
         I : IN  std_logic_vector(9 downto 0);
         U : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal U : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Encoder_prioritario PORT MAP (
          I => I,
          U => U
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here
		I <= "1010101010";
		wait for 5 ns;
		assert U = "1001"
		report "errore1"
		severity failure;
		
      wait for 10 ns;
		
      I <= "0101011111";
		wait for 5 ns;
		assert U = "1000"
		report "errore2"
		severity failure;
		
      wait for 10 ns;
		 
      I <= "0000101010";
		wait for 5 ns;
		assert U = "0101"
		report "errore3"
		severity failure;
		
      wait for 10 ns;
		
      I <= "0010111111";
		wait for 5 ns;
		assert U = "0111"
		report "errore4"
		severity failure;
		
      wait for 10 ns;
		  
      I <= "0001110111";
		wait for 5 ns;
		assert U = "0110"
		report "errore5"
		severity failure;
		
      wait for 10 ns;
		
      I <= "0000000001";
		wait for 5 ns;
		assert U = "0000"
		report "errore6"
		severity failure;
		
      wait for 10 ns;
		
      I <= "0000010101";
		wait for 5 ns;
		assert U = "0100"
		report "errore7"
		severity failure;
		
      wait for 10 ns;
		
      I <= "0000000010";
		wait for 5 ns;
		assert U = "0001"
		report "errore8"
		severity failure;
		
	   wait for 10 ns;
		
	   I <= "1000000000";
		wait for 5 ns;
		assert U = "1001"
		report "errore9"
		severity failure;
		
	   wait for 10 ns;
		
	   I <= "0000000100";
		wait for 5 ns;
		assert U = "0010"
		report "errore10"
		severity failure;
		
	   wait for 10 ns;
		
	   I <= "0000000000";
		wait for 5 ns;
		assert U = "----"
		report "errore11"
		severity failure;

      wait;
   end process;

END;
