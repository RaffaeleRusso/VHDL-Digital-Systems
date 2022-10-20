----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:49:41 09/16/2012 
-- Design Name: 
-- Module Name:    counter_mod8 - Behavioral 
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
use IEEE.math_real."floor";
use IEEE.math_real."log2";
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- contatore utilizzato scorrere le cifre da visualizzare
entity counter is
	generic(
		N : integer := 8
	);
    Port ( 
		CLK : in  STD_LOGIC;
      RST : in  STD_LOGIC;
		EN : in STD_LOGIC;
      CNT : out  STD_LOGIC_VECTOR(integer(floor(log2(real(N)))) downto 0);
		DIV : out std_logic
		);
end counter;

architecture Behavioral of counter is

signal c : std_logic_vector (integer(floor(log2(real(N)))) downto 0) := (others => '0');

begin

CNT <= c;

counter_process: process(CLK)
begin
	if(rising_edge(CLK)) then
		if RST = '1' then
			c <= (others => '0');
	   elsif EN = '1' then
			c <= std_logic_vector(unsigned(c) + 1);
			if (unsigned(c) = N-1) then
				DIV <= '1';
			else
				DIV <= '0';
			end if;
		end if;
	end if;
end process;

end Behavioral;