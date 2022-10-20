--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:36:29 10/17/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/progetto_esame/nodo_input_tb.vhd
-- Project Name:  progetto_esame
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Nodo_input
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
 
ENTITY nodo_input_tb IS
END nodo_input_tb;
 
ARCHITECTURE behavior OF nodo_input_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Nodo_input
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         rts : OUT  std_logic;
         cts : IN  std_logic;
         DATA : OUT  std_logic_vector(3 downto 0);
			go : in std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal cts : std_logic := '0';
	 signal go : std_logic := '0';

 	--Outputs
   signal rts : std_logic;
   signal DATA : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Nodo_input PORT MAP (
          CLK => CLK,
          RST => RST,
          rts => rts,
          cts => cts,
          DATA => DATA,
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

      -- insert stimulus here 
		go <= '1';
		wait for CLK_period*2;
		go <= '0';
		rst <= '0';
		cts <= '1';
		
      wait;
   end process;

END;
