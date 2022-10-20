----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:09 10/30/2021 
-- Design Name: 
-- Module Name:    Encoder_prioritario - Structural 
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

entity Encoder_prioritario is
	
	port(
        I : in STD_LOGIC_VECTOR(9 downto 0);
        U : out STD_LOGIC_VECTOR(3 downto 0)
       );
		 
end Encoder_prioritario;

architecture Structural of Encoder_prioritario is

	 COMPONENT Arbitro IS
	 
        Port(
            A : in STD_LOGIC_VECTOR(9 downto 0);
            B : out STD_LOGIC_VECTOR(9 downto 0)
           );
			  
    END COMPONENT;
    
    COMPONENT encoder_10_4 IS
	 
        Port(
            X : in STD_LOGIC_VECTOR(9 downto 0);
            Y : out STD_LOGIC_VECTOR(3 downto 0)
           );
			  
    END COMPONENT;
    
    signal k : STD_LOGIC_VECTOR(9 downto 0);
	 
begin

    A : Arbitro 
        PORT MAP( 
            A => I,
            B => k
        );
    
    E : encoder_10_4 
        PORT MAP(
            X => k,
            Y => U
        );

end Structural;

