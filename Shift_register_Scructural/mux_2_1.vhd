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

 entity mux_2_1 is
 
	port( s : in std_logic;
			a0,a1 : in std_logic;
			y : out std_logic 
	);
			
end mux_2_1;

 architecture Dataflow of mux_2_1 is
 
	begin
	with s select
		y <= a0 when '0',
		a1 when '1',
		'-' when others;
		
end Dataflow;