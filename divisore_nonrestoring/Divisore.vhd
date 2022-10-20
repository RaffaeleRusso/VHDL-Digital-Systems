----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:24 09/07/2022 
-- Design Name: 
-- Module Name:    Divisore - Behavioral 
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

entity Divisore_NR is
generic(N : integer:=4);
   port(
	divisore : in std_logic_vector(N-1 downto 0);
	dividendo : in std_logic_vector(N-1 downto 0);
	start : in std_logic;
	RST : in std_logic;
	CLK : in std_logic;
	OUTPUT : out std_logic_vector(2*N - 1 downto 0)
);
end Divisore_NR;

architecture Behavioral of Divisore_NR is
component FFD is
	port( 
		CLK, RST, d, EN: in std_logic;
      y: out std_logic);
end component;

component adder_sub is
	generic(N:integer:=4);
	port( 
		X, Y: in std_logic_vector(N-1 downto 0);
		cin: in std_logic;
		Z: out std_logic_vector(N-1 downto 0);
		cout: out std_logic := '0'
		);		  
end component;
component cont4 is
	port( CLK, RST: in std_logic;
		  count_in: in std_logic;
		  div: out std_logic;
		  count: out std_logic_vector(1 downto 0));
end component;

component registroDivisore is 
	generic(N : integer := 4);
	port( 
		divisore : in std_logic_vector(N-1 downto 0);
		CLK, RST, start: in std_logic;
		output: out std_logic_vector(N-1 downto 0) := (others => '0')
		);
end component;


component shift_register is
	generic ( N :integer :=4);
	port( 
		CLK : in std_logic;
		RST : in std_logic;
		dividendo : in std_logic_vector(N-1 downto 0);
		resto_parziale: in std_logic_vector(N-1 downto 0);
		output: out std_logic_vector(2*N-1 downto 0);		
		start : in std_logic; --load dividendo
		load_resto_parziale : in std_logic :='0';
		qi : in std_logic :='0';
		qi_load : in std_logic :='0';
		Y  : OUT std_logic;
		shift : in std_logic:='0'
		);
end component;

component unita_controllo is 
	port( 
		CLK, RST : IN STD_LOGIC;
		start : in std_logic;
		load_resto_parziale : out std_logic :='0';
		en_qi : out std_logic;
		qi_in : in std_logic :='0';
		--qi_out : out std_logic;
		shift : out std_logic;
		en_cnt : out std_logic;
		fine :in std_logic;
		load_qi : out std_logic
	); 
end component;


signal cnt_en : std_logic :='0';
signal fine_div : std_logic :='0';
signal en_ffd : std_logic := '0';
signal addendo2 : std_logic_vector(N-1 downto 0 );
signal resto_parziale_0 : std_logic_vector(N-1 downto 0 );
signal output_AQ : std_logic_vector(2*N-1 downto 0);
signal sub : std_logic :='0';
signal load_resto_parziale_0 : std_logic :='0';
signal load_qi0 : std_logic :='0';
signal shift1 : std_logic :='0';
signal s : std_logic :='0';
signal out_ffd : std_logic :='0';
signal not_out_ffd : std_logic :='0';
signal qi_out0 : std_logic :='0';
begin 

counter_0 :  cont4 
	port map(
		  CLK => clk,
		  RST => RST,
		  count_in => cnt_en,
		  div => fine_div
		  );


ffd_0 : FFD 
	port map( 
		CLK => CLK,
		d => s,
		RST => RST,
	   EN => en_ffd,
      y => out_ffd
		);


regDivisore: registroDivisore 
	port map( 
		divisore => divisore,
		CLK => CLK,
		RST  => RST,
		start => start,
		output => addendo2
		);


sr_AQ1 : shift_register 
	port map( 
		CLK => CLK,
		RST => RST,
		dividendo => dividendo,
		resto_parziale => resto_parziale_0 ,
		output => output_AQ,		
		start => start,--load dividendo
		load_resto_parziale => load_resto_parziale_0 ,
		qi => not_out_ffd,
		qi_load => load_qi0,
		shift => shift1,
		Y => s
		);
	
	output <= output_AQ;



uc : unita_controllo 
	port map( 
		CLK => CLK,
		RST => RST,
		start => start,
		load_resto_parziale => load_resto_parziale_0,
		en_qi => en_ffd ,
		qi_in  => not_out_ffd ,
		shift => shift1,
		en_cnt => cnt_en,
		load_qi =>load_qi0,
		fine => fine_div 
	); 


not_out_ffd <= not out_ffd;

adder : adder_sub 
	port map( 
		X => output_AQ(2*N-1 downto N),
		Y => addendo2 ,
		cin => not_out_ffd,
		Z => resto_parziale_0  );
end Behavioral;

