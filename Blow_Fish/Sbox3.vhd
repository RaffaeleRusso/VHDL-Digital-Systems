----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:15 11/17/2021 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sbox3 is

	port( CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
	);
	
end Sbox3;

architecture behavioral of Sbox3 is
	
	type rom_type is array (0 to 255) of std_logic_vector(31 downto 0);
	signal ROM : rom_type := (
  X"e93d5a68",
  X"948140f7",
  X"f64c261c",
  X"94692934",
  X"411520f7",
  X"7602d4f7",
  X"bcf46b2e",
  X"d4a20068",
  X"d4082471",
  X"3320f46a",
  X"43b7d4b7",
  X"500061af",
  X"1e39f62e",
  X"97244546",
  X"14214f74",
  X"bf8b8840",
  X"4d95fc1d",
  X"96b591af",
  X"70f4ddd3",
  X"66a02f45",
  X"bfbc09ec",
  X"03bd9785",
  X"7fac6dd0",
  X"31cb8504",
  X"96eb27b3",
  X"55fd3941",
  X"da2547e6",
  X"abca0a9a",
  X"28507825",
  X"530429f4",
  X"0a2c86da",
  X"e9b66dfb",
  X"68dc1462",
  X"d7486900",
  X"680ec0a4",
  X"27a18dee",
  X"4f3ffea2",
  X"e887ad8c",
  X"b58ce006",
  X"7af4d6b6",
  X"aace1e7c",
  X"d3375fec",
  X"ce78a399",
  X"406b2a42",
  X"20fe9e35",
  X"d9f385b9",
  X"ee39d7ab",
  X"3b124e8b",
  X"1dc9faf7",
  X"4b6d1856",
  X"26a36631",
  X"eae397b2",
  X"3a6efa74",
  X"dd5b4332",
  X"6841e7f7",
  X"ca7820fb",
  X"fb0af54e",
  X"d8feb397",
  X"454056ac",
  X"ba489527",
  X"55533a3a",
  X"20838d87",
  X"fe6ba9b7",
  X"d096954b",
  X"55a867bc",
  X"a1159a58",
  X"cca92963",
  X"99e1db33",
  X"a62a4a56",
  X"3f3125f9",
  X"5ef47e1c",
  X"9029317c",
  X"fdf8e802",
  X"04272f70",
  X"80bb155c",
  X"05282ce3",
  X"95c11548",
  X"e4c66d22",
  X"48c1133f",
  X"c70f86dc",
  X"07f9c9ee",
  X"41041f0f",
  X"404779a4",
  X"5d886e17",
  X"325f51eb",
  X"d59bc0d1",
  X"f2bcc18f",
  X"41113564",
  X"257b7834",
  X"602a9c60",
  X"dff8e8a3",
  X"1f636c1b",
  X"0e12b4c2",
  X"02e1329e",
  X"af664fd1",
  X"cad18115",
  X"6b2395e0",
  X"333e92e1",
  X"3b240b62",
  X"eebeb922",
  X"85b2a20e",
  X"e6ba0d99",
  X"de720c8c",
  X"2da2f728",
  X"d0127845",
  X"95b794fd",
  X"647d0862",
  X"e7ccf5f0",
  X"5449a36f",
  X"877d48fa",
  X"c39dfd27",
  X"f33e8d1e",
  X"0a476341",
  X"992eff74",
  X"3a6f6eab",
  X"f4f8fd37",
  X"a812dc60",
  X"a1ebddf8",
  X"991be14c",
  X"db6e6b0d",
  X"c67b5510",
  X"6d672c37",
  X"2765d43b",
  X"dcd0e804",
  X"f1290dc7",
  X"cc00ffa3",
  X"b5390f92",
  X"690fed0b",
  X"667b9ffb",
  X"cedb7d9c",
  X"a091cf0b",
  X"d9155ea3",
  X"bb132f88",
  X"515bad24",
  X"7b9479bf",
  X"763bd6eb",
  X"37392eb3",
  X"cc115979",
  X"8026e297",
  X"f42e312d",
  X"6842ada7",
  X"c66a2b3b",
  X"12754ccc",
  X"782ef11c",
  X"6a124237",
  X"b79251e7",
  X"06a1bbe6",
  X"4bfb6350",
  X"1a6b1018",
  X"11caedfa",
  X"3d25bdd8",
  X"e2e1c3c9",
  X"44421659",
  X"0a121386",
  X"d90cec6e",
  X"d5abea2a",
  X"64af674e",
  X"da86a85f",
  X"bebfe988",
  X"64e4c3fe",
  X"9dbc8057",
  X"f0f7c086",
  X"60787bf8",
  X"6003604d",
  X"d1fd8346",
  X"f6381fb0",
  X"7745ae04",
  X"d736fccc",
  X"83426b33",
  X"f01eab71",
  X"b0804187",
  X"3c005e5f",
  X"77a057be",
  X"bde8ae24",
  X"55464299",
  X"bf582e61",
  X"4e58f48f",
  X"f2ddfda2",
  X"f474ef38",
  X"8789bdc2",
  X"5366f9c3",
  X"c8b38e74",
  X"b475f255",
  X"46fcd9b9",
  X"7aeb2661",
  X"8b1ddf84",
  X"846a0e79",
  X"915f95e2",
  X"466e598e",
  X"20b45770",
  X"8cd55591",
  X"c902de4c",
  X"b90bace1",
  X"bb8205d0",
  X"11a86248",
  X"7574a99e",
  X"b77f19b6",
  X"e0a9dc09",
  X"662d09a1",
  X"c4324633",
  X"e85a1f02",
  X"09f0be8c",
  X"4a99a025",
  X"1d6efe10",
  X"1ab93d1d",
  X"0ba5a4df",
  X"a186f20f",
  X"2868f169",
  X"dcb7da83",
  X"573906fe",
  X"a1e2ce9b",
  X"4fcd7f52",
  X"50115e01",
  X"a70683fa",
  X"a002b5c4",
  X"0de6d027",
  X"9af88c27",
  X"773f8641",
  X"c3604c06",
  X"61a806b5",
  X"f0177a28",
  X"c0f586e0",
  X"006058aa",
  X"30dc7d62",
  X"11e69ed7",
  X"2338ea63",
  X"53c2dd94",
  X"c2c21634",
  X"bbcbee56",
  X"90bcb6de",
  X"ebfc7da1",
  X"ce591d76",
  X"6f05e409",
  X"4b7c0188",
  X"39720a3d",
  X"7c927c24",
  X"86e3725f",
  X"724d9db9",
  X"1ac15bb4",
  X"d39eb8fc",
  X"ed545578",
  X"08fca5b5",
  X"d83d7cd3",
  X"4dad0fc4",
  X"1e50ef5e",
  X"b161e6f8",
  X"a28514d9",
  X"6c51133c",
  X"6fd5c7e7",
  X"56e14ec4",
  X"362abfce",
  X"ddc6c837",
  X"d79a3234",
  X"92638212",
  X"670efa8e",
  X"406000e0");
										
	attribute rom_style : string;
	attribute rom_style of ROM : signal is "block";-- block dice al tool di sintesi di inferire blocchi di RAMB,
-- distributed di usare le LUT

	begin
	process(CLK)
		begin
			if rising_edge(CLK) then
				if (RST = '1') then
					DATA <= ROM(conv_integer("0000"));
				elsif (EN = '1') then
					DATA <= ROM(conv_integer(ADDR));
				end if;
			end if;
	end process;
end behavioral;


