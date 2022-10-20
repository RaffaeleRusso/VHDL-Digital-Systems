----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:13:17 12/07/2021 
-- Design Name: 
-- Module Name:    Cathodes_manager - Behavioral 
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

entity Cathodes_manager is
	port(
		cont : in std_logic_vector(1 downto 0);
		value : in std_logic_vector(15 downto 0);
		dots : in std_logic_vector(3 downto 0);
		cathodes : out std_logic_vector(7 downto 0)
	);
end Cathodes_manager;

architecture Behavioral of Cathodes_manager is

	constant zero : std_logic_vector(6 downto 0) := "1000000";
	constant one : std_logic_vector(6 downto 0) := "1111001";
	constant two : std_logic_vector(6 downto 0) := "0100100";
	constant three : std_logic_vector(6 downto 0) := "0110000";
	constant four : std_logic_vector(6 downto 0) := "0011001";
	constant five : std_logic_vector(6 downto 0) := "0010010";
	constant six : std_logic_vector(6 downto 0) := "0000010";
	constant seven : std_logic_vector(6 downto 0) := "1111000";
	constant eight : std_logic_vector(6 downto 0) := "0000000";
	constant nine : std_logic_vector(6 downto 0) := "0010000";
	constant a : std_logic_vector(6 downto 0) := "0001000";
	constant b : std_logic_vector(6 downto 0) := "0000011";
	constant c : std_logic_vector(6 downto 0) := "1000110";
	constant d : std_logic_vector(6 downto 0) := "0100001";
	constant e : std_logic_vector(6 downto 0) := "0000110";
	constant f : std_logic_vector(6 downto 0) := "0001110";
	alias digit_0 is value (15 downto 12);
alias digit_1 is value (11 downto 8);
alias digit_2 is value (7 downto 4);
alias digit_3 is value (3 downto 0);


signal cathodes_for_digit : std_logic_Vector(6 downto 0) := (others => '0');
signal nibble :std_logic_vector(3 downto 0) := (others => '0');
signal dot :std_logic := '0'; --stabilisce se il punto relativo alla cifra visualizzata deve essere acceso o spento
                              --nota: dot=1 significa che deve essere acceso, ma il segnale deve essere negato per andare sui catodi 
begin 

-- questo processo multiplexa le cifre da mostrare
digit_switching: process(cont)
begin
	
	case cont is
		when "00" =>
			nibble <= digit_3;
			dot <= dots(0);
		when "01" =>
			nibble <= digit_2;
			dot <= dots(1);
		when "10" =>
			nibble <= digit_1;
			dot <= dots(2);
		when "11" =>
			nibble <= digit_0;
			dot <= dots(2);
			
		when others =>
			nibble <= (others => '0');
			dot <= '0';
	end case;
end process;
			 
seven_segment_decoder_process: process(nibble) 
  begin   
    case nibble is 
      when "0000" => cathodes_for_digit <= zero; 
      when "0001" => cathodes_for_digit <= one; 
      when "0010" => cathodes_for_digit <= two; 
      when "0011" => cathodes_for_digit <= three; 
      when "0100" => cathodes_for_digit <= four; 
      when "0101" => cathodes_for_digit <= five; 
      when "0110" => cathodes_for_digit <= six; 
      when "0111" => cathodes_for_digit <= seven; 
      when "1000" => cathodes_for_digit <= eight; 
      when "1001" => cathodes_for_digit <= nine; 
      when "1010" => cathodes_for_digit <= a; 
      when "1011" => cathodes_for_digit <= b; 
      when "1100" => cathodes_for_digit <= c; 
      when "1101" => cathodes_for_digit <= d; 
      when "1110" => cathodes_for_digit <= e; 
      when "1111" => cathodes_for_digit <= f;
		when others => cathodes_for_digit <= (others => '0');
    end case; 
  end process seven_segment_decoder_process;
  
	cathodes <= (not dot)&cathodes_for_digit; 

end Behavioral;

	
	