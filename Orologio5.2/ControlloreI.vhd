----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:06:17 03/07/2022 
-- Design Name: 
-- Module Name:    ControlloreI - Behavioral 
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

entity ControlloreI is
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
			  SET : in  STD_LOGIC;
           HMS : in  STD_LOGIC_VECTOR(1 downto 0);
			  Output : out STD_LOGIC_VECTOR(5 downto 0)
			  );
end ControlloreI;

architecture Behavioral of ControlloreI is

begin
control_process: process(SET)
begin
     if(HMS="10") then	 
			if I>"010111" then
				Output<="000000";
			else 
				Output<=I;
			end if;
	  else
		  if I>"111011" then
				Output<="000000";	
			else 
				Output<=I;
			end if;
	  end if;
end process;

end Behavioral;

