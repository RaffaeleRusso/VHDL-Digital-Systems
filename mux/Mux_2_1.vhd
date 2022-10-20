----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:37 02/14/2022 
-- Design Name: 
-- Module Name:    Mux_2_1 - Dataflow 
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

entity mux_2_1 is
	port(
		s : in STD_LOGIC;
		a0, a1 : in STD_LOGIC;
		y : out STD_LOGIC
	);
end mux_2_1;

architecture Dataflow of mux_2_1 is

begin
	with s select
		y <= a0 when '0',
			a1 when '1',
			'-' when others;

end Dataflow;

