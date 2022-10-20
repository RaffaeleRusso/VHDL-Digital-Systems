--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:22:16 09/13/2022
-- Design Name:   
-- Module Name:   /home/ale/Scrivania/Blow_Fish/BlowFish_Decr_TB.vhd
-- Project Name:  Blow_Fish
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Blowfish
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
 
ENTITY BlowFish_Decr_TB IS
END BlowFish_Decr_TB;
 
ARCHITECTURE behavior OF BlowFish_Decr_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Blowfish
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         start : IN  std_logic;
         m : IN  std_logic;
         Plaintext : IN  std_logic_vector(63 downto 0);
         K : IN  std_logic_vector(31 downto 0);
         Ciphertext : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal start : std_logic := '0';
   signal m : std_logic := '0';
   signal Plaintext : std_logic_vector(63 downto 0) := (others => '0');
   signal K : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Ciphertext : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Blowfish PORT MAP (
          CLK => CLK,
          RST => RST,
          start => start,
          m => m,
          Plaintext => Plaintext,
          K => K,
          Ciphertext => Ciphertext
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
      wait for 200 ns;	
		M <= '1';
		Plaintext <= X"77dc1acb9a5a70b1";
		--Plaintext <= X"123456abcd132536";
		K <= X"aabb0918";
		start <= '1';
		wait for 20 ns;
		start <= '0';
      wait;

   end process;

END;
