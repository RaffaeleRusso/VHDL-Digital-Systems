----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:47 10/29/2021 
-- Design Name: 
-- Module Name:    mux_4_1 - Structural 
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

entity mux_4_1 is

	port( a : in std_logic_vector(0 to 3);
			s : in std_logic_vector(1 downto 0);
			z : out std_logic
	);
	
end mux_4_1;

architecture Structural of mux_4_1 is

	component mux_2_1 is 
		port(	s : in std_logic;
				a0,a1 : in std_logic;
				y : out std_logic );
	end component;
	
	signal u : std_logic_vector(0 to 1);

begin

	mux_0_1: for i in 0 to 1 generate m : mux_2_1 
		port map( a0 => a(i*2),
					 a1 => a(i*2 + 1),
					 s => s(0),
					 y => u(i)
		);
	end generate;
		
	mux_2: mux_2_1
		port map( a0 => u(0),
					 a1 => u(1),
					 s => s(1),
					 y => z
		);
		
end Structural;

