----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:22:18 09/16/2022 
-- Design Name: 
-- Module Name:    ucA - Behavioral 
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

entity ucA is
	port(
		CLK : in std_logic;
		start : in std_logic;
		RST : in std_logic;
		DIV : in std_logic;
		incr : out std_logic;
		RTS : out std_logic;
		CTS : in std_logic
	);
end ucA;

architecture Behavioral of ucA is

type stato is (idle, q0, q1);
signal stato_corr : stato := idle;

begin

	proc : process(CLK)
		begin
			if (rising_edge(CLK)) then
				case stato_corr is
					when idle =>
						incr <= '0';
						if (start = '1') then
							stato_corr <= q0;
						end if;
					when q0 =>
						RTS <= '1';
						if (CTS = '1') then
							incr <= '1';
							stato_corr <= q1;
						end if;
					when q1 =>
						incr <= '0';
						RTS <= '0';
						if (DIV = '1') then
							stato_corr <= idle;
						else
							stato_corr <= q0;
						end if;
					when others =>
						stato_corr <= idle;
				end case;
			end if;
	end process;
end Behavioral;

