----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:08:47 11/19/2021 
-- Design Name: 
-- Module Name:    Test_system - Behavioral 
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

entity Test_system is

	port( CLK : in std_logic;
			RST : in std_logic;
			BTN_READ : in std_logic;
			Y : out std_logic_vector(2 downto 0)
	);
	
end Test_system;

architecture Behavioral of Test_system is

	signal address : std_logic_vector(3 downto 0) := (others => '0');
	signal u : std_logic_vector(3 downto 0) := (others => '0');
	signal t	: std_logic_vector(2 downto 0) := (others => '0');
	signal sel : std_logic := '1';
	signal clk_counter : std_logic;
	signal clocks : std_logic_vector(0 to 1);
	
	component mux_2_1 is 
	
		port( s : in std_logic;
				a0, a1 : in std_logic;
				y : out std_logic
		);
	
	end component;

	component ROM is
	
		port( CLK : in std_logic; 
				RST : in std_logic;
				BTN_READ : in std_logic; 
				ADDR : in std_logic_vector(3 downto 0); 
				DATA : out std_logic_vector(3 downto 0)
		);
		
	end component;
		
	component RAM is
	
		port( clk : in std_logic;
				rst : in std_logic;
				we : in std_logic;
				en : in std_logic;
				addr : in std_logic_vector(3 downto 0);
				di : in std_logic_vector(2 downto 0);
				do : out std_logic_vector(2 downto 0)
		);
		
	end component;
	
	component clock_filter is
	
		port( clock_in : in STD_LOGIC;
				reset : in STD_LOGIC;
				clock_out1 : out STD_LOGIC;
				clock_out2 : out STD_LOGIC
		);
		
	end component;
	
	component Macchina_combinatoria is
	
		port( X : in std_logic_vector(3 downto 0);
				Y : out std_logic_vector(2 downto 0)
		);
		
	end component;
	
	component Counter_address is
	
		port( clock : in STD_LOGIC;
				reset : in STD_LOGIC;
				enable : in STD_LOGIC; --enable viene dal divisore di frequenza
				counter : out STD_LOGIC_VECTOR (3 downto 0);
				e : out std_logic
		);
		
	end component;

begin

	ROM_0: ROM
		
		port map( CLK => CLK, 
					 RST => RST,
					 BTN_READ => BTN_READ, 
					 ADDR => address,
					 DATA => u
		);
		
	Macchina_combinatoria_0 : Macchina_combinatoria
	
		port map( X => u,
					 Y => t
		);
		
	mux_0 : mux_2_1
	
		port map( s => sel,
					 a0 => clocks(1),
					 a1 => clocks(0),
					 y => clk_counter
		);
		
	clock_filter_0 : clock_filter
	
		port map( clock_in => CLK,
					 reset => RST,
					 clock_out1 => clocks(0),
				    clock_out2 => clocks(1)
		);
	
	RAM_0 : RAM
	
		port map( clk => CLK,
					 rst => RST,
					 we => sel,
					 en => '1',
					 addr => address,
					 di => t,
					 do => Y
		);
	
	Counter_address_0 : Counter_address
	
		port map( clock => CLK,
					 reset => BTN_READ,
					 enable => clk_counter,
					 counter => address,
					 e => sel
		);

end Behavioral;

