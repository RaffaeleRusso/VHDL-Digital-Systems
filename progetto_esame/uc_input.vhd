----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:15:56 10/17/2022 
-- Design Name: 
-- Module Name:    uc_input - structural 
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

entity uc_input is
port( 
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		en_cnt : out std_logic;
		rts : out std_logic;
		cts: in std_logic;
		div : in std_logic;
		go : in std_logic
		); 
end uc_input;

architecture structural of uc_input is
	type state is (idle,q0, q1,q2);
	signal current_state : state := idle;

	begin 

	reg_stato: process(CLK)
		 begin
		  if(rising_edge(CLK)) then 
				if (rst = '1') then
					 	current_state<=idle;
				else
		  CASE current_state is
		  WHEN idle =>
					   if(go='1') then 
							current_state<=q0;
						end if;
		  WHEN q0 => 
						RTS <= '1';
						en_cnt <= '0';
						if (CTS = '1') then 
							RTS <='0';
							current_state <= q1;
							en_cnt <= '1';
						end if;
		 WHEN q1 => 
				en_cnt <= '0';
				if (DIV = '1') then 
						current_state <= idle;
				else
					current_state <= q2;
				 end if;
				
		WHEN q2 =>
			current_state <= q0;
		  end CASE;
			end if;
			 end if;
			 end process;
			
			  
		  end structural;

