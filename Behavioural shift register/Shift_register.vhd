----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:15 11/05/2021 
-- Design Name: 
-- Module Name:    Shift_register - Behavioral 
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

use IEEE.NUMERIC_STD.ALL;

entity Shift_register is
	generic(N : integer);
	
	port(
		CLK : in std_logic;
		Y : in std_logic_vector (0 to 3) := "0000";
		M : in std_logic;
		RST : in std_logic;
		SET : in std_logic;
		INPUT : in std_logic;
		L_OUT : out std_logic;
		R_OUT : out std_logic
	);
end Shift_register;

architecture Behavioral of Shift_register is
	signal T : std_logic_vector(0 to N-1) := (others => '0');
	
begin

	Processo: process(CLK, RST)
		variable nshift : integer := to_integer(unsigned(Y));
		
		begin
		if (nshift=0 and SET = '1') then
			nshift := to_integer(unsigned(Y));
		end if;
		
		if (RST='1') then
			T <= (others => '0');
		elsif (CLK'event and CLK='1') then
				if (M='0' and nshift>0) then
					T(0) <= INPUT;
					T(1 to N-1) <= T(0 to N-2);
					nshift := nshift-1;
				elsif(M='1' and nshift>0) then
					T(N-1) <= INPUT;					
					T(0 to N-2) <= T(1 to N-1);
					nshift := nshift-1;
				end if;
		end if;
	end process;
	
	R_OUT <= T(N-1);
	L_OUT <= T(0);
end Behavioral;

