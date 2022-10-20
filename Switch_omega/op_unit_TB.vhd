--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:11:22 09/08/2022
-- Design Name:   
-- Module Name:   /home/vincenzo/Scrivania/Progetti_Xilinx/Esercizi/Switch_omega/op_unit_TB.vhd
-- Project Name:  Switch_omega
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: op_unit
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
 
ENTITY op_unit_TB IS
END op_unit_TB;
 
ARCHITECTURE behavior OF op_unit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT op_unit
    PORT(
         IN0 : IN  std_logic_vector(1 downto 0);
         IN1 : IN  std_logic_vector(1 downto 0);
         IN2 : IN  std_logic_vector(1 downto 0);
         IN3 : IN  std_logic_vector(1 downto 0);
         SRC : IN  std_logic_vector(1 downto 0);
         DEST : IN  std_logic_vector(1 downto 0);
         OUT0 : OUT  std_logic_vector(1 downto 0);
         OUT1 : OUT  std_logic_vector(1 downto 0);
         OUT2 : OUT  std_logic_vector(1 downto 0);
         OUT3 : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IN0 : std_logic_vector(1 downto 0) := (others => '0');
   signal IN1 : std_logic_vector(1 downto 0) := (others => '0');
   signal IN2 : std_logic_vector(1 downto 0) := (others => '0');
   signal IN3 : std_logic_vector(1 downto 0) := (others => '0');
   signal SRC : std_logic_vector(1 downto 0) := (others => '0');
   signal DEST : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal OUT0 : std_logic_vector(1 downto 0);
   signal OUT1 : std_logic_vector(1 downto 0);
   signal OUT2 : std_logic_vector(1 downto 0);
   signal OUT3 : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: op_unit PORT MAP (
          IN0 => IN0,
          IN1 => IN1,
          IN2 => IN2,
          IN3 => IN3,
          SRC => SRC,
          DEST => DEST,
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
		SRC <= "01";
		DEST <= "11";
		IN1 <= "11";
      
		wait for 20 ns;
		SRC <= "00";
		DEST <= "10";
		IN0 <= "01";
		wait;
   end process;

END;
