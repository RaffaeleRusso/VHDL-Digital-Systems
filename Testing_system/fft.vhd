---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:32 11/11/2021 
-- Design Name: 
-- Module Name:    ffT - Behavioral 
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

entity ffT is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		cont : out std_logic
		);
end ffT;

architecture Behavioral of ffT is
	signal T_Y : std_logic := '0';
begin
 ff : process(CLK,RST)
	begin
	if (RST  = '1') then
		T_Y <= '0';
	elsif(falling_edge(CLK)) then
		T_Y <= NOT T_Y;
	end if;
	
end process;

cont <= T_Y;


end Behavioral;