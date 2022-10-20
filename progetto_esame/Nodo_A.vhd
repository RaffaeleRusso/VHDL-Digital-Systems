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


entity Nodo_A is
port(
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		rts : out std_logic;
		cts: in std_logic;
		DATA : in std_logic_vector(3 downto 0);
		I : out std_logic;
		start : out std_logic;
		stop : in std_logic;
		go : in std_logic
	);
end Nodo_A;

architecture structural of Nodo_A is
	component uc_A is 
	port( 
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		en_cnt : out std_logic;
		rts : out std_logic;
		cts: in std_logic;
		div : in std_logic;
		stop : in std_logic;
		load_sr : out std_logic;
		start : out std_logic;
		shift : out std_logic;
		go : in std_logic
		); 
	end component;

	component uo_A is
	port(
		CLK : in std_logic; 
		RST : in std_logic;
		DATA :in std_logic_vector(3 downto 0);
		I : out std_logic;
		shift : in std_logic;
		load_sr : in std_logic;
		en_cnt : in std_logic;
		div : out std_logic
	);
	end component;

signal en_cnt_0: std_logic := '0';
signal div_0: std_logic := '0';
signal load_sr_0: std_logic := '0';
signal shift_0: std_logic := '0';
	
begin
	
	ucA : uc_A 
		port map(
		CLK => CLK,
		RST  => RST,
		en_cnt => en_cnt_0,
		rts => rts,
		cts => cts,
		div  => div_0,
		stop => stop,
		start => start,
		load_sr => load_sr_0,
		shift => shift_0,
		go => go
		); 
	
	uoA: uo_A 
	port map(
		CLK  => CLK,
		RST => RST,
		DATA => DATA,
		I => I,
		shift => shift_0,
		load_sr => load_sr_0,
		en_cnt => en_cnt_0,
		div => div_0
	);



end structural;

