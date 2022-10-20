----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:34 12/03/2021 
-- Design Name: 
-- Module Name:    Divisore_freq - Behavioral 
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

entity Divisore_freq is
	generic(
		freq_in : integer := 50000000;
		freq_out : integer := 1
	);
	
	port(
		clk : in std_logic;
		en : in std_logic;
		rst : in std_logic;
		clk_out : out std_logic
	);
end Divisore_freq;

architecture Behavioral of Divisore_freq is
	constant cont_max : integer := freq_in/(freq_out)-1;
begin
	
	proc : process(clk)
	
		variable cont : integer range 0 to cont_max := 0;
		
		begin
			if (rising_edge(clk)) then
				if (rst = '1') then
					cont := 0;
					clk_out <= '0';
				elsif (en = '1') then
					if (cont = cont_max) then
						cont := 0;
						clk_out <= '1';
					else
						cont := cont + 1;
						clk_out <= '0';
					end if;
				end if;
			end if;
	end process;

end Behavioral;

