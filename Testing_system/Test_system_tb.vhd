--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:49:29 11/19/2021
-- Design Name:   
-- Module Name:   /home/so/Scrivania/Testing_system/Test_system_tb.vhd
-- Project Name:  Testing_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Test_system
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
 
ENTITY Test_system_tb IS
END Test_system_tb;
 
ARCHITECTURE behavior OF Test_system_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Test_system
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         BTN_READ : IN  std_logic;
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal BTN_READ : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Test_system PORT MAP (
          CLK => CLK,
          RST => RST,
          BTN_READ => BTN_READ,
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

     
		BTN_READ <= '1';
		wait for 20 ns;
		BTN_READ <= '0';

      wait;
   end process;

END;
