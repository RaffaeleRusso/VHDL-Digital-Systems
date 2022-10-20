----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:59 09/03/2022 
-- Design Name: 
-- Module Name:    Nodo_rx - Structural 
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

entity Nodo_rx is
port(
	   RXD 	: in std_logic  	:= '1';				
    	CLK 	: in  std_logic;								
		OUT_COD : out  std_logic_vector (2 downto 0);	 
		RST	: in  std_logic	:= '0');	--Master Reset
end Nodo_rx;


architecture Structural of Nodo_rx is
	signal u : std_logic_vector(0 to 7);
	component Encoder is
		port(
		 X : in STD_LOGIC_VECTOR(7 downto 0);
       Y : out STD_LOGIC_VECTOR(2 downto 0)
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
		RXD 	: in  	std_logic;							-- Received serial data input
		CLK 	: in  	std_logic;							-- Clock signal
		DBIN 	: in  	std_logic_vector (7 downto 0) :="--------";		-- Input parallel data to be transmitted
		DBOUT 	: out 	std_logic_vector (7 downto 0);		-- Recevived parallel data output
		RDA		: inout  std_logic;							-- Read Data Available
		TBE		: out 	std_logic 	:= '1';					-- Transfer Buffer Emty
		RD		: in  	std_logic :='0';							-- Read Strobe
		WR		: in  	std_logic :='0';							-- Write Strobe
		PE		: out 	std_logic;							-- Parity error		
		FE		: out 	std_logic;							-- Frame error
		OE		: out 	std_logic;							-- Overwrite error
		RST		: in  	std_logic	:= '0');				-- Reset signal
						
end component;
begin

	enc_0: Encoder
	Port map(
		X => u,
		Y => OUT_COD
	);
	
	ser :UARTcomponent
	Port map(
		RXD => RXD,
		DBOUT =>u,
		CLK => CLK,
		RST => RST
	);


end Structural;

