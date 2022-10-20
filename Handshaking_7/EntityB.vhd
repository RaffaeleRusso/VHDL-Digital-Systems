----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:07:28 09/16/2022 
-- Design Name: 
-- Module Name:    EntityB - Structural 
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

entity EntityB is
	generic(
		N : integer := 8;
		M : integer := 4
	);
	port(
		CLK : in std_logic;
		RST : in std_logic;
		RTS : out std_logic;
		CTS : in std_logic;
		DATA : in std_logic_vector(M-1 downto 0)
	);
end EntityB;

architecture Structural of EntityB is

	component RAM is
		generic (
			N : integer := 8;
			M : integer := 4
		);
		port ( clk  : in std_logic;
			 rst  : in std_logic;
          we   : in std_logic;
          en   : in std_logic;
          addr : in std_logic_vector(integer(floor(log2(real(N)))) downto 0);
          di   : in std_logic_vector(M-1 downto 0);
          do   : out std_logic_vector(M-1 downto 0)
		);
	end component;

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
	
	component ucB is
		port(
			CLK : in std_logic;
			we : out std_logic;
			RST : in std_logic;
			incr : out std_logic;
			RTS : out std_logic;
			CTS : in std_logic
		);
	end component;
	
	signal somma : std_logic_vector(M-1 downto 0);
	signal incremento : std_logic;
	signal indirizzo : std_logic_vector(integer(floor(log2(real(N)))) downto 0);
	signal write0 : std_logic;
	signal data_rom : std_logic_vector(M-1 downto 0);

begin
	
	UC : ucB
		port map(
			CLK => CLK,
			RST => RST,
			we => write0,
			incr => incremento,
			RTS => RTS,
			CTS => CTS
		);
		
	cont_ric : counter
		generic map(
			N => N
		)
		port map(
			CLK => CLK,
			RST => RST,
			EN => incremento,
			CNT => indirizzo
		);
		
	rom1 : ROM
		port map(
			CLK => CLK,
			RST => RST,
			ADDR => indirizzo,
			EN => '1',
			DATA => data_rom
		);
		
		somma <= DATA + data_rom;

	ram0 : RAM
		generic map(
			N => N,
			M => M
		)
		port map(
			RST => RST,
			CLK => CLK,
			we => write0,
			en => '1',
			addr => indirizzo,
			di => somma
		);
end Structural;

