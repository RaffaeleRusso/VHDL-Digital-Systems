library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFD is
	port( 
		CLK, RST, d, EN: in std_logic;
      y: out std_logic :='0');
end FFD;

architecture behavioural of FFD is

	begin
	
	FF_D: process(clk, rst)
		  begin
		  
			if(RST = '1') then	
				y <= '0';
			elsif(falling_edge(CLK)) then 
				if (EN = '1') then
					y <= d;
				end if;
		
	     end if;
		end process;
		  
end behavioural;