----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:16 09/06/2022 
-- Design Name: 
-- Module Name:    system - Structural 
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

entity system is
	port(
	 START : IN  std_logic;
    CLK : IN  std_logic;
    RST : IN  std_logic;
	 error : out  std_logic;
	 dato_ram : out std_logic_vector(7 downto 0)
	);
end system;

architecture Structural of system is
	 COMPONENT Trasmettitore
    PORT(
         START : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         TXD : OUT  std_logic;
         DTR : OUT  std_logic;
         DSR : IN  std_logic;
         RTS : OUT  std_logic;
         CTS : IN  std_logic
        );
    END COMPONENT;
    component Ricevitore 	port(
	CLK : in std_logic;
	RST : in std_logic;
	RXD : in std_logic;
	DTR : OUT  std_logic;
   DSR : IN  std_logic;
   RTS : OUT  std_logic;
   CTS : IN  std_logic;
	ERROR: OUT std_logic
	);
end component;

signal d : std_logic;
signal dtr1 : std_logic;
signal rts1: std_logic;
signal cts1 : std_logic;
signal dsr1 : std_logic;
begin
 t0 : Trasmettitore
    PORT map(
         START => start,
         CLK => CLK,
         RST => RST,
         TXD => d,
         DTR => dtr1,
         DSR => dsr1,
         RTS =>rts1,
         CTS =>cts1
        );
    r0 :Ricevitore 	
	 port map(
	CLK => CLK,
	RST => RST,
	RXD =>d,
	DTR => dsr1,
   DSR => dtr1,
   RTS => cts1,
   CTS =>rts1,
	ERROR =>ERROR
	);


end Structural;

