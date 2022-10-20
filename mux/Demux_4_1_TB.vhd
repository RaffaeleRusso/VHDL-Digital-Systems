--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:36:40 02/16/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Es_pronti/Esercizio_1/Demux_4_1_TB.vhd
-- Project Name:  Esercizio_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DEMUX_1_4
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
 
ENTITY Demux_4_1_TB IS
END Demux_4_1_TB;
 
ARCHITECTURE behavior OF Demux_4_1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEMUX_1_4
    PORT(
         d : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         c : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal c : std_logic_vector(0 to 3);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEMUX_1_4 PORT MAP (
          d => d,
          s => s,
          c => c
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		d <= '0';
		wait for 100 ns;
		s <= "00";
		wait for 5 ns;
		assert c="0---"
		report "errore1"
		severity failure;
		
		wait for 100 ns;
		s <= "01";
		wait for 5 ns;
		assert c="-0--"
		report "errore1"
		severity failure;
		
		wait for 100 ns;
		s <= "10";
		wait for 5 ns;
		assert c="--0-"
		report "errore1"
		severity failure;
		
		wait for 100 ns;
		s <= "11";
		wait for 5 ns;
		assert c="---0"
		report "errore1"
		severity failure;
		
		d <= '1';
		wait for 100 ns;
		s <= "00";
		wait for 5 ns;
		assert c="1---"
		report "errore1"
		severity failure;
		
		wait for 100 ns;
		s <= "01";
		wait for 5 ns;
		assert c="-1--"
		report "errore1"
		severity failure;
		
		wait for 100 ns;
		s <= "10";
		wait for 5 ns;
		assert c="--1-"
		report "errore1"
		severity failure;
		
		wait for 100 ns;
		s <= "11";
		wait for 5 ns;
		assert c="---1"
		report "errore1"
		severity failure;
		
      wait;
   end process;

END;
