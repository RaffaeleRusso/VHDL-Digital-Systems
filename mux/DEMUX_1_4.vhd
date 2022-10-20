----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:57 10/19/2021 
-- Design Name: 
-- Module Name:    demux4 - Behavioral 
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
----------------------------------------------------------------------------------

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



entity DEMUX_1_4 is

	port(
			d  : in STD_LOGIC;
			s  : in STD_LOGIC_VECTOR(1 downto 0);
			c  : out STD_LOGIC_VECTOR(0 to 3)
	);

end DEMUX_1_4;



architecture Dataflow of DEMUX_1_4 is

begin

		c(0) <= d when (s = "00") else
			'-';
		c(1) <= d when (s = "01") else
				'-';
		c(2) <= d when (s = "10") else
				'-';
		c(3) <= d when (s = "11") else
				'-';

end Dataflow;

