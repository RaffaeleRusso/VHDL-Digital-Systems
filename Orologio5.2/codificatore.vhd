----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:17 11/12/2021 
-- Design Name: 
-- Module Name:    codificatore - Behavioral 
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

entity codificatore is
	port(
	I : in std_logic_vector(0 to 11);
	Z : out std_logic_vector(0 to 15)
	);
end codificatore;

architecture Behavioral of codificatore is

ALIAS minuti : std_logic_vector(0 to 5) is I(0 to 5);
ALIAS secondi: std_logic_vector(0 to 5) is I(6 to 11);
ALIAS cifra1 : std_logic_vector(0 to 3) is Z(0 to 3);
ALIAS cifra2 : std_logic_vector(0 to 3) is Z(4 to 7);
ALIAS cifra3 : std_logic_vector(0 to 3) is Z(8 to 11);
ALIAS cifra4 : std_logic_vector(0 to 3) is Z(12 to 15);


begin

cifra1 <= "0000" when(minuti = "000000" or minuti = "000001" or minuti = "000010" or minuti = "000011" or minuti = "000100" or minuti = "000101"or minuti = "000110"or minuti = "000111"or minuti = "001000" or minuti = "001001") else
			 "0001" when(minuti = "001010" or minuti = "001011" or minuti = "001100" or minuti = "001101" or minuti = "001110" or minuti = "001111"or minuti = "010000"or minuti = "010001"or minuti = "010010" or minuti = "010011") else
			 "0010" when(minuti = "010100" or minuti = "010101" or minuti = "010110" or minuti = "010111" or minuti = "011000" or minuti = "011001"or minuti = "011010"or minuti = "011011"or minuti = "011100" or minuti = "011101") else
			 "0011" when(minuti = "011110" or minuti = "011111" or minuti = "100000" or minuti = "100001" or minuti = "100010" or minuti = "100011"or minuti = "100100"or minuti = "100101"or minuti = "100110" or minuti = "100111") else
			 "0100" when(minuti = "101000" or minuti = "101001" or minuti = "101010" or minuti = "101011" or minuti = "101100" or minuti = "101101"or minuti = "101110"or minuti = "101111"or minuti = "110000" or minuti = "110001") else
			 "0101" when(minuti = "110010" or minuti = "110011" or minuti = "110100" or minuti = "110101" or minuti = "110110" or minuti = "110111"or minuti = "111000"or minuti = "111001"or minuti = "111010" or minuti = "111011") else
			 "----";
			 
cifra2 <= "0000" when(minuti = "000000" or minuti = "001010" or minuti = "010100" or minuti = "011110" or minuti = "101000" or minuti = "110010") else
			 "0001" when(minuti = "000001" or minuti = "001011" or minuti = "010101" or minuti = "011111" or minuti = "101001" or minuti = "110011") else
			 "0010" when(minuti = "000010" or minuti = "001100" or minuti = "010110" or minuti = "100000" or minuti = "101010" or minuti = "110100") else
			 "0011" when(minuti = "000011" or minuti = "001101" or minuti = "010111" or minuti = "100001" or minuti = "101011" or minuti = "110101")else
			 "0100" when(minuti = "000100" or minuti = "001110" or minuti = "011000" or minuti = "100010" or minuti = "101100" or minuti = "110110") else
			 "0101" when(minuti = "000101" or minuti = "001111" or minuti = "011001" or minuti = "100011" or minuti = "101101" or minuti = "110111") else
			 "0110" when(minuti = "000110" or minuti = "010000" or minuti = "011010" or minuti = "100100" or minuti = "101110" or minuti = "111000")else
			 "0111" when(minuti = "000111" or minuti = "010001" or minuti = "011011" or minuti = "100101" or minuti = "101111" or minuti = "111001")else
			 "1000" when(minuti = "001000" or minuti = "010010" or minuti = "011100" or minuti = "100110" or minuti = "110000" or minuti = "111010")else
			 "1001" when(minuti = "001001" or minuti = "010011" or minuti = "011101" or minuti = "100111" or minuti = "110001" or minuti = "111011")else
			 "----";
			 
cifra3 <= "0000" when(secondi = "000000" or secondi = "000001" or secondi = "000010" or secondi = "000011" or secondi = "000100" or secondi = "000101"or secondi = "000110"or secondi = "000111"or secondi = "001000" or secondi = "001001") else
			 "0001" when(secondi = "001010" or secondi = "001011" or secondi = "001100" or secondi = "001101" or secondi = "001110" or secondi = "001111"or secondi = "010000"or secondi = "010001"or secondi = "010010" or secondi = "010011") else
			 "0010" when(secondi = "010100" or secondi = "010101" or secondi = "010110" or secondi = "010111" or secondi = "011000" or secondi = "011001"or secondi = "011010"or secondi = "011011"or secondi = "011100" or secondi = "011101") else
			 "0011" when(secondi = "011110" or secondi = "011111" or secondi = "100000" or secondi = "100001" or secondi = "100010" or secondi = "100011"or secondi = "100100"or secondi = "100101"or secondi = "100110" or secondi = "100111") else
			 "0100" when(secondi = "101000" or secondi = "101001" or secondi = "101010" or secondi = "101011" or secondi = "101100" or secondi = "101101"or secondi = "101110"or secondi = "101111"or secondi = "110000" or secondi = "110001") else
			 "0101" when(secondi = "110010" or secondi = "110011" or secondi = "110100" or secondi = "110101" or secondi = "110110" or secondi = "110111"or secondi = "111000"or secondi = "111001"or secondi = "111010" or secondi = "111011") else
			 "----";
			 
cifra4 <= "0000" when(secondi = "000000" or secondi = "001010" or secondi = "010100" or secondi = "011110" or secondi = "101000" or secondi = "110010") else
			 "0001" when(secondi = "000001" or secondi = "001011" or secondi = "010101" or secondi = "011111" or secondi = "101001" or secondi = "110011") else
			 "0010" when(secondi = "000010" or secondi = "001100" or secondi = "010110" or secondi = "100000" or secondi = "101010" or secondi = "110100") else
			 "0011" when(secondi = "000011" or secondi = "001101" or secondi = "010111" or secondi = "100001" or secondi = "101011" or secondi = "110101")else
			 "0100" when(secondi = "000100" or secondi = "001110" or secondi = "011000" or secondi = "100010" or secondi = "101100" or secondi = "110110") else
			 "0101" when(secondi = "000101" or secondi = "001111" or secondi = "011001" or secondi = "100011" or secondi = "101101" or secondi = "110111") else
			 "0110" when(secondi = "000110" or secondi = "010000" or secondi = "011010" or secondi = "100100" or secondi = "101110" or secondi = "111000")else
			 "0111" when(secondi = "000111" or secondi = "010001" or secondi = "011011" or secondi = "100101" or secondi = "101111" or secondi = "111001")else
			 "1000" when(secondi = "001000" or secondi = "010010" or secondi = "011100" or secondi = "100110" or secondi = "110000" or secondi = "111010")else
			 "1001" when(secondi = "001001" or secondi = "010011" or secondi = "011101" or secondi = "100111" or secondi = "110001" or secondi = "111011")else
			 "----";

end Behavioral;

