--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:51 10/17/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/progetto_esame/ricon_tb.vhd
-- Project Name:  progetto_esame
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: riconoscitore_sequenza
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
 
ENTITY ricon_tb IS
END ricon_tb;
 
ARCHITECTURE behavior OF ricon_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT riconoscitore_sequenza
    PORT(
         I : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Y : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: riconoscitore_sequenza PORT MAP (
          I => I,
          CLK => CLK,
          RST => RST,
          Y => Y
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
		RST <= '1';
      wait for CLK_period*10;
		RST <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		  I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		RST <= '1';
		wait for CLK_period;
		RST <= '0';
		I <= '1';
		wait for CLK_period;
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
      wait;
   end process;

END;
