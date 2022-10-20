----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:39:33 09/08/2022 
-- Design Name: 
-- Module Name:    Omega_network - Structural 
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

entity Omega_network is
	generic(
		N : integer := 2
	);
	
	port(
		R : in std_logic_vector(0 to 3);
		DEST0 : in std_logic_vector(1 downto 0);
		DATO0 : in std_logic_vector(N-1 downto 0);
		DEST1 : in std_logic_vector(1 downto 0);
		DATO1 : in std_logic_vector(N-1 downto 0);
		DEST2 : in std_logic_vector(1 downto 0);
		DATO2 : in std_logic_vector(N-1 downto 0);
		DEST3 : in std_logic_vector(1 downto 0);
		DATO3 : in std_logic_vector(N-1 downto 0);
		OUT0 : out std_logic_vector(N-1 downto 0);
		OUT1 : out std_logic_vector(N-1 downto 0);
		OUT2 : out std_logic_vector(N-1 downto 0);
		OUT3 : out std_logic_vector(N-1 downto 0)
	);
end Omega_network;

architecture Structural of Omega_network is

	component op_unit
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
	end component;
	
	component control_unit
		port(
		DEST0 : in std_logic_vector(1 downto 0);
		DEST1 : in std_logic_vector(1 downto 0);
		DEST2 : in std_logic_vector(1 downto 0);
		DEST3 : in std_logic_vector(1 downto 0);
		EN : in std_logic_vector(0 to 3);
		SRC : out std_logic_vector(1 downto 0);
		DEST : out std_logic_vector(1 downto 0)
	);
	end component;

signal sorg : std_logic_vector(1 downto 0);
signal destin : std_logic_vector(1 downto 0);

begin

	op : op_unit
	generic map(
		N => N
	)
	port map(
		IN0 => DATO0,
		IN1 => DATO1,
		IN2 => DATO2,
		IN3 => DATO3,
		SRC => sorg,
		DEST => destin,
		OUT0 => OUT0,
		OUT1 => OUT1,
		OUT2 => OUT2,
		OUT3 => OUT3
	);

	cnt : control_unit
		port map(
			DEST0 => DEST0,
			DEST1 => DEST1,
			DEST2 => DEST2,
			DEST3 => DEST3,
			EN => R,
			SRC => sorg,
			DEST => destin
		);
end Structural;

