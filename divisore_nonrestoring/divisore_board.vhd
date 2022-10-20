----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:00:13 09/08/2022 
-- Design Name: 
-- Module Name:    divisore_board - structural 
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

entity divisore_board is
	generic(N : integer:=4);
	port(
   divisore : in std_logic_vector(N-1 downto 0);
	dividendo : in std_logic_vector(N-1 downto 0);
	start : in std_logic;
	RST : in std_logic;
	CLK : in std_logic;
	anodes : out std_logic_vector(3 downto 0);
	cathodes : out std_logic_vector(7 downto 0)
	);
end divisore_board;

architecture structural of divisore_board is


	component Divisore_NR is
   port(
	divisore : in std_logic_vector(N-1 downto 0);
	dividendo : in std_logic_vector(N-1 downto 0);
	start : in std_logic;
	RST : in std_logic;
	CLK : in std_logic;
	OUTPUT : out std_logic_vector(2*N - 1 downto 0));
	end component;
	
	component Seven_segments_display is
	port(
		clk : in std_logic;
		en : in std_logic;
		rst : in std_logic;
		enable_digit : in std_logic_vector(3 downto 0);
		value : in std_logic_vector(15 downto 0);
		dots : in std_logic_vector(3 downto 0);
		anodes : out std_logic_vector(3 downto 0);
		cathodes : out std_logic_vector(7 downto 0)
	);
end component;
	
	component ButtonDebouncer is
    Port ( CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
	end component;

signal clear_start : std_logic;
signal clear_rst : std_logic;
signal output_AQ :std_logic_vector(7 downto 0);
signal output_board : std_logic_vector(15 downto 0) := (others =>'0');

begin

	output_board(7 downto 0)  <= output_AQ;


	dv_0 : Divisore_NR 
   port map(
	divisore => divisore,
	dividendo => dividendo,
	start => clear_start,
	RST => clear_rst,
	CLK => CLK,
	OUTPUT => output_AQ
	);

	btn_rst : ButtonDebouncer 
    Port map( CLK => clk,
           BTN => rst,
           CLEARED_BTN => clear_rst
			  );
			  
			 
	btn_start : ButtonDebouncer 
    Port map( CLK => clk,
           BTN => start,
           CLEARED_BTN => clear_start
			  );
	
	ssd : Seven_segments_display 
	port map(
		clk => clk,
		en => '1',
		rst => clear_rst,
		enable_digit => "1111",
		value => output_board ,
		dots  => "0000",
		anodes => anodes,
		cathodes => cathodes
	);


	


end structural;

