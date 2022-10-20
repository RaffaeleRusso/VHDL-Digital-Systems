----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:23:53 09/08/2022 
-- Design Name: 
-- Module Name:    Mux_4_1 - Dataflow 
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

entity Mux_4_1 is
	port(
		X0 : in std_logic_vector(1 downto 0);
		X1 : in std_logic_vector(1 downto 0);
		X2 : in std_logic_vector(1 downto 0);
		X3 : in std_logic_vector(1 downto 0);
		sel : in std_logic_vector(1 downto 0);
		Y : out std_logic_vector(1 downto 0)
	);
end Mux_4_1;

architecture Dataflow of Mux_4_1 is

begin

	Y <=  X0 when sel = "00" else
			X1 when sel = "01" else
			X2 when sel = "10" else
			X3 when sel = "11";

end Dataflow;

