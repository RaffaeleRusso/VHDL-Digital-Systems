----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:18 10/17/2022 
-- Design Name: 
-- Module Name:    cnt_10 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cnt_10 is
	port( CLK, RST: in std_logic;
		  en: in std_logic;
		  count: out std_logic_vector(3 downto 0);
		  div : out std_logic);
end cnt_10;

architecture behavioural of cnt_10 is
	signal c: std_logic_vector(3 downto 0) := (others => '0');
	
	begin	
	CM16: process(CLK,RST)
	begin
		if(RST = '1') then 
			c <= (others=>'0');
			div <= '0';
		elsif(falling_edge(CLK))then
			if  (c = "1010") then
					div <='1';	
			elsif (en = '1') then
					c <= std_logic_vector(unsigned(c) + 1);
					div <= '0';
			else div <='0';
			end if;
			
			

			
		end if;
		end process;
		
	count<= c;
end behavioural;
