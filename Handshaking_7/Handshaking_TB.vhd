--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:09:24 09/16/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Esercizi/Handshaking_7/Handshaking_TB.vhd
-- Project Name:  Handshaking_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Handshaking_system
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
 
ENTITY Handshaking_TB IS
END Handshaking_TB;
 
ARCHITECTURE behavior OF Handshaking_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Handshaking_system
    PORT(
         start : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal start : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Handshaking_system PORT MAP (
          start => start,
          CLK => CLK,
          RST => RST
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		start <= '1';
		wait for 20 ns;
		start <= '0';
      wait;
   end process;

END;
