----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:26 12/01/2021 
-- Design Name: 
-- Module Name:    FFT - Behavioral 
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

entity FFT is
	port(
		clk : in std_logic;
		en : in std_logic;
		rst : in std_logic;
		set : in std_logic;
		I : in std_logic;
		Y : out std_logic
	);
end FFT;

architecture Behavioral of FFT is
	
	signal T : std_logic := '0';

begin
	
	Y <= T;
	
	proc : process(clk, rst, set) --rst asincrono
		begin
			if (rst = '1') then
				T <= '0';
			elsif (set = '1') then
				T <= I;
			elsif (falling_edge(clk) and en = '1') then
				T <= not T;
			end if;
	end process;
	
--	proc : process(clk) -- rst sincrono
--		begin
--			if (falling_edge(clk) and en = '1') then
--				if (rst = '1') then
--					T <= '0';
--				elsif (set = '1') then
--					T <= I;
--				else
--					T <= not T;
--				end if;
--			end if;
--	end process;

	
end Behavioral;

