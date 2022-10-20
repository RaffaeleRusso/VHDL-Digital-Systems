--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:04:33 10/31/2021
-- Design Name:   
-- Module Name:   /home/so/Scrivania/esercizio_3/riconoscitore_sequenza_tb.vhd
-- Project Name:  esercizio_3
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
 
ENTITY riconoscitore_sequenza_tb IS
END riconoscitore_sequenza_tb;
 
ARCHITECTURE behavior OF riconoscitore_sequenza_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT riconoscitore_sequenza
    PORT(
         I : IN  std_logic;
         CLK : IN  std_logic;
         M : IN  std_logic;
         RST : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic := '0';
   signal CLK : std_logic := '0';
   signal M : std_logic := '0';
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
          M => M,
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

      wait for CLK_period*10;

      -- insert stimulus here 
		RST <= '1';
		wait for 10 ns;
		M <= '1';
		wait for 10 ns;
		RST <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 5 ns;
		assert Y = '1'
		report "errore1"
		severity failure;
		
		RST <= '1';
		M <= '0';
		wait for 10 ns;
		RST <= '0';
		I <= '1';
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 5 ns;
		assert Y = '1'
		report "errore2"
		severity failure;
		
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		RST <= '1';
		M <= '1';
		wait for 10 ns;
		RST <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 5 ns;
		assert Y = '1'
		report "errore3"
		severity failure;
		
		wait for 10 ns;
		
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		RST <= '1';
		M <= '0';
		wait for 10 ns;
		RST <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		I <= '0';
		wait for 10 ns;
		I <= '1';
		wait for 10 ns;
		assert Y = '0'
		report "errore4"
		severity failure;
		
      wait;
   end process;
END;
