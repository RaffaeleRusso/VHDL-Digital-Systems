--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:36:34 10/17/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/progetto_esame/full_tb.vhd
-- Project Name:  progetto_esame
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_box
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
 
ENTITY full_tb IS
END full_tb;
 
ARCHITECTURE behavior OF full_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_box
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
			go : in std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
	 signal go : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_box PORT MAP (
          CLK => CLK,
          RST => RST,
			 go => go
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

      RST <= '1';
		wait for CLK_period;
		go <= '1';
		RST <= '0';
		wait for CLK_period;
		go <= '0';
		

      wait;
   end process;

END;
