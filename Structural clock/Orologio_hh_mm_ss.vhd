----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:56 12/03/2021 
-- Design Name: 
-- Module Name:    Orologio_hh_mm_ss - Structural 
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

entity Orologio_hh_mm_ss is
	port(
		clk : in std_logic;
		rst : in std_logic;
		en : in std_logic;
		set_hms : in std_logic_vector(2 downto 0);
		I : in std_logic_vector(5 downto 0);
		Y : out std_logic_vector(16 downto 0);
		DIV : out std_logic
	);
end Orologio_hh_mm_ss;

architecture Structural of Orologio_hh_mm_ss is
	
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
	
	component Contatore_60 is
		port(
			clk : in std_logic;
			en : in std_logic;
			rst : in std_logic;
			set : in std_logic;
			I : in std_logic_vector(5 downto 0);
			Y : out std_logic_vector(5 downto 0);
			DIV : out std_logic
		);
	end component;
	
	component Contatore_24 is
		port(
			clk : in std_logic;
			en : in std_logic;
			rst : in std_logic;
			set : in std_logic;
			I : in std_logic_vector(4 downto 0);
			Y : out std_logic_vector(4 downto 0);
			DIV : out std_logic
		);
	end component;
	
	signal clock : std_logic := '0';
	signal usc : std_logic_vector(2 downto 0) := (others => '0');
	signal t : std_logic_vector(1 downto 0) := (others => '0');
	
begin

	Divf : Divisore_freq
		generic map(
			freq_in => 50000000,
			freq_out => 1 --prova
		)
		
		port map(
			clk => clk,
			en => en,
			rst => rst,
			clk_out => clock
		);
	
	Secondi : Contatore_60
		port map(
			clk => clock,
			rst => rst,
			en => en,
			set => set_hms(0),
			I => I,
			Y => Y(5 downto 0),
			DIV => usc(0)
		);
		
	t(0) <= clock and usc(0);
		
	Minuti : Contatore_60
		port map(
			clk => t(0),
			rst => rst,
			en => en,
			set =>  set_hms(1),
			I => I,
			Y => Y(11 downto 6),
			DIV => usc(1)
		);
		
	t(1) <= clock and usc(0) and usc(1);
		
	Ore : Contatore_24
		port map(
			clk => t(1),
			rst => rst,
			en => en,
			set =>  set_hms(2),
			I => I(4 downto 0),
			Y => Y(16 downto 12),
			DIV => usc(2)
		);
		
	DIV <= usc(2) and usc(1) and usc(0);

end Structural;

