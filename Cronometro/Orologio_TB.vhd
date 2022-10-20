--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:56:49 03/07/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Prove/Cronometro/Orologio_TB.vhd
-- Project Name:  Cronometro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Orologio_hh_mm_ss
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
 
ENTITY Orologio_TB IS
END Orologio_TB;
 
ARCHITECTURE behavior OF Orologio_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Orologio_hh_mm_ss
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         en : IN  std_logic;
         set : IN  std_logic;
         I : IN  std_logic_vector(16 downto 0);
         Y : OUT  std_logic_vector(16 downto 0);
         DIV : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal en : std_logic := '0';
   signal set : std_logic := '0';
   signal I : std_logic_vector(16 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(16 downto 0);
   signal DIV : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Orologio_hh_mm_ss PORT MAP (
          clk => clk,
          rst => rst,
          en => en,
          set => set,
          I => I,
          Y => Y,
          DIV => DIV
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
      en <= '1';
		wait for 100ns;
		rst <= '1';
		wait for 5 ns;
		rst <= '0';
		wait for 10 ns;
		
      
      wait;
   end process;

END;
