library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity unita_controllo is 
	generic(N : integer:= 4);
	port( 
		CLK, RST : IN STD_LOGIC;
		start : in std_logic;
		load_resto_parziale : out std_logic;
		qi_in : in std_logic :='0';
		en_qi: out std_logic;
		shift : out std_logic;
		en_cnt : out std_logic;
		fine : in std_logic;
		load_qi : out std_logic
		); 
end unita_controllo;

architecture structural of unita_controllo is
	type state is (idle, wait_start, q_load, q1 , q2, q3, q4,q_wait,q5,q_corr);
	signal current_state : state := idle;

	begin 

	reg_stato: process(CLK)
		 begin
		  if(rising_edge(CLK)) then 
				
		  CASE current_state is
		  
		  WHEN idle =>
						load_resto_parziale <='0';
					   if(RST='1') then current_state<=wait_start;
					   else current_state<=idle;
					   end if;
		
		  WHEN wait_start => 
						if(start='1') then current_state<=q_load;
					   else current_state<=wait_start;
					   end if;
						
		 WHEN q_load => 
				current_state <= q1;
				
		 WHEN q1 =>  
				shift <= '1';
				current_state <= q2;
				
		 WHEN q2 => 
				shift <= '0';
				current_state <= q3;
	
		 WHEN q3 => 
			current_state <= q_wait;
			load_resto_parziale <= '1';
		 
		 WHEN q_wait =>
		   en_qi <= '1';
		 	load_resto_parziale <= '0';
			current_state <= q4;
			en_cnt <= '1';
		 
		 WHEN q4 =>
		   en_qi <= '0';
			load_qi <='1';
			en_cnt <= '0';
			current_state <= q5;
			
		WHEN q5 =>
			load_qi <='0';
			if (fine = '1') then
				current_state <= q_corr;
			else
				current_state <= q1;
			end if;
		
		WHEN q_corr =>
			if (qi_in = '0') then --il bit è in ingresso negato
				load_resto_parziale <= '1';
			end if;
			current_state <= idle;
			
				
		  end CASE;
			  end if;
			  end process;
			  
	
		  end structural;