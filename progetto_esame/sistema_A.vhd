----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:49 09/08/2022 
-- Design Name: 
-- Module Name:    sistema_A - Structural 
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



entity sistema_A is
port(
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		start : in std_logic;
		rts : out std_logic;
		cts: in std_logic;
		ack : in std_logic;
		DATA : out std_logic_vector(7 downto 0)
	);
end sistema_A;

architecture structural of sistema_A is
	component unita_controllo_A is 
	port( 
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		start : in std_logic;
		en_cnt : out std_logic;
		rts : out std_logic;
		cts: in std_logic;
		ack : in std_logic
		); 
	end component;

	component unita_operativa_A is
	port(
		CLK : in std_logic; 
		RST : in std_logic;
		incr: in std_logic;
		DATA : out std_logic_vector(7 downto 0)
	);
	end component;

signal en_cnt_0: std_logic := '0';
	
begin
	
	ucA : unita_controllo_A 
	port map( 
		CLK => CLK,
		RST => RST,
		start => start,
		en_cnt => en_cnt_0,
		rts => rts,
		cts =>cts,
		ack => ack
		); 
	
	
	uoA: unita_operativa_A 
	port map(
		CLK => CLK,
		RST => RST,
		incr => en_cnt_0,
		DATA => DATA
	);



end structural;

