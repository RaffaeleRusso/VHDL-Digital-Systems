------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date:    04:51:51 12/07/2021 
---- Design Name: 
---- Module Name:    Seven_segments_display - Structural 
---- Project Name: 
---- Target Devices: 
---- Tool versions: 
---- Description: 
----
---- Dependencies: 
----
---- Revision: 
---- Revision 0.01 - File Created
---- Additional Comments: 
----
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;
--
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
----library UNISIM;
----use UNISIM.VComponents.all;
--
--entity Seven_segments_display is
--	port(
--		clk : in std_logic;
--		en : in std_logic;
--		rst : in std_logic;
--		enable_digit : in std_logic_vector(3 downto 0);
--		value : in std_logic_vector(15 downto 0);
--		dots : in std_logic_vector(3 downto 0);
--		anodes : out std_logic_vector(3 downto 0);
--		cathodes : out std_logic_vector(7 downto 0)
--	);
--end Seven_segments_display;
--
--architecture Structural of Seven_segments_display is
--	
--	component Divisore_freq is
--		generic(
--			freq_in : integer := 50000000;
--			freq_out : integer := 500
--		);
--
--		port(
--			clk : in std_logic;
--			en : in std_logic;
--			rst : in std_logic;
--			clk_out : out std_logic
--		);
--	end component;
--	
--	component Contatore_4 is
--		port(
--			clk : in std_logic;
--			rst : in std_logic;
--			en : in std_logic;
--			set : in std_logic;
--			I : in std_logic_vector(1 downto 0);
--			DIV : out std_logic;
--			Y : out std_logic_vector(1 downto 0)
--		);
--	end component;
--	
--	component Anodes_manager is
--		port(
--			cont : in std_logic_vector(1 downto 0);
--			enable_digit : in std_logic_vector(3 downto 0);
--			anodes : out std_logic_vector(3 downto 0)
--		);
--	end component;
--	
--	
--	
--	
--	component Cathodes_manager is
--		port(
--			cont : in std_logic_vector(1 downto 0);
--			value : in std_logic_vector(15 downto 0);
--			dots : in std_logic_vector(3 downto 0);
--			cathodes : out std_logic_vector(7 downto 0)
--		);
--	end component;
--	
--	signal d : std_logic := '0';
--	signal e : std_logic := '0';
--	signal c : std_logic_vector(1 downto 0) := (others => '0');
--	
--begin
--
--	Con4 : Contatore_4
--		port map(
--			clk => clk,
--			en => e,
--			rst => rst,
--			set => '0',
--			I => "00",
--			Y => c,
--			DIV => d
--		);
--	
--	Divis_f : Divisore_freq
--		generic map(
--			freq_in => 50000000,
--			freq_out => 500
--		)
--		
--		port map(
--			clk => clk,
--			en => en,
--			rst => rst,
--			clk_out => e
--		);
--	
--	
--	
--	A_m : Anodes_manager
--		port map(
--			cont => c,
--			enable_digit => enable_digit,
--			anodes => anodes
--		);
--		
--	C_m : Cathodes_manager
--		port map(
--			cont => c,
--			value => value,
--			dots => dots,
--			cathodes => cathodes
--		);
--
--end Structural;
--


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:51:51 12/07/2021 
-- Design Name: 
-- Module Name:    Seven_segments_display - Structural 
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

entity Seven_segments_display is
	port(
		clk : in std_logic;
		en : in std_logic;
		rst : in std_logic;
		enable_digit : in std_logic_vector(3 downto 0);
		value : in std_logic_vector(15 downto 0);
		dots : in std_logic_vector(3 downto 0);
		anodes : out std_logic_vector(3 downto 0);
		cathodes : out std_logic_vector(7 downto 0)
	);
end Seven_segments_display;

architecture Structural of Seven_segments_display is
	
	component 	Divisore_freq is
		generic(
			freq_in : integer := 50000000;
			freq_out : integer := 500
		);

		port(
			clk : in std_logic;
			en : in std_logic;
			rst : in std_logic;
			clk_out : out std_logic
		);
	end component;
	
	
	component counter_mod4 is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
		     enable : in STD_LOGIC; --enable viene dal divisore di frequenza
           counter : out  STD_LOGIC_VECTOR (1 downto 0));
end component;
	

	
	component Anodes_manager is
		port(
			cont : in std_logic_vector(1 downto 0);
			enable_digit : in std_logic_vector(3 downto 0);
			anodes : out std_logic_vector(3 downto 0)
		);
	end component;
	
	
	
	
	component Cathodes_manager is
		port(
			cont : in std_logic_vector(1 downto 0);
			value : in std_logic_vector(15 downto 0);
			dots : in std_logic_vector(3 downto 0);
			cathodes : out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal d : std_logic := '0';
	signal e : std_logic := '0';
	signal c : std_logic_vector(1 downto 0) := (others => '0');
	
begin

cnt: counter_mod4 
	port map(
    clock =>clk,
     reset =>rst,
		enable=>e,
      counter=>c);

	Divis_f : Divisore_freq
		generic map(
			freq_in => 50000000,
			freq_out => 500
		)
		
		port map(
			clk => clk,
			en => en,
			rst => rst,
			clk_out => e
		);
	
	
	
	A_m : Anodes_manager
		port map(
			cont => c,
			enable_digit => enable_digit,
			anodes => anodes
		);
		
	C_m : Cathodes_manager
		port map(
			cont => c,
			value => value,
			dots => dots,
			cathodes => cathodes
		);

end Structural;


