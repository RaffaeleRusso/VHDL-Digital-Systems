----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:22 11/17/2021 
-- Design Name: 
-- Module Name:    Macchina_combinatoria - Behavioral 
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

entity Macchina_combinatoria is

	port( X : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector(2 downto 0)
	);
	
end Macchina_combinatoria;

architecture Behavioral of Macchina_combinatoria is

begin

	Y <= "000" when X = "0000" else 
		  "001" when (X = "0001") or (X = "0010") or (X = "0100") or (X = "1000") else
		  "010" when (X = "0011") or (X = "0101") or (X = "1001") or (X = "1010") or (X = "0110") or (X = "1100") else
		  "011" when (X = "0111") or (X = "1011") or (X = "1101") or (X = "1110") else
		  "100" when X = "1111" else
		  "---";

end Behavioral;

