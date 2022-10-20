library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_address is

	Port ( clock : in STD_LOGIC;
			 reset : in STD_LOGIC;
			 enable : in STD_LOGIC; --enable viene dal divisore di frequenza
			 counter : out STD_LOGIC_VECTOR (3 downto 0);
			 e : out std_logic := '1'
	);
			 
end Counter_address;

architecture Behavioral of Counter_address is

	signal c : std_logic_vector (3 downto 0) := (others => '0');
begin
	counter <= c;

	counter_process: process(clock)
	begin
		if(rising_edge(clock)) then
		if reset = '1' then
			e <= '1';
			c <= (others => '0');
		elsif enable = '1' then
			
			if(c = "1111") then
				
				e <= '0';
				
			end if;
			
			c <= std_logic_vector(unsigned(c) + 1);
			
		end if;
	end if;
end process;

end Behavioral;
