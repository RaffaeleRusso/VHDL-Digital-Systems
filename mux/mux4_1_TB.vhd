--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:32:31 02/14/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Es_pronti/Esercizio_1/mux4_1_TB.vhd
-- Project Name:  Esercizio_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_4_1
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
 
ENTITY mux4_1_TB IS
END mux4_1_TB;
 
ARCHITECTURE behavior OF mux4_1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4_1
    PORT(
         a : IN  std_logic_vector(0 to 3);
         s : IN  std_logic_vector(1 downto 0);
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(0 to 3) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4_1 PORT MAP (
          a => a,
          s => s,
          z => z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here 
		a <= "1111";
		s <= "11";
		wait for 5 ns;
		assert z='1'
		report "errore1"
		severity failure;
		wait for 20 ns;
		
		a <= "0100";
		s <= "10";
		wait for 5 ns;
		assert z='0'
		report "errore2"
		severity failure;
		wait for 20 ns;
		
		a <= "1110";
		s <= "00";
		wait for 5 ns;
		assert z='1'
		report "errore3"
		severity failure;
		wait for 20 ns;
		
		a <= "0010";
		s <= "01";
		wait for 5 ns;
		assert z='0'
		report "errore4"
		severity failure;
		wait for 20 ns;
		
		a <= "0001";
		s <= "11";
		wait for 5 ns;
		assert z='1'
		report "errore5"
		severity failure;
		wait for 20 ns;
		
		a <= "0110";
		s <= "01";
		wait for 5 ns;
		assert z='1'
		report "errore6"
		severity failure;
		wait for 20 ns;
		
		a <= "1110";
		s <= "11";
		wait for 5 ns;
		assert z='0'
		report "errore7"
		severity failure;
		wait for 20 ns;
		

      wait;
   end process;

END;
