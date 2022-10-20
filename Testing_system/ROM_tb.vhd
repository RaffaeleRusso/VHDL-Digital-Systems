--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:26:59 03/04/2022
-- Design Name:   
-- Module Name:   /home/ise/vhdl/Testing_system/ROM_tb.vhd
-- Project Name:  Testing_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
ENTITY ROM_tb IS
END ROM_tb;
 
ARCHITECTURE behavior OF ROM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         BTN_READ : IN  std_logic;
         ADDR : IN  std_logic_vector(3 downto 0);
         DATA : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal BTN_READ : std_logic := '0';
   signal ADDR : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal DATA : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          CLK => CLK,
          RST => RST,
          BTN_READ => BTN_READ,
          ADDR => ADDR,
          DATA => DATA
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
		wait for 100 ns;
		
      BTN_READ <= '1';
		ADDR <= "0000";
		wait for CLK_period;
		assert DATA<= "1111"
		report "errore1"
		severity failure;
		
		ADDR <= "0001";
		wait for CLK_period;
		assert DATA<= "1110"
		report "errore2"
		severity failure;
		
		ADDR <= "0010";
		wait for CLK_period;
		assert DATA<= "1101"
		report "errore3"
		severity failure;
		
		ADDR <= "0011";
		wait for CLK_period;
		assert DATA<= "1100"
		report "errore4"
		severity failure;
		
		ADDR <= "0100";
		wait for CLK_period;
		assert DATA<= "1011"
		report "errore5"
		severity failure;
		
		ADDR <= "0101";
		wait for CLK_period;
		assert DATA<= "1010"
		report "errore6"
		severity failure;
		
		ADDR <= "0110";
		wait for CLK_period;
		assert DATA<= "1001"
		report "errore7"
		severity failure;
		
		ADDR <= "0111";
		wait for CLK_period;
		assert DATA<= "1000"
		report "errore8"
		severity failure;
		
      wait;
   end process;

END;

