----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:17:35 09/11/2022 
-- Design Name: 
-- Module Name:    Post_processing - Structural 
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

entity Post_processing is
	port(
		Xl : in std_logic_vector(31 downto 0);
		Xr : in std_logic_vector(31 downto 0);
		P16 : in std_logic_vector(31 downto 0);
		P17 : in std_logic_vector(31 downto 0);
		Z : out std_logic_vector(63 downto 0)
	);
	
end Post_processing;

architecture Structural of Post_processing is

begin

	Z(31 downto 0) <= P16 xor Xl; --p1
	Z(63 downto 32) <= P17 xor Xr; --p0

end Structural;