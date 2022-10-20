----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:26 09/08/2022 
-- Design Name: 
-- Module Name:    op_unit - Structural 
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

entity op_unit is
	generic(
		N : integer := 2
	);
	port(
		IN0 : in std_logic_vector(N-1 downto 0);
		IN1 : in std_logic_vector(N-1 downto 0);
		IN2 : in std_logic_vector(N-1 downto 0);
		IN3 : in std_logic_vector(N-1 downto 0);
		SRC : in std_logic_vector(1 downto 0);
		DEST : in std_logic_vector(1 downto 0);
		OUT0 : out std_logic_vector(N-1 downto 0);
		OUT1 : out std_logic_vector(N-1 downto 0);
		OUT2 : out std_logic_vector(N-1 downto 0);
		OUT3 : out std_logic_vector(N-1 downto 0)
	);
end op_unit;

architecture Structural of op_unit is

	component RoutingNode is
		generic(
			N : integer := 2
		);
		port(
			DATA_IN1 : in std_logic_vector(N-1 downto 0);
			DATA_IN2 : in std_logic_vector(N-1 downto 0);
			DATA_OUT1 : out std_logic_vector(N-1 downto 0);
			DATA_OUT2 : out std_logic_vector(N-1 downto 0);
			SRC : in std_logic;
			DEST : in std_logic
		);
	end component;
	
type u_type is array(0 to 3) of std_logic_vector(N-1 downto 0);
signal u : u_type;

begin

	nodo01 : RoutingNode
	generic map(
		N => N
	)
	port map(
		DATA_IN1 => IN0,
		DATA_IN2 => IN1,
		DATA_OUT1 => u(0),
		DATA_OUT2 => u(1),
		SRC => SRC(0),
		DEST => DEST(1)
	);

	nodo23 : RoutingNode
	generic map(
		N => N
	)
	port map(
		DATA_IN1 => IN2,
		DATA_IN2 => IN3,
		DATA_OUT1 => u(2),
		DATA_OUT2 => u(3),
		SRC => SRC(0),
		DEST => DEST(1)
	);
	
	nodo02 : RoutingNode
	generic map(
		N => N
	)
	port map(
		DATA_IN1 => u(0),
		DATA_IN2 => u(2),
		DATA_OUT1 => OUT0,
		DATA_OUT2 => OUT1,
		SRC => SRC(1),
		DEST => DEST(0)
	);
	
	nodo13 : RoutingNode
	generic map(
		N => N
	)
	port map(
		DATA_IN1 => u(1),
		DATA_IN2 => u(3),
		DATA_OUT1 => OUT2,
		DATA_OUT2 => OUT3,
		SRC => SRC(1),
		DEST => DEST(0)
	);

end Structural;

