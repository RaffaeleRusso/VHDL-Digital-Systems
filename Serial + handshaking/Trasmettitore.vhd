----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:37:37 09/06/2022 
-- Design Name: 
-- Module Name:    Trasmettitore - Structural 
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

entity Trasmettitore is
	port(
		START : in std_logic;
		CLK : in std_logic;
		RST : in std_logic;
		TXD : out std_logic;
		DTR : out std_logic;
		DSR : in std_logic;
		RTS : out std_logic;
		CTS : in std_logic
	);
end Trasmettitore;

architecture Structural of Trasmettitore is

	component ROM is
		port(
			CLK : in std_logic; 
			RST : in std_logic;
			R : in std_logic; 
			ADDR : in std_logic_vector(2 downto 0); 
			DATA_OUT : out std_logic_vector(7 downto 0)
		);
	end component;
	
	component fsm_trasmettitore is
		port(
			CLK : in std_logic;
			RST : in std_logic;
			START : in std_logic;
			DSR : in std_logic;
			DTR : out std_logic;
			EN : out std_logic;
			RTS : out std_logic;
			CTS : in std_logic;
			WR : out std_logic;
			TBE : in std_logic;
			DIV : in std_logic
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
			RXD 	: in  	std_logic := '0';							-- Received serial data input
			CLK 	: in  	std_logic;							-- Clock signal
			DBIN 	: in  	std_logic_vector (7 downto 0);		-- Input parallel data to be transmitted
			DBOUT 	: out 	std_logic_vector (7 downto 0);		-- Recevived parallel data output
			RDA		: inout  std_logic;							-- Read Data Available
			TBE		: out 	std_logic 	:= '1';					-- Transfer Buffer Emty
			RD		: in  	std_logic := '0';							-- Read Strobe
			WR		: in  	std_logic;							-- Write Strobe
			PE		: out 	std_logic;							-- Parity error		
			FE		: out 	std_logic;							-- Frame error
			OE		: out 	std_logic;							-- Overwrite error
			RST		: in  	std_logic	:= '0');	
	end component;
	
	signal divisore : std_logic;
	signal ex_cnt : std_logic_vector(2 downto 0);
	signal wr_strobe : std_logic;
	signal tbe1 : std_logic;
	signal data_rom : std_logic_vector(7 downto 0);
	signal en_cnt : std_logic;
	
	begin
	
		fsm : fsm_trasmettitore
			port map(
				CLK => CLK,
				RST => RST,
				START => START,
				DSR => DSR,
				DTR => DTR,
				EN => en_cnt,
				RTS => RTS,
				CTS => CTS,
				WR => wr_strobe,
				DIV => divisore,
				TBE => tbe1
			);
			
		rom_0: ROM
			port map(
				CLK => CLK,
				RST => RST,
				R => '1',
				ADDR => ex_cnt,
				DATA_OUT => data_rom
			);
			
		cont : counter_mod8
			port map(
				CLK => CLK,
				RST => RST,
				EN => en_cnt,
				CNT => ex_cnt,
				DIV => divisore
			);
			
		seriale : UARTcomponent
			port map(
				TXD => TXD,
				CLK => CLK,
				DBIN => data_rom,
				TBE => tbe1,
				WR => wr_strobe,
				RST => RST
			);
end Structural;

