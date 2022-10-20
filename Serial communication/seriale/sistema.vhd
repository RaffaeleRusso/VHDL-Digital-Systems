----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:57:27 09/03/2022 
-- Design Name: 
-- Module Name:    sistema - structural 
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

entity sistema is
	port (
	CLK : in std_logic;
	RST : in std_logic;
	input : in std_logic_vector(0 to 2);
	start : in std_logic;
	output : out std_logic_vector(0 to 2)
	);
end sistema;

architecture structural of sistema is
	signal tr : std_logic;
	component Nodo_tx
	port(
	   TXD 	: out std_logic  	:= '1';				
    	CLK 	: in  std_logic;								--Master Clock
		IN_DEC : in  std_logic_vector (2 downto 0);	--Data Bus in
		WR		: in  std_logic;					--Write Strobe(se  1 significa "scrivi")
		RST	: in  std_logic	:= '0'	--Master Reset
	);
	end component;
	
	component Nodo_rx
	port(
	  RXD 	: in std_logic  	:= '1';				
    	CLK 	: in  std_logic;								
		OUT_COD : out  std_logic_vector (2 downto 0);	 
		RST	: in  std_logic	:= '0'	--Master Reset
	);
	end component;
	
	component ButtonDebouncer is
    generic (                       
        CLK_period:   integer := 20;  
        btn_noise_time:   integer := 2000000000 
		 
                                      
    );
    Port ( CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end component;
	
signal clear_wave: std_logic;
begin
	btn: ButtonDebouncer
	Port map(
		CLK =>CLK,
      BTN => start,
      CLEARED_BTN => clear_wave
	);



	tx : Nodo_tx
	Port map(
		TXD 	=> tr,		
    	CLK 	=> CLK,								--Master Clock
		IN_DEC => input,	--Data Bus in
		WR		=> clear_wave,				--Write Strobe(se  1 significa "scrivi")
		RST	=> RST
	);

	rx : Nodo_rx
	Port map(
	   RXD 	=>	 tr,	
    	CLK 	=> CLK,						
		OUT_COD =>output,	 
		RST => RST
	);

end structural;

