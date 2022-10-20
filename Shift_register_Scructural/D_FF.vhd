----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 10:56:14 11/10/2021
-- Design Name:
-- Module Name: D_FF - Behavioral
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



entity D_FF is

	port( E : in std_logic;
			CLK : in std_logic;
			RST : in std_logic;
			I : in std_logic;
			Q : out std_logic
	);

end D_FF;


architecture Behavioral of D_FF is

begin

	proc : process(CLK, RST)
	begin

		if(RST = '1') then

			Q <= '0';

		elsif(rising_edge(CLK) and E = '1') then

			Q <= I;

		end if;
	end process;
end Behavioral;