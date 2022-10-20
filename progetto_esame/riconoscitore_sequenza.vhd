----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    09:50:46 10/27/2021
-- Design Name:
-- Module Name:    riconoscitore_sequenza - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity riconoscitore_sequenza is

	port(
			I : in std_logic :='0';
			CLK : in std_logic := '0';
			EN : in std_logic := '0';
			Y : out std_logic := '0'
		);

end riconoscitore_sequenza;



architecture Behavioral of riconoscitore_sequenza is

	type stato is (Q0, Q1, Q2, Q3, Q4, Q5, Q6);
	
	signal stato_corrente : stato := Q0;


begin



reg : process(CLK) 

	begin
	if (rising_edge(CLK)) then 
		if (EN = '1') then
			case stato_corrente iS
				when Q0 =>
				y <= '0';
				if(I = '0') then
						stato_corrente <= Q2;
						
					else
						stato_corrente <= Q1;
					end if;
					
				when Q1 =>
					if(I = '0') then
						stato_corrente <= Q3;
					else
						stato_corrente <= Q4;
					end if;
				
				when Q2 =>
					
					stato_corrente <= Q4;
					
				
				when Q3 =>
					if(I = '0') then
						stato_corrente <= Q6;
					else
						stato_corrente <= Q5;
					end if;
				when Q4 =>
					
					stato_corrente <= Q6;
					
				
				when Q5 =>
					if(I = '0') then
						stato_corrente <= Q0;
						y <='1';
					else
						stato_corrente <= Q0;
						y <= '0';
						
					end if;
				
				when Q6 =>
					stato_corrente <= Q0;
					y <='0';
			end case;
		else
			y <='0';
			end if;
		end if;
	
	end process;

end Behavioral;
