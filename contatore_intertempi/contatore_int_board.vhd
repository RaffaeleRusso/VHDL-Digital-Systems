----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:00 09/08/2022 
-- Design Name: 
-- Module Name:    contatore_int_board - Structural 
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


entity cron_int_board is
	port(
	   clk : in std_logic;
		rst : in std_logic;
		set : in std_logic;
		btn : in std_logic;
		hms : in std_logic_vector(1 downto 0);
		I : in std_logic_vector(5 downto 0);
		anodes : out std_logic_vector(3 downto 0);
		cathodes : out std_logic_vector(7 downto 0);
		leds : out std_logic_vector(4 downto 0)
	);
end cron_int_board;

architecture Structural of cron_int_board is

component Orologio_hh_mm_ss is
	port(
		clk : in std_logic;
		rst : in std_logic;
		en : in std_logic;
		set_hms : in std_logic_vector(2 downto 0);
		I : in std_logic_vector(5 downto 0);
		Y : out std_logic_vector(16 downto 0);
		DIV : out std_logic);
	end component;
	
	component DEMUX_1_4 
		port(
	d : in STD_LOGIC;
	s : in STD_LOGIC_VECTOR(1 downto 0);
	c : out STD_LOGIC_VECTOR(3 downto 0)
);
end component;
	
	component ButtonDebouncer is
    
    Port ( CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end component;

component RAM 
	
   port ( clk  : in std_logic;
			 rst  : in std_logic;
          we   : in std_logic;
          en   : in std_logic;
          addr : in std_logic_vector(3 downto 0);
          di   : in std_logic_vector(16 downto 0);
          do   : out std_logic_vector(16 downto 0)
	);
	
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

component codificatore is
	port(
	I : in std_logic_vector(0 to 11);
	Z : out std_logic_vector(0 to 15)
	);
end component;

component Counter_address is
	Port ( clock : in STD_LOGIC;
			 reset : in STD_LOGIC;
			 enable : in STD_LOGIC; --enable viene dal divisore di frequenza
			 counter : out STD_LOGIC_VECTOR (3 downto 0);
			 e : out std_logic := '1'
	);
			 
end component;

component mux is
	port(	s : in std_logic;
			a0,a1 : in std_logic_vector(16 downto 0);
			y : out std_logic_vector(16 downto 0) );
	end component;


component ControlloreI is
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
			  SET : in  STD_LOGIC;
           HMS : in  STD_LOGIC_VECTOR(1 downto 0);
			  Output : out STD_LOGIC_VECTOR(5 downto 0)
			  );
end component;

component Divisore_freq
	port(
		clk : in std_logic;
		en : in std_logic;
		rst : in std_logic;
		clk_out : out std_logic
	);
end component;


signal  clock_out : std_logic;
signal  set_clear : std_logic;
signal  sets : std_logic_vector(3 downto 0);
signal out_control : std_logic_vector(5 downto 0);
signal mux_out : std_logic_vector(16 downto 0);
signal cron_out : std_logic_vector(16 downto 0);
signal ram_out : std_logic_vector(16 downto 0);
signal btn_clear : std_logic;
signal e_out : std_logic;
signal wr0 : std_logic;
signal count_out: std_logic_vector(3 downto 0);
signal value_in : std_logic_vector(0 to 15);
signal sel_mux : std_logic;
begin


	dmx_0 : DEMUX_1_4 
		port map(
	d  =>  set_clear,
	s => hms,
	c => sets
);
	
	dv_freq: Divisore_freq
	port map(
		clk => clk,
		en =>'1',
		rst => rst,
		clk_out => clock_out
	);


cron: Orologio_hh_mm_ss 
	port map(
		clk =>clock_out,
		rst => rst,
		en => '1',
		set_hms => sets(2 downto 0),
		I  => out_control,
		Y => cron_out);
	
	
	btn_set: ButtonDebouncer 
    
    Port map( CLK => clk,
           BTN => set,
           CLEARED_BTN =>set_clear
	);
	
ram_0 : RAM 
   port map ( clk  => clk,
			 rst => rst,
          we  => wr0,
          en   => '1',
          addr => count_out,
          di  => cron_out,
          do => ram_out
	);
	



btn_me: ButtonDebouncer 
    Port map( CLK => clk,
           BTN => btn,
           CLEARED_BTN => btn_clear);

ssd: Seven_segments_display 
	port map(
		clk =>clk,
		en => '1',
		rst =>rst,
		enable_digit => "1111",
		value =>value_in,
		dots => "0000",
		anodes => anodes,
		cathodes => cathodes
	);


cod: codificatore 
	port map(
	I => mux_out(11 downto 0),
	Z => value_in
	);


cnt_add :  Counter_address 
	Port map ( clock => clk,
			 reset => rst,
			 enable => btn_clear,
			 counter => count_out,
			 e => e_out
	);
	
	wr0 <= btn_clear and e_out;
   sel_mux	<= e_out;			 

m0 : mux 
	port map(s => sel_mux,
			a0 => ram_out,
			a1 => cron_out,
			y => mux_out
			);

cntrl : ControlloreI 
    Port map( I => I,
			  SET => set_clear,
           HMS => hms,
			  Output => out_control
			  );


leds <= mux_out(16 downto 12);
end Structural;

