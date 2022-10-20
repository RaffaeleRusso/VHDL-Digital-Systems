--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:32:11 10/30/2021
-- Design Name:   
-- Module Name:   /home/so/Scrivania/esercizio_2/encoder_10_4_tb.vhd
-- Project Name:  esercizio_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder_10_4
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
 
ENTITY encoder_10_4_tb IS
END encoder_10_4_tb;
 
ARCHITECTURE behavior OF encoder_10_4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder_10_4
    PORT(
         X : IN  std_logic_vector(9 downto 0);
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder_10_4 PORT MAP (
          X => X,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		X <= "0000000001";
		wait for 5 ns;
		assert Y = "0000"
		report "errore1"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "0000000010";
		wait for 5 ns;
		assert Y = "0001"
		report "errore2"
		severity failure;

	   wait for 10 ns;
		
	   X <= "0000000100";
		wait for 5 ns;
		assert Y = "0010"
		report "errore3"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "0000001000";
		wait for 5 ns;
		assert Y = "0011"
		report "errore4"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "0000010000";
		wait for 5 ns;
		assert Y = "0100"
		report "errore5"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "0000100000";
		wait for 5 ns;
		assert Y = "0101"
		report "errore6"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "0001000000";
		wait for 5 ns;
		assert Y = "0110"
		report "errore7"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "0010000000";
		wait for 5 ns;
		assert Y = "0111"
		report "errore8"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "0100000000";
		wait for 5 ns;
		assert Y = "1000"
		report "errore9"
		severity failure;
		
	   wait for 10 ns;
		
	   X <= "1000000000";
		wait for 5 ns;
		assert Y = "1001"
		report "errore10"
		severity failure;

      wait;
   end process;

END;
