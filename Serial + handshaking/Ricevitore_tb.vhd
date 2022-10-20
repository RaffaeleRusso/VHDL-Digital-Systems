--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:26:44 09/06/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/es_seriale2/Ricevitore_tb.vhd
-- Project Name:  es_seriale2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ricevitore
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
 
ENTITY Ricevitore_tb IS
END Ricevitore_tb;
 
ARCHITECTURE behavior OF Ricevitore_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ricevitore
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         RXD : IN  std_logic;
         DTR : OUT  std_logic;
         DSR : IN  std_logic;
         RTS : OUT  std_logic;
         CTS : IN  std_logic;
         ERROR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal RXD : std_logic := '0';
   signal DSR : std_logic := '0';
   signal CTS : std_logic := '0';

 	--Outputs
   signal DTR : std_logic;
   signal RTS : std_logic;
   signal ERROR : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ricevitore PORT MAP (
          CLK => CLK,
          RST => RST,
          RXD => RXD,
          DTR => DTR,
          DSR => DSR,
          RTS => RTS,
          CTS => CTS,
          ERROR => ERROR
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

      wait;
   end process;

END;
