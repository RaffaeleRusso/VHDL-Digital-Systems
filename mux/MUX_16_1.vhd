----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:08:41 10/19/2021 
-- Design Name: 
-- Module Name:    mux16 - Behavioral 
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

entity mux16 is

	port(
		I  : in STD_LOGIC_VECTOR(0 to 15);
		sel  : in STD_LOGIC_VECTOR(3 downto 0);
		O  : out STD_LOGIC
	);

end mux16;

architecture structural of mux16 is

	signal u : STD_LOGIC_VECTOR(0 to 3) := (others => '0');
	
	COMPONENT mux4
		PORT(
		   a : in  STD_LOGIC_VECTOR(0 to 3);
			s : in  STD_LOGIC_VECTOR(1 downto 0);
			z : out STD_LOGIC
		);
    END COMPONENT;
	 
	 begin 
	 
	 mux0_3: for j in 0 to 3 generate 
		a : mux4
			port map(
				a(0 to 3) => I(j*4 to j*4+3),
				s(1 downto 0) => sel(1 downto 0),
				z => u(j)
			);
		end generate;
		
		mux_4: mux4
			Port map(	
				a(0 to 3) => u,
				s(1 downto 0) => sel(3 downto 2),
				z => O
		);	
end structural;