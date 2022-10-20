--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:52:39 10/19/2021
-- Design Name:   
-- Module Name:   /home/ise/vhdl/rete_intercon_decoder/rete_intercon_decoder_Tb.vhd
-- Project Name:  rete_intercon_decoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rete_decoder
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

ENTITY rete_intercon_decoder_Tb IS
END rete_intercon_decoder_Tb;

ARCHITECTURE behavior OF rete_intercon_decoder_Tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT rete_decoder
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(5 downto 0);
         Y : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(0 to 3);
   -- No clocks detected in port list. Replace <clock> below with
   -- appropriate port name

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: rete_decoder PORT MAP (
          X => X,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns

      -- insert stimulus here
		wait for 100 ns;

		X <= "0000";
		S <= "000000";
		wait for 5 ns;
		assert Y = "1---"
		report "errore1"
		severity failure;

		wait for 10 ns;

		X <= "1100";
		S <= "110001";
		wait for 5 ns;
		assert Y = "-1--"
		report "errore2"
		severity failure;

		wait for 10 ns;

		X <= "1110";
		S <= "111010";
		wait for 5 ns;
		assert Y = "--1-"
		report "errore3"
		severity failure;

		wait for 10 ns;

		X <= "1111";
		S <= "110011";
		wait for 5 ns;
		assert Y = "---0"
		report "errore4"
		severity failure;

      wait;
   end process;

END;
