----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:43:44 09/11/2022 
-- Design Name: 
-- Module Name:    F - Structural 
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

entity F is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		EN : in std_logic;
		Xl : in std_logic_vector(31 downto 0);
		Y : out std_logic_vector(31 downto 0)
	);
end F;

architecture Structural of F is

	component Sbox1
		port( 
			CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
		);
	end component;

	component Sbox2
		port( 
			CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Sbox3
		port( 
			CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Sbox4
		port( 
			CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
		);
	end component;
	
	component ripple_carry
		port( 
			X, Y: in std_logic_vector(31 downto 0);
			c_in: in std_logic;
			c_out: out std_logic;
			Z: out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal s : std_logic_vector(31 downto 0);
	signal y1 : std_logic_vector(31 downto 0);
	signal y2 : std_logic_vector(31 downto 0);
	signal y3 : std_logic_vector(31 downto 0);
	signal y4 : std_logic_vector(31 downto 0);
	signal add1 : std_logic_vector(31 downto 0);
	signal xor1 : std_logic_vector(31 downto 0);
	
begin

	adder1 : ripple_carry
		port map(
			X => y1,
			Y => y2,
			c_in => '0',
			Z => add1
		);
		
xor1 <= add1 xor y3;
		
	adder2 : ripple_carry
		port map(
			X => xor1,
			Y => y4,
			c_in => '0',
			Z => Y
		);

	S1 : Sbox1
		port map(
			CLK => CLK,
			RST => '0',
			EN => EN,
			ADDR => Xl(31 downto 24),
			DATA => y1
		);
		
	S2 : Sbox2
		port map(
			CLK => CLK,
			RST => '0',
			EN => EN,
			ADDR => Xl(23 downto 16),
			DATA => y2
		);
		
	S3 : Sbox3
		port map(
			CLK => CLK,
			RST => '0',
			EN => EN,
			ADDR => Xl(15 downto 8),
			DATA => y3
		);
		
	S4 : Sbox4
		port map(
			CLK => CLK,
			RST => '0',
			EN => EN,
			ADDR => Xl(7 downto 0),
			DATA => y4
		);

end Structural;

