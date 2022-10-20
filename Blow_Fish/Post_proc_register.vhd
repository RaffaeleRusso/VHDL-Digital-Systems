library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Post_proc_register is
	generic ( N :integer := 32);
	port( 
		CLK : in std_logic;
		RST : in std_logic;
		SEL : in std_logic;
		EN : in std_logic;
		Xor_in : in std_logic_vector(N-1 downto 0);
		Y : out std_logic_vector(2*N-1 downto 0)
	);
end Post_proc_register;


architecture behavioural of Post_proc_register is

	signal temp: std_logic_vector(2*N-1 downto 0) := (others => '0');
	begin
	
	SR: process(CLK, RST)
		begin
			if(RST = '1') then 
				temp <= (others=>'0');
			elsif(rising_edge(CLK)) then
				if(EN = '1') then
					if (SEL = '1') then
						temp(2*N-1 downto N) <= Xor_in;
					else
						temp(N-1 downto 0) <= Xor_in;
					end if;
				end if;
			end if;
	end process;
	
	Y <= temp;

end behavioural;
		
			