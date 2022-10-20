
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity riconoscitore_sequenza_temp is
	port(
				I : in std_logic;
				CLK : in std_logic;
				M : in std_logic :='0';
				RST : in std_logic := '0';
				B_M : in std_logic :='0';
				B_IN : in std_logic :='0';
				Y : out std_logic := '0';
				Y_Q_0: out std_logic :='0';
				Y_Q_1: out std_logic :='0'
				);
end riconoscitore_sequenza_temp;

architecture structural of riconoscitore_sequenza_temp is
	
component riconoscitore_sequenza
		port(
			I : in std_logic;
			CLK : in std_logic;
			M : in std_logic :='0';
			RST : in std_logic := '0';
			B_M : in std_logic :='0';
			B_IN : in std_logic :='0';
			Y : out std_logic := '0';
			Y_Q_0: out std_logic :='0';
			Y_Q_1: out std_logic :='0'
			);
end component;

component ButtonDebouncer 
    Port ( CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end component;

signal cleared_IN : std_logic := '0';
signal cleared_M : std_logic := '0';


begin

riconoscitore_sequenza_0 : riconoscitore_sequenza
	port map(
			I  => I,
			CLK => CLK,
			M => M,
			RST => RST,
			B_M => cleared_M,
			B_IN => cleared_IN,
			Y => Y,
			Y_Q_0 => Y_Q_0,
			Y_Q_1 => Y_Q_1
		);
		
ButtonDebouncerIN : ButtonDebouncer
	port map(
			  CLK => CLK,
           BTN => B_IN,
           CLEARED_BTN => cleared_IN
		);
		
ButtonDebouncerM : ButtonDebouncer
	port map(
			  CLK => CLK,
           BTN => B_M,
           CLEARED_BTN => cleared_M
		);

end structural;


