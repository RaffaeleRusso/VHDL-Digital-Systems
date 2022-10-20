library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registroChiave is 
	generic(N : integer := 32);
	port( 
		chiave : in std_logic_vector(N-1 downto 0);
		CLK, RST, start: in std_logic;
		output: out std_logic_vector(N-1 downto 0) := (others => '0')
		);
end registroChiave;

architecture behavioural of registroChiave is

	begin
	
	proc: process(CLK, RST)
		begin
			if(RST = '1') then
				output <= (others=>'0');		   
			elsif(rising_edge(CLK)) then
				if (start = '1') then --carico il divisore
					output <= chiave;
				end if;
			end if;
			
	end process;
end behavioural;
		  