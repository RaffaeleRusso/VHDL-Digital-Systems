library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sr_par is
	port( 
	CLK: in std_logic; 
	RST: in std_logic; 
	X: in std_logic_vector(3 downto 0); 
	load : in std_logic;
	en_sr : in std_logic;
	Y: out std_logic 
); 
 end sr_par;
 
architecture rtl of sr_par is 
 signal T: std_logic_vector(3 downto 0); 
begin 
 reg: process( CLK, RST ) 
		 begin 
		 if( RST = '1' ) then 
				T <= "0000"; 
		 elsif( CLK'event and CLK = '0' ) then 
				if (load = '1') then
					T <= X;
				elsif(en_sr = '1') then
					T(3) <= '0'; 
					T(2 downto 0) <= T(3 downto 1);
					 
				end if;
		 end if; 
		 end process; 
		 
		 Y <= T(0); 
end rtl; 