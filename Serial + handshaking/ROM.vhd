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
			R : in std_logic; 
			ADDR : in std_logic_vector(2 downto 0); 
			DATA_OUT : out std_logic_vector(7 downto 0)
	);
	
end ROM;

architecture behavioral of ROM is
	
	type rom_type is array (0 to 7) of std_logic_vector(7 downto 0);
	signal ROM : rom_type := ( 
										X"01", 
										X"02", 
										X"03", 
										X"04", 
										X"05", 
										X"06",
										X"07",
										X"08"); 
										
	attribute rom_style : string;
	attribute rom_style of ROM : signal is "block";-- block dice al tool di sintesi di inferire blocchi di RAMB,
-- distributed di usare le LUT

	begin
	
	process(CLK)
		begin
		if rising_edge(CLK) then
			if (RST = '1') then
				DATA_OUT <= ROM(conv_integer("0000"));
			elsif (R = '1') then
				DATA_OUT <= ROM(conv_integer(ADDR));
			end if;
		end if;
	end process;
	
end behavioral;


