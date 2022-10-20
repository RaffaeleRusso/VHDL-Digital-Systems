----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:12 10/30/2021 
-- Design Name: 
-- Module Name:    Arbitro - Dataflow 
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

entity Arbitro is

	port(
        A : in STD_LOGIC_VECTOR(9 downto 0);
        B : out STD_LOGIC_VECTOR(9 downto 0)
       );
end Arbitro;

architecture Dataflow of Arbitro is

begin

    B <= "1000000000" when A(9) = '1' else 
         "0100000000" when A(8) = '1' else
         "0010000000" when A(7) = '1' else
         "0001000000" when A(6) = '1' else
         "0000100000" when A(5) = '1' else
         "0000010000" when A(4) = '1' else
         "0000001000" when A(3) = '1' else
         "0000000100" when A(2) = '1' else
         "0000000010" when A(1) = '1' else
         "0000000001" when A(0) = '1' else
         "----------";

end Dataflow;

