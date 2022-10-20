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

	Port( 
		CLK : in STD_LOGIC;
		RST : in STD_LOGIC;
		EN : in STD_LOGIC;
		M : in STD_LOGIC;
		LOAD : in STD_LOGIC;
		DATA : in STD_LOGIC_VECTOR (4 downto 0);
		counter : out STD_LOGIC_VECTOR (4 downto 0);
		DIV : out std_logic
	);
			 
end Counter_address;

architecture Behavioral of Counter_address is

	signal c : std_logic_vector (4 downto 0) := (others => '0');
	
begin

	counter <= c;

	counter_process: process(CLK)
	begin
		if(rising_edge(CLK)) then
			if RST = '1' then
				DIV <= '0';
				c <= (others => '0');
				
			elsif(load = '1') then
					c <= data;
					
			elsif (EN = '1' and M = '0') then
				if(c = "10001") then
					DIV <= '1';
					c <= "00000";
				else
					c <= std_logic_vector(unsigned(c) + 1);
					DIV <= '0';
				end if;
			
			elsif (EN = '1' and M = '1') then
			
				if(c = "00000") then
				
					DIV <= '1';
					c <= "10001";
				else
					c <= std_logic_vector(unsigned(c) - 1);
					DIV <= '0';
				end if;
			end if;
		end if;
	end process;

end Behavioral;
