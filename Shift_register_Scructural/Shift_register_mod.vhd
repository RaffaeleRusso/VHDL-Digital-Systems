----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:29 11/15/2021 
-- Design Name: 
-- Module Name:    Shift_register_mod - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shift_register_mod is

	port( CLK : in std_logic;
			RST : in std_logic;
			START : in std_logic;
			M : in std_logic;
			Y : in std_logic_vector(0 to 3);
			I : in std_logic;
			Z : out std_logic
	);
	
end Shift_register_mod;

architecture Behavioral of Shift_register_mod is

	signal T : std_logic;

	component Counter
	
		port( CLK : in std_logic;
				RST : in std_logic;
				START : in std_logic;
				Y : in std_logic_vector(0 to 3);
				C : out std_logic
		);
		
	end component;
	
	component Shift_register
	
		port( CLK : in std_logic;
				M : in std_logic;
				E : in std_logic;
				RST : in std_logic;
				I : in std_logic;
				Z : out std_logic
		);
		
	end component;

begin
	
	Counter_0 : Counter
	
	port map( CLK => CLK,
				 RST => RST,
				 START => START,
				 Y => Y,
				 C => T
	);
	
	Shift_register_0: Shift_register
	
	port map( CLK => CLK,
				 M => M,
				 E => T,
				 RST => RST,
				 I => I,
				 Z => Z
	);
	
end Behavioral;

