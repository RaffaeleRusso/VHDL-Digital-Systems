
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity display_seven_segments is
    Port ( 
           VALUE : in  STD_LOGIC_VECTOR (3 downto 0);
           ENABLE : in  STD_LOGIC_VECTOR (3 downto 0); -- decide quali cifre abilitare
           DOTS : in  STD_LOGIC_VECTOR (5 downto 0); -- decide quali punti visualizzare
           ANODES : out  STD_LOGIC_VECTOR (3 downto 0);
           CATHODES : out  STD_LOGIC_VECTOR (7 downto 0));
end display_seven_segments;

architecture Structural of display_seven_segments is

COMPONENT cathodes_manager
	PORT(
		value : IN std_logic_vector(3 downto 0);
		dots : IN std_logic_vector(5 downto 0);          
		cathodes : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

begin 
cathodes_instance: cathodes_manager
 port map(
	value => value,
	dots => dots,
	cathodes => cathodes
);

ANODES <= NOT ENABLE;

end Structural;

