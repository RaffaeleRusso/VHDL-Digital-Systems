----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:03:37 12/07/2021 
-- Design Name: 
-- Module Name:    Convertitore_display - Behavioral 
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

entity Convertitore_display is
	port(
		value_in : in std_logic_vector(5 downto 0);
		value_out : out std_logic_vector(7 downto 0)
	);
end Convertitore_display;

architecture Behavioral of Convertitore_display is
	
begin
	conv_proc : process(value_in)
		begin
			case value_in is
				when "--0000" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000000";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00010110";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00110010";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01001000";
					end if;
				when "--0001" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000001";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00010111";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00110011";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01001001";
					end if;
				when "--0010" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000010";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00011000";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00110100";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010000";
					end if;
				when "--0011" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000011";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00011001";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00110101";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010001";
					end if;
				when "--0100" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000100";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100000";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00110110";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010010";
					end if;
				when "--0101" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000101";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100001";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00110111";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010011";
					end if;
				when "--0110" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000110";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100010";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00111000";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010100";
					end if;
				when "--0111" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00000111";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100011";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "00111001";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010101";
					end if;
				when "--1000" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00001000";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100100";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000000";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010110";
					end if;
				when "--1001" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00001001";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100101";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000001";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01010111";
					end if;
				when "--1010" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00010000";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100110";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000010";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01011000";
					end if;
				when "--1011" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00010001";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00100111";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000011";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01011001";
					end if;
				when "--1100" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00010010";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00101000";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000100";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "01011010";
					end if;
				when "--1101" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00010011";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00101001";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000101";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "00000000";
					end if;
				when "--1110" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00010100";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00110000";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000110";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "00000000";
					end if;
				when "--1111" =>
					if (value_in(5 downto 4) = "00") then
						value_out <= "00010101";
					elsif (value_in(5 downto 4) = "01") then
						value_out <= "00110001";
					elsif (value_in(5 downto 4) = "10") then
						value_out <= "01000111";
					elsif (value_in(5 downto 4) = "11") then
						value_out <= "00000000";
					end if;
				when others => value_out <= "00000000";
			end case;
	end process;

end Behavioral;

