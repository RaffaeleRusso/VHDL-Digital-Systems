----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:05 09/06/2022 
-- Design Name: 
-- Module Name:    Ricevitore - Structural 
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

entity Ricevitore is
	port(
	CLK : in std_logic;
	RST : in std_logic;
	RXD : in std_logic;
	DTR : OUT  std_logic;
   DSR : IN  std_logic;
   RTS : OUT  std_logic;
   CTS : IN  std_logic;
	ERROR: OUT std_logic
	);
end Ricevitore;

architecture Structural of Ricevitore is

component fsm_ricevitore is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		DSR : in std_logic;
		DTR : out std_logic;
		EN : out std_logic; --abilitazione cnt
		RTS : out std_logic;
		CTS : in std_logic;
		W_RAM : out std_logic := '0';
		RDA : in std_logic;
		RD : out std_logic;
		ERROR : out std_logic;
		PE : in std_logic;
		FE : in std_logic
	);
end component;
component RAM is
	
   port ( CLK  : in std_logic;
			 RST  : in std_logic;
          we   : in std_logic;
          en   : in std_logic;
          addr : in std_logic_vector(2 downto 0);
          di   : in std_logic_vector(7 downto 0);
          do   : out std_logic_vector(7 downto 0)
	);
	end component;
component counter_mod8 is
		Port( 
			CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;
			EN : in STD_LOGIC;
			CNT : out  STD_LOGIC_VECTOR (2 downto 0);
			DIV : out std_logic
		);
	end component;
	
	component UARTcomponent is
		Generic (
		--@48MHz
--		BAUD_DIVIDE_G : integer := 26; 	--115200 baud
--		BAUD_RATE_G   : integer := 417

		--@26.6MHz
		BAUD_DIVIDE_G : integer := 14; 	--115200 baud
		BAUD_RATE_G   : integer := 231
		);
		
		Port (	
			TXD 	: out 	std_logic  	:= '1';					-- Transmitted serial data output
			RXD 	: in  	std_logic := '1';							-- Received serial data input
			CLK 	: in  	std_logic;							-- Clock signal
			DBIN 	: in  	std_logic_vector (7 downto 0):="00000000";		-- Input parallel data to be transmitted
			DBOUT 	: out 	std_logic_vector (7 downto 0);		-- Recevived parallel data output
			RDA		: inout  std_logic;							-- Read Data Available
			TBE		: out 	std_logic 	:= '1';					-- Transfer Buffer Emty
			RD		: in  	std_logic := '0';							-- Read Strobe
			WR		: in  	std_logic :='0';							-- Write Strobe
			PE		: out 	std_logic :='0';							-- Parity error		
			FE		: out 	std_logic := '0';							-- Frame error
			OE		: out 	std_logic :='0';							-- Overwrite error
			RST		: in  	std_logic	:= '0');	
	end component;
	
	
	signal dato_ram :std_logic_vector(7 downto 0);
	signal cnt_addr : std_logic_vector(2 downto 0);
	signal we1 :std_logic;
	signal en1 :std_logic;
	signal rd1 :std_logic;
	signal rda1 :std_logic;
	signal pe1 :std_logic;
	signal fe1 :std_logic;
	

	
begin


fsm_rec : fsm_ricevitore 
	port map(
		CLK => CLK,
		RST => RST,
		DSR => DSR,
		DTR => DTR,
		EN  => en1, --abilitazione cnt
		RTS => RTS,
		CTS =>CTS,
		W_RAM => we1,
		RDA =>rda1,
		RD =>rd1,
		ERROR => ERROR,
		PE => pe1,
		FE =>fe1
	);


usart_0:UARTcomponent
		Port map (	
			
			RXD 	=>	RXD,					
			CLK 	=> CLK,
			DBOUT => dato_ram,
			RDA	=>rda1,				
			RD		=>rd1,		
			PE		=>	pe1,					
			FE		=>	fe1,				
			RST	=> RST);	
	

C_0 : counter_mod8 
		Port map( 
			CLK => CLK,
			RST =>RST,
			EN => en1,
			CNT => cnt_addr
		);
	



 RAM_0 : RAM
   port map( 
			CLK => CLK,
			 RST  =>RST,
          we   => we1,
          en   => '1',
          addr => cnt_addr,
          di => dato_ram
			 );
	

end Structural;

