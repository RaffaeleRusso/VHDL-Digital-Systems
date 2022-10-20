----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:09 10/19/2021 
-- Design Name: 
-- Module Name:    rete_intercon - Behavioral 
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

entity rete_intercon is
	port(
		X : in STD_LOGIC_VECTOR(0 to 15);
		h : in STD_LOGIC_VECTOR(5 downto 0);
		Q  : out STD_LOGIC_VECTOR(3 downto 0));
end rete_intercon;

architecture structural of rete_intercon is
	signal u :  STD_LOGIC; 
	
	COMPONENT mux16
		PORT(
			I : in  STD_LOGIC_VECTOR(0 to 15) ;
			sel : in  STD_LOGIC_VECTOR(3 downto 0) ;
			O : out STD_LOGIC
		);

    END COMPONENT;
	 
	 COMPONENT DEMUX_1_4 is

		PORT(
			d  : in STD_LOGIC;
			s  : in STD_LOGIC_VECTOR(1 downto 0);
			c  : out STD_LOGIC_VECTOR(0 to 3)
		);

	END COMPONENT;
	 
	 begin 
			mux_0: mux16
				Port map(
					I => X,
					sel => h(5 downto 2),
					O => u
				);
								
			demux_0: DEMUX_1_4
				Port map(	
					d => u,
					s => h(1 downto 0),
					c => Q
				);

end structural;

