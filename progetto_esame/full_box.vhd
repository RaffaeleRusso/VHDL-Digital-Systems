----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:25:58 10/17/2022 
-- Design Name: 
-- Module Name:    full_box - Structural 
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

entity full_box is
	 port(
	CLK : in std_logic;
	RST : in std_logic;
	go : in std_logic;
	Z : out std_logic
	);
end full_box;

architecture Structural of full_box is
component system is
		port(
	   CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		rts : out std_logic;
		cts: in std_logic;
		DATA : in std_logic_vector(3 downto 0);
		Z : out std_logic;
		go : in std_logic
		);
end component;

component Nodo_input is
port(
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		rts : out std_logic;
		cts: in std_logic;
		DATA : out std_logic_vector(3 downto 0);
		go : in std_logic
	);
	end component;

signal rts_0 : std_logic :='0';
signal cts_0 : std_logic :='0';
signal DATA_0 :  std_logic_vector(3 downto 0);

begin
	sys : system 
		port map(
	   CLK  => CLK,
		RST => RST,
		rts  => rts_0,
		cts => cts_0,
		DATA => data_0,
		Z => Z,
		go => go
		
		);
		
	N_in :  Nodo_input 
	port map(
		CLK  => CLK,
		RST  => RST,
		rts  => cts_0,
		cts  => rts_0,
		DATA => data_0,
		go => go
	);
	



end Structural;

