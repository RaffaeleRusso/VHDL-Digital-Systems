----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:57:50 09/06/2022 
-- Design Name: 
-- Module Name:    fsm_transmettitore - Behavioral 
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


entity fsm_ricevitore is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		DSR : in std_logic;
		DTR : out std_logic;
		EN : out std_logic; --abilitazione cnt
		RTS : out std_logic;
		CTS : in std_logic;
		W_RAM : out std_logic := '0';
		RDA : in std_logic;
		RD : out std_logic;
		ERROR : out std_logic;
		PE : in std_logic;
		FE : in std_logic
	);
end fsm_ricevitore;

architecture Behavioral of fsm_ricevitore is

type stato is (Q0, Q1, Q2, Q3, Q4);
signal stato_corrente : stato := Q0;

begin
mem : process(CLK)
	begin
		if(CLK'event and CLK = '1') then
			if(RST = '1') then 
				stato_corrente <= Q0;
			end if;
		case stato_corrente is
			when Q0 =>
				stato_corrente <= Q0;
				if (DSR = '1') then
					stato_corrente <= Q1;
				end if;
			when Q1 =>
				DTR <= '1';
				if (CTS = '1') then
					stato_corrente <= Q2;
				end if;
			when Q2 =>
				RTS <= '1';
				if (RDA = '1') then
				   RD <= '1';
					stato_corrente <= Q3;
				else 
					stato_corrente <= Q2;
				end if;
			when Q3 =>
				W_RAM <= '1';
				RD <= '0';
				EN <= '1';
				stato_corrente <= Q4;
			when Q4 =>
			   W_RAM <= '0';
				EN <= '0';
				
				if (PE = '1' OR FE = '1') then
					error <= '1';
				end if;
				
				if (CTS = '0') then
					RTS <= '0';
					stato_corrente <= Q1;
				end if;
				
			when others =>
				stato_corrente <= Q0;
			end case;
		end if;
end process;

end Behavioral;

