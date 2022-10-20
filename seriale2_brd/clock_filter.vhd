----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 23:06:01 10/22/2012
-- Design Name:
-- Module Name: clock_filter - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_filter is

	generic(
		CLKIN_freq : integer := 50000000; --clock board 50MHz
		CLKOUT_freq2 : integer := 1000
	
	);
	
	Port (
		clock_in : in STD_LOGIC;
		reset : in STD_LOGIC;
		clock_out2 : out STD_LOGIC		-- attenzione: non un vero clock ma un impulso che sar usato come enable
	);
	
end clock_filter;

architecture Behavioral of clock_filter is


	signal clockfx2 : std_logic := '0';
	constant count_max_value2 : integer := CLKIN_freq/(CLKOUT_freq2)-1;

begin


	clock_out2 <= clockfx2;


count_for_division2: process(clock_in)
	variable counter2 : integer range 0 to count_max_value2 := 0;
	
	begin

		if (clock_in'event and clock_in = '1') then
			if( reset = '1') then
				counter2 := 0;
				clockfx2 <= '0';
		else
			if counter2 = count_max_value2 then
				clockfx2 <= '1';
				counter2 := 0;
			else
				clockfx2 <= '0';
				counter2 := counter2 + 1;
			end if;
		end if;
	end if;
end process;


end Behavioral;