----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:30 09/03/2022 
-- Design Name: 
-- Module Name:    nodo_tx - Structural 
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

entity Nodo_tx is
	port(
	   TXD 	: out std_logic  	:= '1';				
    	CLK 	: in  std_logic;								--Master Clock
		IN_DEC : in  std_logic_vector (2 downto 0);	--Data Bus in
		WR		: in  std_logic :='0';					--Write Strobe(se  1 significa "scrivi")
		RST	: in  std_logic	:= '0');	--Master Reset
end Nodo_tx;




architecture Structural of Nodo_tx is
	signal u : std_logic_vector(7 downto 0);
	component decoder_3_8 is
		port(
		A : in STD_LOGIC_VECTOR(2 downto 0);
		D : out STD_LOGIC_VECTOR(7 downto 0)
		);
 end component;
 
 
 
   component UARTcomponent is
	Generic (
		--@48MHz
		--BAUD_DIVIDE_G : integer := 26; 	--115200 baud
		--BAUD_RATE_G   : integer := 417

		--@50MHz
		BAUD_DIVIDE_G : integer := 20; 	--115200 baud
		BAUD_RATE_G   : integer := 326
		
		--@26.6MHz
		--BAUD_DIVIDE_G : integer := 14; 	--115200 baud
		--BAUD_RATE_G   : integer := 231
	);
	Port (	
		TXD 	: out 	std_logic  	:= '1';					-- Transmitted serial data output
		RXD 	: in  	std_logic :='0';							-- Received serial data input
		CLK 	: in  	std_logic;							-- Clock signal
		DBIN 	: in  	std_logic_vector (7 downto 0);		-- Input parallel data to be transmitted
		DBOUT 	: out 	std_logic_vector (7 downto 0);		-- Recevived parallel data output
		RDA		: inout  std_logic;							-- Read Data Available
		TBE		: out 	std_logic 	:= '1';					-- Transfer Buffer Emty
		RD		: in  	std_logic := '1';							-- Read Strobe
		WR		: in  	std_logic;							-- Write Strobe
		PE		: out 	std_logic;							-- Parity error		
		FE		: out 	std_logic;							-- Frame error
		OE		: out 	std_logic;							-- Overwrite error
		RST		: in  	std_logic	:= '0');				-- Reset signal
						
end component;
begin

	dec_0: decoder_3_8
	Port map(
		A => IN_DEC,
		D => u
	);
	
	ser :UartComponent
	Port map(
		TXD => TXD,
		DBIN =>u,
		CLK => CLK,
		WR => WR,
		RST => RST
	);


end Structural;

