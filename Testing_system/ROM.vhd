----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:15 11/17/2021 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is

	port( CLK : in std_logic; 
			RST : in std_logic;
			BTN_READ : in std_logic; 
			ADDR : in std_logic_vector(3 downto 0); 
			DATA : out std_logic_vector(3 downto 0)
	);
	
end ROM;

architecture behavioral of ROM is
	
	signal EN : std_logic := '0';
	type rom_type is array (15 downto 0) of std_logic_vector(3 downto 0);
	signal ROM : rom_type := (
										X"0", 
										X"1", 
										X"2", 
										X"3", 
										X"4", 
										X"5", 
										X"6",
										X"7",
										X"8", 
										X"9",
										X"A", 
										X"B", 
										X"C", 
										X"D",
										X"E", 
										X"F"); 
										
	attribute rom_style : string;
	attribute rom_style of ROM : signal is "block";-- block dice al tool di sintesi di inferire blocchi di RAMB,
-- distributed di usare le LUT

	begin
	process(CLK)
		begin
		if rising_edge(CLK) then
			if (RST = '1') then
			
				DATA <= ROM(conv_integer("0000"));
				
			elsif (BTN_READ = '1' or EN = '1') then
			
				EN <= '1';
				DATA <= ROM(conv_integer(ADDR));
				
				if(ADDR = "1111") then
				
					EN <= '0';
					
				end if;
			end if;
		end if;
	end process;
end behavioral;


