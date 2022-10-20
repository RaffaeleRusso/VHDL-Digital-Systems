----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:13 10/19/2021 
-- Design Name: 
-- Module Name:    decoder_4_16 - Behavioral 
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

entity decoder_4_16 is
	PORT(
		I : in STD_LOGIC_VECTOR(3 downto 0);
		C : out STD_LOGIC_VECTOR(15 downto 0));
end decoder_4_16;

architecture Behavioral of decoder_4_16 is

begin
		C <=  "0000000000000001" when (I = "0000") else
				"0000000000000010" when (I = "0001") else
				"0000000000000100" when (I = "0010") else
				"0000000000001000" when (I = "0011") else
				"0000000000010000" when (I = "0100") else
				"0000000000100000" when (I = "0101") else
				"0000000001000000" when (I = "0110") else
				"0000000010000000" when (I = "0111") else
				"0000000100000000" when (I = "1000") else
				"0000001000000000" when (I = "1001") else
				"0000010000000000" when (I = "1010") else
				"0000100000000000" when (I = "1011") else
				"0001000000000000" when (I = "1100") else
				"0010000000000000" when (I = "1101") else
				"0100000000000000" when (I = "1110") else
				"1000000000000000" when (I = "1111") else
				"----------------";

end Behavioral;

