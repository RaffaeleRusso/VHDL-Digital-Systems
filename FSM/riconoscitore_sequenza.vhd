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

entity riconoscitore_sequenza is

	port(
			I : in std_logic;
			CLK : in std_logic;
			M : in std_logic;
			RST : in std_logic := '0';
			Y : out std_logic := '0'
		);

end riconoscitore_sequenza;

architecture Behavioral of riconoscitore_sequenza is

	type stato is (QM, Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10);
	signal stato_corrente : stato := QM;
	signal stato_prossimo : stato;

begin

mem : process(CLK)

	begin
		if(CLK'event and CLK = '1') then
			
			if(RST = '1') then 
			
				stato_corrente <= QM;
			
				if(M = '1') then
					
					stato_corrente <= Q7;
				else
				
					stato_corrente <= Q0;
				end if;
			else 
			
				stato_corrente <= stato_prossimo;
			end if;
		end if;
end process;

f_stato_uscita : process(stato_corrente, I)

	begin
	case stato_corrente is
		when Q0 =>
			if(I = '0') then
			
				stato_prossimo <= Q2;
				Y <= '0';
			else
			
				stato_prossimo <= Q1;
				Y <= '0';
			end if;
			
		when Q1 =>
			if(I = '0') then
			
				stato_prossimo <= Q3;
				Y <= '0';
			else
			
				stato_prossimo <= Q4;
				Y <= '0';
			end if;
		
		when Q2 =>
			
			stato_prossimo <= Q4;
			Y <= '0';
		
		when Q3 =>
			if(I = '0') then
			
				stato_prossimo <= Q5;
				Y <= '0';
			else
			
				stato_prossimo <= Q6;
				Y <= '0';
			end if;
			
		when Q4 =>
			
			stato_prossimo <= Q6;
			Y <= '0';
		
		when Q5 =>
			if(I = '0') then
			
				stato_prossimo <= Q0;
				Y <= '0';
			else
			
				stato_prossimo <= Q0;
				Y <= '1';
			end if;
		
		when Q6 =>
			
			stato_prossimo <= Q0;
			Y <= '0';
		
		when Q7 =>
			if(I = '0') then
			
				stato_prossimo <= Q7;
				Y <= '0';
			else
			
				stato_prossimo <= Q8;
				Y <= '0';
			end if;
			
		when Q8 =>
			if(I = '0') then
			
				stato_prossimo <= Q9;
				Y <= '0';
			else
			
				stato_prossimo <= Q8;
				Y <= '0';
			end if;
			
		when Q9 =>
			if(I = '0') then
			
				stato_prossimo <= Q10;
				Y <= '0';
			else
			
				stato_prossimo <= Q8;
				Y <= '0';
			end if;
			
		when Q10 =>
			if(I = '0') then
			
				stato_prossimo <= Q7;
				Y <= '0';
			else
			
				stato_prossimo <= Q7;
				Y <= '1';
			end if;
		
		when others =>
		
			stato_prossimo <= Q0;
			Y <= '0';
	end case;
end process;
end Behavioral;
