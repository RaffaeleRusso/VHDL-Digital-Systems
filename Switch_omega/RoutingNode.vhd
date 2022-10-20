----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:56:58 09/07/2022 
-- Design Name: 
-- Module Name:    RoutingNode - Behavioral 
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

entity RoutingNode is
	generic(
		N : integer := 2
	);
	port(
		DATA_IN1 : in std_logic_vector(N-1 downto 0);
		DATA_IN2 : in std_logic_vector(N-1 downto 0);
		DATA_OUT1 : out std_logic_vector(N-1 downto 0);
		DATA_OUT2 : out std_logic_vector(N-1 downto 0);
		SRC : in std_logic;
		DEST : in std_logic
	);
end RoutingNode;

architecture Dataflow of RoutingNode is

begin
	DATA_OUT1 <= DATA_IN1 when SRC = '0' and DEST = '0' else
					 DATA_IN2 when SRC = '1' and DEST = '0' else
					 "00";
	
	DATA_OUT2 <= DATA_IN1 when SRC = '0' and DEST = '1' else 
					 DATA_IN2 when SRC = '1' and DEST = '1' else
					 "00";

end Dataflow;

