----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:02 10/17/2022 
-- Design Name: 
-- Module Name:    Nodo_B - Structural 
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

entity Nodo_B is
port(
		CLK  : in std_logic;
		START : in std_logic;
		rst : in std_logic;
		stop : out std_logic;
		I : in std_logic;
		Z : out std_logic
	);

end Nodo_B;

architecture Structural of Nodo_B is
	component cnt_10 is
	port( CLK : in std_logic;
		  RST: in std_logic;
		  en: in std_logic;
		  count: out std_logic_vector(3 downto 0);
		  div : out std_logic);
end component;

component riconoscitore_sequenza is
	port(
			I : in std_logic :='0';
			CLK : in std_logic := '0';
			EN : in std_logic := '0';
			Y : out std_logic := '0'
		);
		
	end component;
	
	
	signal Y_0 : std_logic := '0';
	
begin

Z <= Y_0 ;

cnt_10_is : cnt_10 
		port map(
		 CLK => CLK,
		  RST => RST,
		  en => Y_0,
		  div  =>stop
		  );


ric: riconoscitore_sequenza 
	port map(
			I => I,
			CLK => clk,
			EN => start,
			Y => Y_0
		);
	
end Structural;

