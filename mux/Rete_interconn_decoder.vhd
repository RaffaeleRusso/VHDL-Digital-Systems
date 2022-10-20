--------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:58 10/19/2021 
-- Design Name: 
-- Module Name:    rete_decoder - Behavioral 
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

entity rete_decoder is
	PORT(
		X : IN STD_LOGIC_VECTOR(3 downto 0);
		S : IN STD_LOGIC_VECTOR(5 downto 0);
		Y : OUT STD_LOGIC_VECTOR(0 to 3)
		
	);
end rete_decoder;

architecture Behavioral of rete_decoder is
	signal k : STD_LOGIC_VECTOR(0 to 15);

	COMPONENT rete_intercon

    PORT(

		  X : in STD_LOGIC_VECTOR(15 downto 0);

		  h : in STD_LOGIC_VECTOR(5 downto 0);

		  Q  : out STD_LOGIC_VECTOR(3 downto 0)

			);

    END COMPONENT;
	 
	COMPONENT decoder_4_16

    PORT(

		   I : in STD_LOGIC_VECTOR(3 downto 0);
			C : out STD_LOGIC_VECTOR(15 downto 0)

			);

    END COMPONENT;



begin

	rete_0 : rete_intercon
				Port map(  X => k,
							  h => S,
							  Q => Y
								);
								
			decoder_0: decoder_4_16
				Port map(	I => X,
								C => k
								);

end Behavioral;


