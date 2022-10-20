----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:15 11/17/2021 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
-- Project Name: 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ROM is

	port( CLK : in std_logic; 
			RST : in std_logic;
			ADDR : in std_logic_vector(3 downto 0); 
			DATA : out std_logic_vector(3 downto 0);
			en : in std_logic
	);
	
end ROM;

architecture behavioral of ROM is
	
	type rom_type is array (15 downto 0) of std_logic_vector(3 downto 0);
	signal ROM : rom_type := (
										X"5", 
										X"f", 
										X"f",
										X"5", 
										X"5", 
										X"5", 
										X"5",
										X"5",
										X"5", 
										X"5", 
										X"f",
										X"5", 
										X"f", 
										X"5", 
										X"5",
										X"f"
										);
										
	attribute rom_style : string;
	attribute rom_style of ROM : signal is "block";
	begin
	process(CLK)
		begin
		if rising_edge(CLK) then
			if (RST = '1') then
				DATA <= ROM(conv_integer(X"0"));
			elsif (en = '1') then
				DATA <= ROM(conv_integer(ADDR));
			end if;
		end if;
	end process;
end behavioral;


