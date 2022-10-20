-- Company:

-- Engineer:

--

-- Create Date:    13:54:51 10/18/2021

-- Design Name:

-- Module Name:    mux16 - Behavioral

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



entity mux4 is

	port(

			a  : in STD_LOGIC_VECTOR(3 downto 0);

			s  : in STD_LOGIC_VECTOR(1 downto 0);

			z  : out STD_LOGIC);

end mux4;



architecture Dataflow of mux4 is



begin

with s select

		z <= a(0) when "00" ,

			  a(1) when "01" ,

			  a(2) when "10" ,

			  a(3) when "11" ,

			 '-' when others;

end Dataflow;
