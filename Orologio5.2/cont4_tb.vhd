--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:47:30 03/07/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/Orologio5.2/cont4_tb.vhd
-- Project Name:  Orologio5.2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contatore_4
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
 
ENTITY cont4_tb IS
END cont4_tb;
 
ARCHITECTURE behavior OF cont4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contatore_4
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         en : IN  std_logic;
         set : IN  std_logic;
         I : IN  std_logic_vector(1 downto 0);
         DIV : OUT  std_logic;
         Y : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal en : std_logic := '0';
   signal set : std_logic := '0';
   signal I : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal DIV : std_logic;
   signal Y : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contatore_4 PORT MAP (
          clk => clk,
          rst => rst,
          en => en,
          set => set,
          I => I,
          DIV => DIV,
          Y => Y
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
	
      -- insert stimulus here 
		en<='1';

      wait;
   end process;

END;
