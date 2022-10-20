----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:16:06 10/17/2022 
-- Design Name: 
-- Module Name:    system - Structural 
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

entity system is
		port(
	   CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		rts : out std_logic;
		cts: in std_logic;
		DATA : in std_logic_vector(3 downto 0);
		Z : out std_logic;
		go  : in std_logic
		);
end system;

architecture Structural of system is
component Nodo_A is
port(
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		rts : out std_logic;
		cts: in std_logic;
		DATA : in std_logic_vector(3 downto 0);
		I : out std_logic;
		start : out std_logic;
		stop : in std_logic;
		go : in std_logic
	);
end component;

component Nodo_B is
	port(
		CLK  : in std_logic;
		START : in std_logic;
		rst : in std_logic;
		stop : out std_logic;
		I : in std_logic;
		Z : out std_logic
	);
	end component;

signal start_0 : std_logic:= '0';
signal stop_0 : std_logic:= '0';
signal I_0 : std_logic:= '0';

begin

	nodoA : Nodo_A 
		port map(
		CLK => CLK,
		RST => RST,
		rts => rts,
		cts => cts,
		DATA => data,
		I => I_0,
		start => start_0,
		stop => stop_0,
		go => go
	);

	nodoB : Nodo_B 
	port map(
		CLK => CLK,
		start => start_0,
		rst => rst,
		stop => stop_0, 
		I => I_0,
		Z => Z
	);
	

end Structural;

