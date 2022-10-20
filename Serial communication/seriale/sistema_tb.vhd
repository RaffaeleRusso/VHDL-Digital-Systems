--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:43:13 09/03/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/seriale_1/seriale/sistema_tb.vhd
-- Project Name:  seriale
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sistema
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
 
ENTITY sistema_tb IS
END sistema_tb;
 
ARCHITECTURE behavior OF sistema_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sistema
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         input : IN  std_logic_vector(0 to 2);
         start : IN  std_logic ;
         output : OUT  std_logic_vector(0 to 2)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal input : std_logic_vector(0 to 2) := (others => '0');
   signal start : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(0 to 2);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sistema PORT MAP (
          CLK => CLK,
          RST => RST,
          input => input,
          start => start,
          output => output
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
		input <= "111";
		 wait for 10000 ns;	
		start <='1';
		wait for 10000 ns;	
		start <='0';
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
