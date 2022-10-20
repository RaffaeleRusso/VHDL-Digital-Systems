--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:55:43 02/16/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Es_pronti/Esercizio_1/Mux_16_1_TB.vhd
-- Project Name:  Esercizio_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux16
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
 
ENTITY Mux_16_1_TB IS
END Mux_16_1_TB;
 
ARCHITECTURE behavior OF Mux_16_1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux16
    PORT(
         I : IN  std_logic_vector(0 to 15);
         sel : IN  std_logic_vector(3 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(0 to 15) := (others => '0');
   signal sel : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux16 PORT MAP (
          I => I,
          sel => sel,
          O => O
        );

   -- Clock process definitions   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		I <= "0000000000000000";
		sel <= "0000";
		wait for 5 ns;
		assert O='0'
		report "errore1"
		severity failure;

      wait for 100 ns;	
		I <= "0000000000000001";
		sel <= "0001";
		wait for 5 ns;
		assert O='0'
		report "errore2"
		severity failure;

      wait for 100 ns;	
		I <= "0000000000000001";
		sel <= "1111";
		wait for 5 ns;
		assert O='0'
		report "errore3"
		severity failure;

      wait for 100 ns;	
		I <= "0000001110000000";
		sel <= "0111";
		wait for 5 ns;
		assert O='1'
		report "errore4"
		severity failure;		

		wait for 100 ns;	
		I <= "1111111111111011";
		sel <= "0010";
		wait for 5 ns;
		assert O='0'
		report "errore5"
		severity failure;		
		
		wait for 100 ns;	
		I <= "1010000000000000";
		sel <= "1101";
		wait for 5 ns;
		assert O='1'
		report "errore6"
		severity failure;
		
		wait for 100 ns;	
		I <= "1011111111111111";
		sel <= "1110";
		wait for 5 ns;
		assert O='0'
		report "errore7"
		severity failure;
		
		wait for 100 ns;	
		I <= "1111111111111101";
		sel <= "0001";
		wait for 5 ns;
		assert O='0'
		report "errore8"
		severity warning;
      wait;
   end process;

END;
