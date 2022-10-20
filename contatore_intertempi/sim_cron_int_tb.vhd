--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:50:32 09/08/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/contatore_intertempi/sim_cron_int_tb.vhd
-- Project Name:  contatore_intertempi
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cron_int_board
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
 
ENTITY sim_cron_int_tb IS
END sim_cron_int_tb;
 
ARCHITECTURE behavior OF sim_cron_int_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cron_int_board
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         set : IN  std_logic;
         btn : IN  std_logic;
         hms : IN  std_logic_vector(1 downto 0);
         I : IN  std_logic_vector(5 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0);
         leds : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal set : std_logic := '0';
   signal btn : std_logic := '0';
   signal hms : std_logic_vector(1 downto 0) := (others => '0');
   signal I : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);
   signal leds : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cron_int_board PORT MAP (
          clk => clk,
          rst => rst,
          set => set,
          btn => btn,
          hms => hms,
          I => I,
          anodes => anodes,
          cathodes => cathodes,
          leds => leds
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
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
			btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		
		
		
		
		

      wait;
   end process;

END;
