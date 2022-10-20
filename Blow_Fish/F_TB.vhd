--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:32:02 09/11/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Esercizi/Progetto_libero_Blowfish/F_TB.vhd
-- Project Name:  Progetto_libero_Blowfish
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: F
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
 
ENTITY F_TB IS
END F_TB;
 
ARCHITECTURE behavior OF F_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT F
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         EN : IN  std_logic;
         Xl : IN  std_logic_vector(31 downto 0);
         Y : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal EN : std_logic := '0';
   signal Xl : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: F PORT MAP (
          CLK => CLK,
          RST => RST,
          EN => EN,
          Xl => Xl,
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
		Xl <= X"360b3c23";
		EN <= '1';
      wait;
   end process;

END;
