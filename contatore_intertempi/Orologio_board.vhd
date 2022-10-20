----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Orologio_board is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		SET : in std_logic;
		HMS : in std_logic_vector(1 downto 0);
		I : in std_logic_vector(5 downto 0);
		ANODES : out std_logic_vector(3 downto 0);
		CATODES : out std_logic_vector(7 downto 0);
		LEDS: out std_logic_vector(0 to 4));
end Orologio_board;

architecture Structural of Orologio_board is

component ButtonDebouncer is
    generic (                       
        CLK_period:   integer := 20;  
        btn_noise_time:   integer := 2000000000 
                                      
    );
    Port ( CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end component;
	component DEMUX_1_4 is
		port(
			d : in STD_LOGIC;
			s : in STD_LOGIC_VECTOR(1 downto 0);
			c : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
	
		component Divisore_freq is
		generic(
			freq_in : integer := 50000000;
			freq_out : integer := 1
		);
	
		port(
			clk : in std_logic;
			en : in std_logic;
			rst : in std_logic;
			clk_out : out std_logic
		);
	end component;
	
	component ControlloreI is
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
			  SET : in  STD_LOGIC;
           HMS : in  STD_LOGIC_VECTOR(1 downto 0);
			  Output : out STD_LOGIC_VECTOR(5 downto 0)
			  );
	end component;

	
	component codificatore is
			port(
			I : in std_logic_vector(0 to 11);
			Z : out std_logic_vector(0 to 15)
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
				cathodes : out std_logic_vector(7 downto 0));
	end component;
	
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
	

signal SETS: std_logic_vector(3 downto 0):=(others=>'0');
signal k: std_logic_vector(16 downto 0);
signal u: std_logic_vector(0 to 15);
signal clock: std_logic;
signal S: std_logic_vector(5 downto 0);
signal clear_set: std_logic;

begin

 btn : ButtonDebouncer
    Port map( CLK => clk,
            BTN => set,
           CLEARED_BTN => clear_set
			  );
cod: codificatore 
			port map(
			I=>k(11 downto 0),
			Z=>u
			);

cnt : ControlloreI
    Port map ( I => I,
			  SET => clear_set,
           HMS => HMS,
			  Output => S 
			  );


	
demux : DEMUX_1_4
	port map(
		d=>clear_set,
		s=>HMS,
		c=>SETS
	);
	
Orologio:Orologio_hh_mm_ss
	port map(
		CLK=>clock,
		rst => rst,
		en => '1',
		set_hms=>sets(2 downto 0),
		I => S,
		Y =>k
	);
	
	Divf : Divisore_freq
		port map(
			clk => clk,
			en => '1',
			rst =>rst,
			clk_out => clock
		);
SSD: Seven_segments_display
	port map(
			clk =>clk,
			en => '1',
			rst => rst,
			enable_digit =>"1111",
			value => u,
			dots =>"0000",
			anodes => anodes,
			cathodes =>CATODES	
	);
	
	LEDS <= k(16 downto 12);

end Structural;

