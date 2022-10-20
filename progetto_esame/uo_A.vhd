----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:47 10/17/2022 
-- Design Name: 
-- Module Name:    uo_A - Structural 
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

entity uo_A is
	port(
		CLK : in std_logic; 
		RST : in std_logic;
		DATA :in std_logic_vector(3 downto 0);
		I : out std_logic;
		shift : in std_logic;
		load_sr : in std_logic;
		en_cnt : in std_logic;
		div : out std_logic
	);
end uo_A;

architecture Structural of uo_A is
	component sr_par is
		port( 
		CLK: in std_logic; 
		RST: in std_logic; 
		X: in std_logic_vector(3 downto 0); 
		load : in std_logic;
		en_sr : in std_logic;
		Y: out std_logic 
	); 
	 end component;
	 
	 component cnt4 is
		port( CLK, RST: in std_logic;
		  en: in std_logic;
		  count: out std_logic_vector(1 downto 0);
		  div : out std_logic
		  );
		end component;
		
	 begin
		sr_par_0 : sr_par 
			port map( 
				CLK => CLK,
				RST => RST,
				X => Data, 
				load => load_sr,
				en_sr => shift,
				Y => I
				);
		
	  cnt_4_0 : cnt4 
		port map( 
			CLK => CLK,
			RST => RST,
			en => en_cnt,
			div => div
		  );

end Structural;

