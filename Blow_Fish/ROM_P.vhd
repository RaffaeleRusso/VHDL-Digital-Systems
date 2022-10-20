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

entity ROM_P is

	port( 
		CLK : in std_logic; 
		RST : in std_logic;
		EN : in std_logic; 
		ADDR : in std_logic_vector(4 downto 0); 
		DATA : out std_logic_vector(31 downto 0)
	);
	
end ROM_P;

architecture behavioral of ROM_P is
	
	type rom_type is array (0 to 17) of std_logic_vector(31 downto 0);
	signal ROM : rom_type := (
					X"243f6a88",
					X"85a308d3",
					X"13198a2e",
					X"03707344",
					X"a4093822",
                X"299f31d0",
					 X"082efa98",
					 X"ec4e6c89",
					 X"452821e6",
					 X"38d01377",
                X"be5466cf",
					 X"34e90c6c",
					 X"c0ac29b7",
					 X"c97c50dd",
					 X"3f84d5b5",
                X"b5470917",
					 X"9216d5d9",
					 X"8979fb1b");
										
	attribute rom_style : string;
	attribute rom_style of ROM : signal is "block";-- block dice al tool di sintesi di inferire blocchi di RAMB,
-- distributed di usare le LUT

	begin
	process(CLK)
		begin
			if rising_edge(CLK) then
				if (RST = '1') then
					DATA <= ROM(conv_integer(X"00000000"));
				elsif (EN = '1') then
					DATA <= ROM(conv_integer(ADDR));
				end if;
			end if;
	end process;
end behavioral;


