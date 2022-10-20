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
	 out_enc : out std_logic_vector(2 downto 0);
	 fine : out std_logic
	);
end system;

architecture Structural of system is


component ButtonDebouncer is
    generic (                       
        CLK_period:   integer := 20;  
        btn_noise_time:   integer := 2000000000
		 
                                      
    );
    Port ( CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end component;

	 COMPONENT Trasmettitore
    PORT(
         START : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         TXD : OUT  std_logic;
         DTR : OUT  std_logic;
         DSR : IN  std_logic;
         RTS : OUT  std_logic;
         CTS : IN  std_logic;
			fine : out std_logic
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
	ERROR: OUT std_logic;
	out_enc : out std_logic_vector(2 downto 0)
	);
end component;

signal d : std_logic;
signal dtr1 : std_logic;
signal rts1: std_logic;
signal cts1 : std_logic;
signal dsr1 : std_logic;
signal clear_wave : std_logic;

begin


btn : ButtonDebouncer 
   
    Port map( CLK => CLK,
           BTN => start,
           CLEARED_BTN => clear_wave);

 t0 : Trasmettitore
    PORT map(
         START => clear_wave,
         CLK => CLK,
         RST => RST,
         TXD => d,
         DTR => dtr1,
         DSR => dsr1,
         RTS =>rts1,
         CTS =>cts1,
			fine => fine
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
	ERROR =>ERROR,
	out_enc => out_enc
	);


end Structural;

