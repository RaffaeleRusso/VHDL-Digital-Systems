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
	generic(N : integer := 3);
	
	port(
		CLK : in std_logic;
		M : in std_logic;
		E : in std_logic;
		RST : in std_logic;
		I : in std_logic;
		Z : out std_logic
	);
end Shift_register;
--
--architecture Behavioral of Shift_register is
--	signal T : std_logic_vector(0 to N-1);
--	
--begin
--
--	Processo: process(CLK, RST)
--		variable nshift : integer := to_integer(unsigned(Y));
--		
--		begin
--		if (nshift=0 and SET = '1') then
--			nshift := to_integer(unsigned(Y));
--		end if;
--		
--		if (RST='1') then
--			T <= (others => '0');
--		elsif (CLK'event and CLK='1') then
--				if (M='0' and nshift>0) then
--					T(0) <= L_IN;
--					T(1 to N-1) <= T(0 to N-2);
--					nshift := nshift-1;
--				elsif(M='1' and nshift>0) then
--					T(N-1) <= R_IN;
--					T(0 to N-2) <= T(1 to N-1);
--					nshift := nshift-1;
--				end if;
--		end if;
--	end process;
--	
--	R_OUT <= T(N-1);
--	L_OUT <= T(0);
--end Behavioral;

architecture Structural of Shift_register is

	signal U : std_logic_vector(0 to N - 1);
	signal T : std_logic_vector(0 to N - 1);

	component mux_2_1
	
		port( s : in std_logic;
				a0, a1 : in std_logic;
				y : out std_logic 
		);
		
	end component;
	
	component D_FF
	
		port( E : in std_logic;
				CLK : in std_logic;
				RST : in std_logic;
				I : in std_logic;
				Q : out std_logic
		);
		
	end component;
	
	begin
	
	mux_all: for j in 1 to N - 2 generate
		
		mux : mux_2_1
		port map( s => M,
					 a0 => U(j - 1),
					 a1 => U(j + 1),
					 Y => T(j)
		);
	end generate;
	
	mux_0 : mux_2_1
	port map( s => M,
				 a0 => I,
				 a1 => U(1),
				 Y => T(0)
	);
	
	mux_N : mux_2_1
	port map( s => M,
				 a0 => U(N - 2),
				 a1 => I,
				 Y => T(N - 1)
	);
	
	mux_uscita : mux_2_1
	port map( s => M,
				 a0 => U(N - 1),
				 a1 => U(0),
				 Y => Z
	);
	
	
	D_FF_all : for j in 1 to N - 2 generate 
		
		D_FF_i : D_FF
		
	   port map( E => E,
					 CLK => CLK,
					 RST => RST,
				 	 I => T(j),
					 Q => U(j)
		);
	end generate;
	
	D_FF_0 : D_FF
	
		port map( E => E,
					 CLK => CLK,
					 RST => RST,
				 	 I => T(0),
					 Q => U(0)
		);
		
	D_FF_N : D_FF
	
		port map( E => E,
					 CLK => CLK,
					 RST => RST,
				 	 I => T(N - 1),
					 Q => U(N - 1)
		);
			
end Structural;

