--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:53:27 09/08/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Esercizi/Switch_omega/Omega_TB.vhd
-- Project Name:  Switch_omega
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Omega_network
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
 
ENTITY Omega_TB IS
END Omega_TB;
 
ARCHITECTURE behavior OF Omega_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Omega_network
    PORT(
         R : IN  std_logic_vector(0 to 3);
         DEST0 : IN  std_logic_vector(1 downto 0);
         DATO0 : IN  std_logic_vector(1 downto 0);
         DEST1 : IN  std_logic_vector(1 downto 0);
         DATO1 : IN  std_logic_vector(1 downto 0);
         DEST2 : IN  std_logic_vector(1 downto 0);
         DATO2 : IN  std_logic_vector(1 downto 0);
         DEST3 : IN  std_logic_vector(1 downto 0);
         DATO3 : IN  std_logic_vector(1 downto 0);
         OUT0 : OUT  std_logic_vector(1 downto 0);
         OUT1 : OUT  std_logic_vector(1 downto 0);
         OUT2 : OUT  std_logic_vector(1 downto 0);
         OUT3 : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic_vector(0 to 3) := (others => '0');
   signal DEST0 : std_logic_vector(1 downto 0) := (others => '0');
   signal DATO0 : std_logic_vector(1 downto 0) := (others => '0');
   signal DEST1 : std_logic_vector(1 downto 0) := (others => '0');
   signal DATO1 : std_logic_vector(1 downto 0) := (others => '0');
   signal DEST2 : std_logic_vector(1 downto 0) := (others => '0');
   signal DATO2 : std_logic_vector(1 downto 0) := (others => '0');
   signal DEST3 : std_logic_vector(1 downto 0) := (others => '0');
   signal DATO3 : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal OUT0 : std_logic_vector(1 downto 0);
   signal OUT1 : std_logic_vector(1 downto 0);
   signal OUT2 : std_logic_vector(1 downto 0);
   signal OUT3 : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Omega_network PORT MAP (
          R => R,
          DEST0 => DEST0,
          DATO0 => DATO0,
          DEST1 => DEST1,
          DATO1 => DATO1,
          DEST2 => DEST2,
          DATO2 => DATO2,
          DEST3 => DEST3,
          DATO3 => DATO3,
          OUT0 => OUT0,
          OUT1 => OUT1,
          OUT2 => OUT2,
          OUT3 => OUT3
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		R <= "1100";
		DEST0 <= "11";
		DEST1 <= "10";
		DATO0 <= "01";
		DATO1 <= "11";
		wait for 50 ns;
		R <= "0100";
		wait for 50 ns;
		
		R <= "0101";
		DEST1 <= "10";
		DEST3 <= "10";
		DATO1 <= "01";
		DATO3 <= "11";
		wait for 50 ns;
		R <= "0001";
		wait for 50 ns;
      wait;
   end process;

END;
