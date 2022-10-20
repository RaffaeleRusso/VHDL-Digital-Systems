--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:53:58 03/07/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/progetti_vhdl_ok/Orologio5.2/Orologio_TB.vhd
-- Project Name:  Orologio5.2
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
         set_h : IN  std_logic;
         set_m : IN  std_logic;
         set_s : IN  std_logic;
         I : IN  std_logic_vector(5 downto 0);
         Y : OUT  std_logic_vector(16 downto 0);
         DIV : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal en : std_logic := '0';
   signal set_h : std_logic := '0';
   signal set_m : std_logic := '0';
   signal set_s : std_logic := '0';
   signal I : std_logic_vector(5 downto 0) := (others => '0');

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
          set_h => set_h,
          set_m => set_m,
          set_s => set_s,
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here
			EN<='1';
			SET_M<='1';
			I<="111111";
			wait for clk_period;
			SET_M<='0';
			

      wait;
   end process;

END;
