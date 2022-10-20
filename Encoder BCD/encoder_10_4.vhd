----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:27:09 10/30/2021 
-- Design Name: 
-- Module Name:    encoder_10_4 - Dataflow 
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

entity encoder_10_4 is

	port(
        X : in STD_LOGIC_VECTOR(9 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0)
       );
		 
end encoder_10_4;

architecture Dataflow of encoder_10_4 is

begin
	
	  with X select
        Y <= "0000" when "0000000001",
             "0001" when "0000000010",
             "0010" when "0000000100",
             "0011" when "0000001000",
             "0100" when "0000010000",
             "0101" when "0000100000",
             "0110" when "0001000000",
             "0111" when "0010000000",
             "1000" when "0100000000",
             "1001" when "1000000000",
             "----" when others;

end Dataflow;

