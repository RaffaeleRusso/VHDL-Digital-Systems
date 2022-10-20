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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm_trasmettitore is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		START : in std_logic;
		DSR : in std_logic;
		DTR : out std_logic;
		EN : out std_logic;
		RTS : out std_logic;
		CTS : in std_logic;
		WR : out std_logic := '0';
		TBE : in std_logic;
		DIV : in std_logic
	);
end fsm_trasmettitore;

architecture Behavioral of fsm_trasmettitore is

type stato is (Q0, Q1, Q2, Q3, Q_w, Q4, Q5);
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
				if (START = '1') then
					stato_corrente <= Q1;
				else 
					stato_corrente <= Q0;
				end if;
			when Q1 =>
				DTR <= '1';
				if (DSR = '1') then
					stato_corrente <= Q2;
				else 
					stato_corrente <= Q1;
				end if;
			when Q2 =>
				EN <= '0';
				stato_corrente <= Q3;
			when Q3 =>
				RTS <= '1';
				if (CTS = '1') then
					WR <= '1';
					stato_corrente <= Q_w;
				else 
					stato_corrente <= Q3;
				end if;
			when Q_w =>
				stato_corrente <= Q4;
			when Q4 =>
				WR <= '0';
					if (TBE = '1') then
						stato_corrente <= Q5;
					else 
						stato_corrente <= Q4;
				end if;
			when Q5 =>
				RTS <= '0';
				if (DIV = '1') then
					stato_corrente <= Q0;
				elsif (CTS = '0') then
					EN <= '1';
					stato_corrente <= Q2;
				else
					stato_corrente <= Q5;
				end if;
			end case;
		end if;
end process;


end Behavioral;

