library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ripple_carry is
	generic(N : integer := 4);
	port( X, Y: in std_logic_vector(N-1 downto 0);
		  c_in: in std_logic;
		  c_out: out std_logic;
		  Z: out std_logic_vector(N-1  downto 0));
end ripple_carry;

architecture structural of ripple_carry is
	component full_adder is 
	port(
	a,b: in std_logic; 
	cin: in std_logic;
	cout, s: out std_logic);
	end component;
	
	signal temp: std_logic_vector(N-1 downto 0);
	
	begin
	
	RA_first: full_adder port map(X(0), Y(0), c_in, temp(0), Z(0));
	
	RA_middle: FOR i IN 1 TO N-2 GENERATE
			RA: full_adder port map(X(i), Y(i), temp(i-1), temp(i), Z(i));
			END GENERATE;
			
	RA_last: full_adder port map(X(N-1), Y(N-1), temp(N-2), c_out, Z(N-1));
	
	end structural;