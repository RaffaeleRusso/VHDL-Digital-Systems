----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:12:29 12/07/2021 
-- Design Name: 
-- Module Name:    Anodes_manager - Behavioral 
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

entity Anodes_manager is
	port(
		cont : in std_logic_vector(1 downto 0);
		enable_digit : in std_logic_vector(3 downto 0);
		anodes : out std_logic_vector(3 downto 0)
	);
end Anodes_manager;

architecture Behavioral of Anodes_manager is
	
	signal anodes_switching : std_logic_vector(3 downto 0);
	
begin

	anodes_process : process(cont)
		begin
			case cont is
				when "00" => 
					anodes_switching <= "0001";
				when "01" => 
					anodes_switching <= "0010";
				when "10" => 
					anodes_switching <= "0100";
				when "11" => 
					anodes_switching <= "1000";
				
				when others=>
					anodes_switching <= (others=>'0');
				
			end case;
	end process;

	anodes <= anodes_switching nand enable_digit;

end Behavioral;

