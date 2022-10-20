library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registroDivisore is 
	generic(N : integer := 4);
	port( 
		divisore : in std_logic_vector(N-1 downto 0);
		CLK, RST, start: in std_logic;
		output: out std_logic_vector(N-1 downto 0) := (others => '0')
		);
end registroDivisore;

architecture behavioural of registroDivisore is

	begin
	
	proc: process(clk, rst)
		begin
			
				if(RST = '1') then
					output <= (others=>'0');		   
				elsif(rising_edge(CLK)) then
					if (start = '1') then --carico il divisore
						output <= divisore;
					end if;
				end if;
			
	end process;
end behavioural;
		  