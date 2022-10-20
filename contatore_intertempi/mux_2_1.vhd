----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:15 10/28/2021 
-- Design Name: 
-- Module Name:    mux_2_1 - Behavioral 
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

	entity mux is
	port(	s : in std_logic;
			a0,a1 : in std_logic_vector(16 downto 0);
			y : out std_logic_vector(16 downto 0) );
	end mux;

	architecture Dataflow of mux is
	begin
		with s select
			y <= a0   when '0',
				  a1   when '1',
				  "-----------------"  when others;
	end Dataflow;
	
	








