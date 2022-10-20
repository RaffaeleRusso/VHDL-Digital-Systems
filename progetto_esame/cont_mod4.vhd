library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cont16 is
	port( CLK, RST: in std_logic;
		  en: in std_logic;
		  count: out std_logic_vector(3 downto 0);
		  div : out std_logic);
end cont16;

architecture behavioural of cont16 is
	signal c: std_logic_vector(3 downto 0) := (others => '0');
	
	begin	
	CM16: process(CLK,RST)
	begin
		if(RST = '1') then 
			c <= (others=>'0');
			div <= '0';
		elsif(falling_edge(CLK))then
			if (en = '1') then
					c <= std_logic_vector(unsigned(c) + 1);
					if  (c = "1110") then
						div <='1';
					else
						div <= '0';
					end if;
			end if;
			
		end if;
		end process;
		
	count<= c;
end behavioural;