----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:07:05 09/16/2022 
-- Design Name: 
-- Module Name:    EntityA - Structural 
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
use IEEE.math_real."floor";
use IEEE.math_real."log2";
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EntityA is
	generic(
		N : integer := 8;
		M : integer := 4
	);
	port(
		start : in std_logic;
		CLK : in std_logic;
		RST : in std_logic;
		RTS : out std_logic;
		CTS : in std_logic;
		DATA : out std_logic_vector(M-1 downto 0)
	);
end EntityA;

architecture Structural of EntityA is

	component ROM is
		port( CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(2 downto 0); 
			DATA : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component counter is
		generic(
			N : integer := 8
		);
		Port ( 
			CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
			EN : in STD_LOGIC;
			CNT : out  STD_LOGIC_VECTOR(integer(floor(log2(real(N)))) downto 0);
			DIV : out std_logic
		);
	end component;
	
	component ucA is
		port(
			CLK : in std_logic;
			start : in std_logic;
			RST : in std_logic;
			DIV : in std_logic;
			incr : out std_logic;
			RTS : out std_logic;
			CTS : in std_logic
		);
	end component;
	
	signal divisore : std_logic;
	signal incremento : std_logic;
	signal indirizzo : std_logic_vector(integer(floor(log2(real(N)))) downto 0);

begin

	UC : ucA
		port map(
			CLK => CLK,
			RST => RST,
			start => start,
			DIV => divisore,
			incr => incremento,
			RTS => RTS,
			CTS => CTS
		);
		
	cont_tras : counter
		generic map(
			N => N
		)
		port map(
			CLK => CLK,
			RST => RST,
			EN => incremento,
			DIV => divisore,
			CNT => indirizzo
		);
		
	rom0 : ROM
		port map(
			CLK => CLK,
			RST => RST,
			ADDR => indirizzo,
			EN => '1',
			DATA => DATA
		);

end Structural;

