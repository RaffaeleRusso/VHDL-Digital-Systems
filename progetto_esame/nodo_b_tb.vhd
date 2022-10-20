--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:21:29 10/17/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/progetto_esame/nodo_b_tb.vhd
-- Project Name:  progetto_esame
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Nodo_B
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
 
ENTITY nodo_b_tb IS
END nodo_b_tb;
 
ARCHITECTURE behavior OF nodo_b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Nodo_B
    PORT(
         CLK : IN  std_logic;
         START : IN  std_logic;
         rst : IN  std_logic;
         stop : OUT  std_logic;
         I : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal START : std_logic := '0';
   signal rst : std_logic := '0';
   signal I : std_logic := '0';

 	--Outputs
   signal stop : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Nodo_B PORT MAP (
          CLK => CLK,
          START => START,
          rst => rst,
          stop => stop,
          I => I
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
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		start <= '1';
      wait for CLK_period*10;
		start <= '0';
      I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;
		
		I <= '1';
		wait for CLK_period;
		
		I <= '0';
		wait for CLK_period;

      wait;
   end process;

END;
