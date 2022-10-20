library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cont4 is
	port( CLK, RST: in std_logic;
		  count_in: in std_logic;
		  div: out std_logic;
		  count: out std_logic_vector(1 downto 0));
end cont4;

architecture behavioural of cont4 is
	signal c: std_logic_vector(1 downto 0);
	
	begin	
	CM4: process(CLK, RST, count_in)
	begin
		if(RST = '1') then 
			c <= (others=>'0');
			div <= '0';
		elsif(rising_edge(CLK) and count_in = '1') then
			c <= std_logic_vector(unsigned(c) + 1);
			if(c = "11") then div <= '1';
			else div <= '0';
			end if;
		end if;
		end process;
		
	count<= c;
end behavioural;