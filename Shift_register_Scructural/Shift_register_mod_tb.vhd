--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:37 11/15/2021
-- Design Name:   
-- Module Name:   /home/so/Scrivania/Shift_register_Scructural/Shift_register_mod_tb.vhd
-- Project Name:  Shift_register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_register_mod
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
 
ENTITY Shift_register_mod_tb IS
END Shift_register_mod_tb;
 
ARCHITECTURE behavior OF Shift_register_mod_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_register_mod
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         START : IN  std_logic;
         M : IN  std_logic;
         Y : IN  std_logic_vector(0 to 3);
         I : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal START : std_logic := '0';
   signal M : std_logic := '0';
   signal Y : std_logic_vector(0 to 3) := (others => '0');
   signal I : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_register_mod PORT MAP (
          CLK => CLK,
          RST => RST,
          START => START,
          M => M,
          Y => Y,
          I => I,
          Z => Z
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
		Y <= "0100";
		START <= '1';
		wait for 20 ns;
		I <= '0';
		wait for 20 ns;
		I <= '1';
		wait for 20 ns;
		I <= '0';
		wait for 20 ns;
		I <= '1';
		START <= '0';
		wait for 60 ns;
		M <= '1';
		START <= '1';
		wait for 20 ns;
		I <= '0';
		wait for 20 ns;
		I <= '1';
		wait for 20 ns;
		I <= '0';
		wait for 20 ns;
		I <= '1';
		START <= '0';
		

      wait;
   end process;

END;
