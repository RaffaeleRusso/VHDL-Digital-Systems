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



entity Nodo_input is
port(
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		rts : out std_logic;
		cts: in std_logic;
		DATA : out std_logic_vector(3 downto 0);
		go : in std_logic
	);
end Nodo_input;

architecture structural of Nodo_input is
	component uc_input is 
	port( 
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		en_cnt : out std_logic;
		rts : out std_logic;
		cts: in std_logic;
		div : in std_logic;
		go : in std_logic
		); 
	end component;

	component uo_input is
	port(
		CLK : in std_logic; 
		RST : in std_logic;
		incr: in std_logic;
		div : out std_logic;
		DATA : out std_logic_vector(3 downto 0)
	);
	end component;

signal en_cnt_0: std_logic := '0';
signal div_0: std_logic := '0';
	
begin
	
	ucA : uc_input 
	port map( 
		CLK => CLK,
		RST => RST,
		en_cnt => en_cnt_0,
		rts => rts,
		cts => cts,
		div => div_0,
		go => go
		); 
	
	
	uoA: uo_input 
	port map(
		CLK => CLK,
		RST => RST,
		incr => en_cnt_0,
		DATA => DATA,
		div => div_0
	);



end structural;

