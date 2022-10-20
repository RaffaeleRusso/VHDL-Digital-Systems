library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder_3_8 is
	PORT(
	A : in STD_LOGIC_VECTOR(2 downto 0);
	D : out STD_LOGIC_VECTOR(7 downto 0));
end decoder_3_8;

architecture Dataflow of decoder_3_8 is

begin
		D <=  "00000001" when (A = "000") else
				"00000010" when (A = "001") else
				"00000100" when (A = "010") else
				"00001000" when (A = "011") else
				"00010000" when (A = "100") else
				"00100000" when (A = "101") else
				"01000000" when (A = "110") else
				"10000000" when (A = "111") else
				"--------";

end Dataflow;