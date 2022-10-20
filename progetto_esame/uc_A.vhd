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

entity uc_A is
port( 
		CLK : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		en_cnt : out std_logic;
		rts : out std_logic;
		cts: in std_logic;
		div : in std_logic;
		stop : in std_logic;
		load_sr : out std_logic;
		start : out std_logic;
		shift : out std_logic;
		go : in std_logic
		); 
end uc_A;

architecture structural of uc_A is
	type state is (idle,wait_cts, upload,wait_div,q_done);
	signal current_state : state := idle;

	begin 

	reg_stato: process(CLK)
		 begin
		  if(rising_edge(CLK)) then 
		  if rst = '1' then
			current_state<=idle;
		  else
		  CASE current_state is
		  WHEN idle =>
					   if(go= '1') then 
							current_state<=wait_cts;
						end if;
		  WHEN wait_cts => 
						RTS <= '0';
						
						if(CTS = '1') then 
							current_state <= upload;
						end if;
						
		 WHEN upload => 
					current_state <= wait_div;
					load_sr <= '1';
					start <= '1';
					en_cnt <= '1';
					shift <= '1';
					if (stop = '1') then
							current_state <= idle;
							shift <= '0';
							en_cnt <= '0';
							start <= '0';
							load_sr <= '0';
					end if;

		
		WHEN wait_div => 
				load_sr <= '0';
				if ( DIV = '1') then
					current_state <= q_done;	
				end if;
				
			
		when q_done =>
			shift <= '0';
			en_cnt <= '0';
			start <= '0';
			RTS <= '1'; 
			current_state <= wait_cts; 
				
	
		  end CASE;
			end if;
			end if;
			 end process;
			  
	
		  end structural;

