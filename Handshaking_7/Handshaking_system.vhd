----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:56:18 09/16/2022 
-- Design Name: 
-- Module Name:    Handshaking_system - Structural 
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

entity Handshaking_system is
	generic(
		M : integer := 4;
		N : integer := 8
	);
    Port(
		start : in  STD_LOGIC;
      CLK : in  STD_LOGIC;
      RST : in  STD_LOGIC
	);
end Handshaking_system;

architecture Structural of Handshaking_system is

	component EntityA is
		generic(
			N : integer := 8;
			M : integer := 4
	);
		port(
			start : in std_logic;
			CLK : in std_logic;
			RST : in std_logic;
			RTS : out std_logic;
			CTS : in std_logic;
			DATA : out std_logic_vector(M-1 downto 0)
		);
	end component;
	
	component EntityB is
		generic(
			N : integer := 8;
			M : integer := 4
		);
		port(
			CLK : in std_logic;
			RST : in std_logic;
			RTS : out std_logic;
			CTS : in std_logic;
			DATA : in std_logic_vector(M-1 downto 0)
		);
	end component;
	
	signal rts0 : std_logic;
	signal cts0 : std_logic;
	signal d : std_logic_vector(M-1 downto 0);
begin

	A : EntityA
		generic map(
			N => N,
			M => M
		)
		port map(
			start => start,
			CLK => CLK,
			RST => RST,
			RTS => rts0,
			CTS => cts0,
			DATA => d
		);
	
	B : EntityB
		generic map(
			N => N,
			M => M
		)
		port map(
			CLK => CLK,
			RST => RST,
			RTS => cts0,
			CTS => rts0,
			DATA => d
		);

end Structural;

