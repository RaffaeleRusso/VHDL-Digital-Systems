----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:15:09 10/17/2022 
-- Design Name: 
-- Module Name:    uo_input - structural 
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

entity uo_input is
	port(
		CLK : in std_logic; 
		RST : in std_logic;
		incr: in std_logic;
		div : out std_logic;
		DATA : out std_logic_vector(3 downto 0)
		);
end uo_input;

architecture structural of uo_input is
	component ROM is
		port(
		 CLK : in std_logic; 
		 RST : in std_logic;
		 ADDR : in std_logic_vector(3 downto 0); 
		 DATA : out std_logic_vector(3 downto 0);
		 en : in std_logic	
		 );
	end component;

	component cont16 is
		port(
		  CLK: in std_logic;
		  RST: in std_logic;
		  en: in std_logic;
		  count: out std_logic_vector(3 downto 0);
		  div : out std_logic);
end component;

signal addr_rom: std_logic_vector(3 downto 0) := (others => '0');
signal data_s: std_logic_vector(3 downto 0);

begin
	
	rom_0 : ROM
	port map(
		 CLK => CLK,
		 RST => '0',
		 ADDR => addr_rom, 
		 DATA => data,
		 en => '1'
	);
	
	cnt_0 : cont16
		port map(
		  CLK => CLK,
		  RST => RST,
		  en => incr,
		  count => addr_rom,
		  div => div
		  );



end structural;

