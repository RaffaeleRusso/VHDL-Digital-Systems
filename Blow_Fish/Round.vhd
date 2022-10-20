----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:44:26 09/11/2022 
-- Design Name: 
-- Module Name:    Round - Structural 
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

entity Round is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		EN : in std_logic;
		Pi : in std_logic_vector(31 downto 0);
		Xl : in std_logic_vector(31 downto 0);
		Xr : in std_logic_vector(31 downto 0);
		Y : out std_logic_vector(63 downto 0)
	);
end Round;

architecture Structural of Round is
	
	component F
		port(
			CLK : in std_logic;
			RST : in std_logic;
			EN : in std_logic;
			Xl : in std_logic_vector(31 downto 0);
			Y : out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal xor1 : std_logic_vector(31 downto 0);
	signal f_out : std_logic_vector(31 downto 0);
	signal xor2 : std_logic_vector(31 downto 0);
	
begin

xor1 <= Pi xor Xl;
xor2 <= f_out xor Xr;

	f1 : F
		port map(
			CLK => CLK,
			EN => EN,
			RST => RST,
			Xl => xor1,
			Y => f_out
		);
		
Y(63 downto 32) <= xor2;
Y(31 downto 0) <= xor1;

end Structural;

