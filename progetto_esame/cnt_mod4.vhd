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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cnt4 is
	port( CLK, RST: in std_logic;
		  en: in std_logic;
		  count: out std_logic_vector(1 downto 0);
		  div : out std_logic);
end cnt4;

architecture behavioural of cnt4 is
	signal c: std_logic_vector(1 downto 0) := (others => '0');
	
	begin	
	CM4: process(CLK,RST)
	begin
		if(RST = '1') then 
			c <= (others=>'0');
			div <= '0';
		elsif(falling_edge(CLK))then
			if (en = '1') then
					c <= std_logic_vector(unsigned(c) + 1);
					if  (c = "10") then
						div <='1';
					else
						div <= '0';
					end if;
			end if;
			
		end if;
		end process;
		
	count<= c;
end behavioural;
