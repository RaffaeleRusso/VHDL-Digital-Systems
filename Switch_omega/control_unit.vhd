----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:15:33 09/08/2022 
-- Design Name: 
-- Module Name:    control_unit - Structural 
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

entity control_unit is
	port(
		DEST0 : in std_logic_vector(1 downto 0);
		DEST1 : in std_logic_vector(1 downto 0);
		DEST2 : in std_logic_vector(1 downto 0);
		DEST3 : in std_logic_vector(1 downto 0);
		EN : in std_logic_vector(0 to 3);
		SRC : out std_logic_vector(1 downto 0);
		DEST : out std_logic_vector(1 downto 0)
	);
end control_unit;

architecture Structural of control_unit is

	component Mux_4_1
		port(
		X0 : in std_logic_vector(1 downto 0);
		X1 : in std_logic_vector(1 downto 0);
		X2 : in std_logic_vector(1 downto 0);
		X3 : in std_logic_vector(1 downto 0);
		sel : in std_logic_vector(1 downto 0);
		Y : out std_logic_vector(1 downto 0)
	);
	end component;

	component Arbitro
		port(
		EN : in std_logic_vector(0 to 3);
		sel : out std_logic_vector(1 downto 0);
		SRC : out std_logic_vector(1 downto 0)
	);
	end component;

signal u : std_logic_vector(1 downto 0);

begin

	m : Mux_4_1
		port map(
			X0 => DEST0,
			X1 => DEST1,
			X2 => DEST2,
			X3 => DEST3,
			sel => u,
			Y => DEST
		);

	arb : Arbitro
		port map(
			EN => EN,
			SRC => SRC,
			sel => u
		);
end Structural;

