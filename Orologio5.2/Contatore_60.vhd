----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:34 12/01/2021 
-- Design Name: 
-- Module Name:    Contatore_60 - Structural 
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

entity Contatore_60 is
	port(
		clk : in std_logic;
		en : in std_logic;
		rst : in std_logic;
		set : in std_logic;
		I : in std_logic_vector(5 downto 0);
		Y : out std_logic_vector(5 downto 0);
		DIV : out std_logic
	);
end Contatore_60;

architecture Structural of Contatore_60 is

	signal usc : std_logic_vector(5 downto 0) := (others => '0');
	signal t : std_logic_vector(4 downto 0) := (others => '0');
	signal r : std_logic := '0';
	
	component FFT is
		port(
			clk : in std_logic;
			en : in std_logic;
			rst : in std_logic;
			set : in std_logic;
			I : in std_logic;
			Y : out std_logic
		);
	end component;

begin

	r <= rst or (usc(5) and usc(4) and usc(3) and usc(2) and not usc(1) and not usc(0)); --60
	
	F1 : FFT
		port map(
			clk => clk,
			en => en,
			rst => r,
			set => set,
			I => I(0),
			Y => usc(0)
		);
		
	t(0) <= clk and usc(0);
	
	F2 : FFT
		port map(
			clk => t(0),
			en => en,
			rst => r,
			set => set,
			I => I(1),
			Y => usc(1)
		);
	
	t(1) <= clk and usc(0) and usc(1);
		
	F3 : FFT
		port map(
			clk => t(1),
			en => en,
			rst => r,
			set => set,
			I => I(2),
			Y => usc(2)
		);
		
	t(2) <= clk and usc(0) and usc(1) and usc(2);
		
	F4 : FFT
		port map(
			clk => t(2),
			en => en,
			rst => r,
			set => set,
			I => I(3),
			Y => usc(3)
		);
		
	t(3) <= clk and usc(0) and usc(1) and usc(2) and usc(3);	
		
	F5 : FFT
		port map(
			clk => t(3),
			en => en,
			rst => r,
			set => set,
			I => I(4),
			Y => usc(4)
		);
		
	t(4) <= clk and usc(0) and usc(1) and usc(2) and usc(3) and usc(4);
		
	F6 : FFT
		port map(
			clk => t(4),
			en => en,
			rst => r,
			set => set,
			I => I(5),
			Y => usc(5)
		);
		
	DIV <= usc(5) and usc(4) and usc(3) and not usc(2) and usc(1) and usc(0); --59
	
	Y <= usc(5) & usc(4) & usc(3) & usc(2) & usc(1) & usc(0);
	
end Structural;