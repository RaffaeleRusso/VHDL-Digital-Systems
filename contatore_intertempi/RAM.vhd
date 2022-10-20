----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:48 11/17/2021 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
	
   port ( clk  : in std_logic;
			 rst  : in std_logic;
          we   : in std_logic;
          en   : in std_logic;
          addr : in std_logic_vector(3 downto 0);
          di   : in std_logic_vector(16 downto 0);
          do   : out std_logic_vector(16 downto 0)
	);
	
end RAM;

architecture Behavioral of RAM is
	
	type ram_type is array (0 to 15) of std_logic_vector (16 downto 0);
   signal RAM : ram_type;

begin
	
	 process (clk)
    begin
        if clk'event and clk = '1' then
				if rst = '1' then
					
					RAM <= (others => (others => '0'));
					
            elsif en = '1' then
                if we = '1' then
                    RAM(conv_integer(addr)) <= di;
                else
                    do <= RAM( conv_integer(addr));
                end if;
            end if;
        end if;
    end process;
end Behavioral;

