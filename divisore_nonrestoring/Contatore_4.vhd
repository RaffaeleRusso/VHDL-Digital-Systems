----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:49:41 09/16/2012 
-- Design Name: 
-- Module Name:    counter_mod8 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- contatore utilizzato scorrere le cifre da visualizzare
entity counter_mod4 is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
		     enable : in STD_LOGIC; --enable viene dal divisore di frequenza
           counter : out  STD_LOGIC_VECTOR (1 downto 0));
end counter_mod4;

architecture Behavioral of counter_mod4 is

signal c : std_logic_vector (1 downto 0) := (others => '0');
begin
counter <= c;

counter_process: process(clock)
begin
    
     if(rising_edge(clock)) then	  
	   if reset = '1' then
		  c <= (others => '0');
	   elsif enable = '1' then
		  c <= std_logic_vector(unsigned(c) + 1);
	  end if;
	 end if;
end process;

end Behavioral;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--entity Contatore_4 is
--	port(
--		clk : in std_logic;
--		rst : in std_logic;
--		en : in std_logic;
--		set : in std_logic;
--		I : in std_logic_vector(1 downto 0);
--		DIV : out std_logic;
--		Y : out std_logic_vector(1 downto 0)
--	);
--end Contatore_4;
--
--architecture Structural of Contatore_4 is
--
--	signal usc : std_logic_vector(1 downto 0) := (others => '0');
--	signal t : std_logic := '0';
--	
--	component FFT is
--		port(
--			clk : in std_logic;
--			en : in std_logic;
--			rst : in std_logic;
--			set : in std_logic;
--			I : in std_logic;
--			Y : out std_logic
--		);
--	end component;
--
--begin
--
--	F1 : FFT
--		port map(
--			clk => clk,
--			en => en,
--			rst => rst,
--			set => set,
--			I => I(0),
--			Y => usc(0)
--		);
--		
--	t <= clk and usc(0);	
--	
--	F2 : FFT
--		port map(
--			clk => t,
--			en => en,
--			rst => rst,
--			set => set,
--			I => I(1),
--			Y => usc(1)
--		);
--		
--	DIV <= usc(1) and usc(0);
--	
--	Y <= usc(1) & usc(0);
--
--end Structural;
--
--
