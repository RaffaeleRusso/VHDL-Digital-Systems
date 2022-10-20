library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Plain_register is
	generic ( N :integer := 64);
	port( 
		CLK : in std_logic;
		RST : in std_logic;
		Plain : in std_logic_vector(N-1 downto 0);
		Round_out : in std_logic_vector(N-1 downto 0);
		Y : out std_logic_vector(N-1 downto 0);		
		start : in std_logic;
		load_round_out : in std_logic
	);
end Plain_register;


architecture behavioural of Plain_register is

	signal temp: std_logic_vector(N -1 downto 0) := (others => '0');
	begin
	
	SR: process(CLK, RST)
		begin
			if(RST = '1') then 
				temp <= (others=>'0');
			elsif(rising_edge(CLK)) then
				if(start = '1') then
					temp(N-1 downto 0) <= Plain;
				elsif(load_round_out = '1') then
					temp(N-1 downto 0) <= Round_out;
				end if;
			end if;
	end process;
	
	Y <= temp;

end behavioural;
		
			