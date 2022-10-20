--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:08:12 09/06/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Esercizi/Esercizio_9_2/Trasmettitore_TB.vhd
-- Project Name:  Esercizio_9_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Trasmettitore
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
 
ENTITY Trasmettitore_TB IS
END Trasmettitore_TB;
 
ARCHITECTURE behavior OF Trasmettitore_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Trasmettitore
    PORT(
         START : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         TXD : OUT  std_logic;
         DTR : OUT  std_logic;
         DSR : IN  std_logic;
         RTS : OUT  std_logic;
         CTS : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal START : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal DSR : std_logic := '0';
   signal CTS : std_logic := '0';

 	--Outputs
   signal TXD : std_logic;
   signal DTR : std_logic;
   signal RTS : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Trasmettitore PORT MAP (
          START => START,
          CLK => CLK,
          RST => RST,
          TXD => TXD,
          DTR => DTR,
          DSR => DSR,
          RTS => RTS,
          CTS => CTS
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
		START <= '1';
		wait for 20 ns;
		DSR <= '1';
		wait for 50 ns;
		CTS <= '1';
		wait for 30 us;
		CTS <= '0';
		
		wait for 1 us;
		CTS <= '1';
		wait for 30 us;
		CTS <= '0';
		
		wait for 1 us;
		CTS <= '1';
		wait for 30 us;
		CTS <= '0';
		wait for 1 us;
		CTS <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
