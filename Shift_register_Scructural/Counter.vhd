----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:46 11/10/2021 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
	
	port( CLK : in std_logic;
			RST : in std_logic;
			START : in std_logic;
			Y : in std_logic_vector(0 to 3);
			C : out std_logic
	);
	
end Counter;

architecture Behavioral of Counter is

begin

	proc : process(RST, CLK)
	
	variable count : integer := 0;
	variable count_max : integer := to_integer(unsigned(Y));

	begin
	
		if(RST = '1') then
			
			C <= '0';
			count := 0;
			
		elsif(CLK'event and CLK = '1') then

			if(count /= count_max) then
				
				C <= '1';
				count := count + 1;
				
			else 
				
				C <= '0';
				
				if(START = '1') then
					
					--C <= '1';
					count := 0;
					count_max := to_integer(unsigned(Y));
				
				end if;
			end if;
		end if;		
	end process;
end Behavioral;

