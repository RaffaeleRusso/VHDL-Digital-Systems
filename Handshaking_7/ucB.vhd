----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:22:33 09/16/2022 
-- Design Name: 
-- Module Name:    ucB - Behavioral 
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

entity ucB is
	port(
		CLK : in std_logic;
		we : out std_logic;
		RST : in std_logic;
		incr : out std_logic;
		RTS : out std_logic;
		CTS : in std_logic
	);
end ucB;

architecture Behavioral of ucB is

type stato is (q0, q1, q_wait, q2);
signal stato_corr : stato := q0;

begin

	proc : process(CLK)
		begin
			if (rising_edge(CLK)) then
				case stato_corr is
					when q0 =>
						RTS <= '0';
						incr <= '0';
						if (CTS = '1') then
							stato_corr <= q1;
						end if;
					when q1 =>
						stato_corr <= q_wait;
					when q_wait =>
						we <= '1';
						stato_corr <= q2;
					when q2 =>
						incr <= '1';
						we <= '0';
						RTS <= '1';
						stato_corr <= q0;
					when others =>
						stato_corr <= q0;
				end case;
			end if;
	end process;
end Behavioral;

