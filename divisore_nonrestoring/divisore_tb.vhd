--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:23:20 09/07/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/divisore_nonrestoring/divisore_tb.vhd
-- Project Name:  divisore_nonrestoring
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Divisore
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
 
ENTITY divisore_tb IS
END divisore_tb;
 
ARCHITECTURE behavior OF divisore_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Divisore_NR
    PORT(
         divisore : IN  std_logic_vector(3 downto 0);
         dividendo : IN  std_logic_vector(3 downto 0);
         start : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal divisore : std_logic_vector(3 downto 0) := (others => '0');
   signal dividendo : std_logic_vector(3 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Divisore_NR PORT MAP (
          divisore => divisore,
          dividendo => dividendo,
          start => start,
          RST => RST,
          CLK => CLK,
          OUTPUT => OUTPUT
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
		dividendo  <= "1000";
      divisore <= "0011";
		wait for 20 ns;
		RST <= '1';
		wait for  20 ns;
		RST <= '0';
		wait for 20 ns;
		start <= '1';
		wait for 20 ns;
		start <= '0';
		
      wait;
   end process;

END;
