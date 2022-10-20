--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:33:55 10/28/2021
-- Design Name:   
-- Module Name:   /home/ise/vhdl/esercizio1/mux_2_1_tb.vhd
-- Project Name:  esercizio1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_2_1
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
 
ENTITY mux_2_1_tb IS
END mux_2_1_tb;
 
ARCHITECTURE behavior OF mux_2_1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2_1
    PORT(s : in std_logic;
			a0,a1 : in std_logic;
			y : out std_logic );
    END COMPONENT;
    
	 signal s : std_logic := '0';
	 signal a0 : std_logic := '0';
	 signal a1 : std_logic := '0';
	 signal y : std_logic := '0';
	 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2_1 PORT MAP (
	s => s,
	a0 => a0,
	a1 => a1,
	y => y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		a0 <= '0';
		a1 <= '0';
		wait for 10 ns;
		s <= '0';
		wait for 5 ns;
		assert y = '0'
		report "errore1"
		severity failure;
		
		a0 <= '0';
		a1 <= '0';
		wait for 10 ns;
		s <= '1';
		wait for 5 ns;
		assert y = '0'
		report "errore2"
		severity failure;
		
		a0 <= '0';
		a1 <= '1';
		wait for 10 ns;
		s <= '0';
		wait for 5 ns;
		assert y = '0'
		report "errore3"
		severity failure;
		
		wait for 5 ns;
		a0 <= '0';
		a1 <= '1';
		wait for 10 ns;
		s <= '1';
		wait for 5 ns;
		assert y = '1'
		report "errore4"
		severity failure;
		
		wait for 5 ns;
		a0 <= '1';
		a1 <= '0';
		wait for 10 ns;
		s <= '0';
		wait for 5 ns;
		assert y = '1'
		report "errore5"
		severity failure;
		
		wait for 5 ns;
		a0 <= '1';
		a1 <= '0';
		wait for 10 ns;
		s <= '1';
		wait for 5 ns;
		assert y = '0'
		report "errore6"
		severity failure;
		
		wait for 5 ns;
		a0 <= '1';
		a1 <= '1';
		wait for 10 ns;
		s <= '0';
		wait for 5 ns;
		assert y = '1'
		report "errore7"
		severity failure;
		
		wait for 5 ns;
		a0 <= '1';
		a1 <= '1';
		wait for 10 ns;
		s <= '1';
		wait for 5 ns;
		assert y = '1'
		report "errore8"
		severity failure;

      wait;
   end process;

END;
