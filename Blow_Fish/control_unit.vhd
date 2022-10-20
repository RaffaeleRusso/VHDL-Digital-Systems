----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:12:57 09/12/2022 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
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

entity control_unit is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		start : in std_logic;
		m : in std_logic;
		load : out std_logic;
		incr : out std_logic;
		count : in std_logic_vector(4 downto 0);
		En_ppr : out std_logic;
		sel : out std_logic;
		load_round_out : out std_logic
	);
end control_unit;

architecture Behavioral of control_unit is

type stato is (idle, load_reg, M_wait1, round1, round_wait, round2, pp1, pp2);
signal stato_corr : stato := idle;

begin

	proc : process(CLK)
	begin
		if (rising_edge(CLK)) then
			if (RST = '1') then
				stato_corr <= idle;
			else
				case stato_corr is
					when idle =>
						En_ppr <= '0';
						if (start = '1') then
							stato_corr <= load_reg;
						end if;
					when load_reg =>
						if(M ='1') then
							LOAD <= '1';
							stato_corr <= M_wait1;
						else 
							stato_corr <= round1;
						end if;
					when M_wait1 =>
						LOAD <= '0';
						stato_corr <= round1;
					when round1 =>
						incr <= '1';
						stato_corr <= round_wait;
					when round_wait =>
						incr <= '0';
						load_round_out <= '1';
						stato_corr <= round2;
					when round2 =>
						load_round_out <= '0';
						if (count = "10000" and M = '0') then
							stato_corr <= pp1;
							En_ppr <= '1';
							incr <= '1'; 
							
						elsif (count = "00001" and M = '1') then
							stato_corr <= pp1;
							En_ppr <= '1';
							incr <= '1';
							
						else
							stato_corr <= round1;
						end if;
					when pp1 =>
						sel <= '0';
						stato_corr <= pp2;
					when pp2 =>
						incr <= '0';
						sel <= '1';
						stato_corr <= idle;
				end case;
			end if;
		end if;
	end process;
end Behavioral;

