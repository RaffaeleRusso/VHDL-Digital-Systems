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
			M : in std_logic :='0';
			RST : in std_logic := '0';
			B_M : in std_logic :='0';
			B_IN : in std_logic :='0';
			Y : out std_logic := '0';
			Y_Q_0: out std_logic :='0';
			Y_Q_1: out std_logic :='0'
		);

end riconoscitore_sequenza;





architecture Behavioral of riconoscitore_sequenza is

	type stato is (QM,Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10);
	
	
	signal stato_corrente : stato := QM;
	signal stato_prossimo : stato ;
	
	signal Y_prossimo : std_logic  := '0';
	

begin

mem : process(CLK)
	
	begin
		if(CLK'event and CLK = '1') then
			
			if(RST = '1' or B_M = '1') then 
				Y<='0';
				stato_corrente <= QM;
				if(M = '1') then
					stato_corrente <= Q7;
				
				else
					stato_corrente <= Q0;
				end if;
			else 
						if(B_IN = '1') then
							stato_corrente <= stato_prossimo; 
							Y <= Y_prossimo;
						end if;
			end if;
		end if;		
		
end process;

f_stato_uscita : process(stato_corrente,i) 

	begin
	

	case stato_corrente is
		when Q0 =>
			Y_Q_0<='1';
			Y_Q_1<='0';
			
			if(I = '0') then
				stato_prossimo <= Q2;
				Y_prossimo <= '0';
			else
				stato_prossimo <= Q1;
				Y_prossimo <= '0';
			end if;
			
		when Q1 =>
			Y_Q_0<='0';
			if(I = '0') then
			
				stato_prossimo <= Q3;
				Y_prossimo <= '0';
			else
			
				stato_prossimo <= Q4;
				Y_prossimo <= '0';
			end if;
		
		when Q2 =>
			Y_Q_0<='0';
			
			stato_prossimo <= Q4;
			Y_prossimo <= '0';
		
		when Q3 =>
			if(I = '0') then
			
				stato_prossimo <= Q5;
				Y_prossimo <= '0';
			else
				
				stato_prossimo <= Q6;
				Y_prossimo <= '0';
			end if;
			
		when Q4 =>
			
			stato_prossimo <= Q6;
			Y_prossimo <= '0';
		
		when Q5 =>
			if(I = '0') then
			
				stato_prossimo <= Q0;
				Y_prossimo <= '0';
			else
			
				stato_prossimo <= Q0;
				Y_prossimo <= '1';
			end if;
		
		when Q6 =>
			
			stato_prossimo <= Q0;
			Y_prossimo <= '0';
		
		when Q7 =>
			Y_Q_1<='1';
			Y_Q_0<='0';
			if(I = '0') then
			
				stato_prossimo <= Q7;
				Y_prossimo <= '0';
			else
			
				stato_prossimo <= Q8;
				Y_prossimo <= '0';
			end if;
			
		when Q8 =>
			Y_Q_1<='0';
			if(I = '0') then
			
				stato_prossimo <= Q9;
				Y_prossimo <= '0';
			else
			
				stato_prossimo <= Q8;
				Y_prossimo <= '0';
			end if;
			
		when Q9 =>
			if(I = '0') then
			
				stato_prossimo <= Q10;
				Y_prossimo <= '0';
			else
			
				stato_prossimo <= Q8;
				Y_prossimo <= '0';
			end if;
			
		when Q10 =>
			if(I = '0') then
			
				stato_prossimo <= Q7;
				Y_prossimo <= '0';
			else
			
				stato_prossimo <= Q7;
				Y_prossimo <= '1';
			end if;
		
		when others =>
		
			stato_prossimo <= Q0;
			Y_prossimo <= '0';
			
		end case;
	
end process;

end Behavioral;
