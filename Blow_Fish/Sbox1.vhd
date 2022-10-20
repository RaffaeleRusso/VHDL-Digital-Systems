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

entity Sbox1 is

	port( CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
	);
	
end Sbox1;

architecture behavioral of Sbox1 is
	
	type rom_type is array (0 to 255) of std_logic_vector(31 downto 0);
	signal ROM : rom_type := (
  X"d1310ba6",
  X"98dfb5ac",
  X"2ffd72db",
  X"d01adfb7",
  X"b8e1afed",
  X"6a267e96",
  X"ba7c9045",
  X"f12c7f99",
  X"24a19947",
  X"b3916cf7",
  X"0801f2e2",
  X"858efc16",
  X"636920d8",
  X"71574e69",
  X"a458fea3",
  X"f4933d7e",
  X"0d95748f",
  X"728eb658",
  X"718bcd58",
  X"82154aee",
  X"7b54a41d",
  X"c25a59b5",
  X"9c30d539",
  X"2af26013",
  X"c5d1b023",
  X"286085f0",
  X"ca417918",
  X"b8db38ef",
  X"8e79dcb0",
  X"603a180e",
  X"6c9e0e8b",
  X"b01e8a3e",
  X"d71577c1",
  X"bd314b27",
  X"78af2fda",
  X"55605c60",
  X"e65525f3",
  X"aa55ab94",
  X"57489862",
  X"63e81440",
  X"55ca396a",
  X"2aab10b6",
  X"b4cc5c34",
  X"1141e8ce",
  X"a15486af",
  X"7c72e993",
  X"b3ee1411",
  X"636fbc2a",
  X"2ba9c55d",
  X"741831f6",
  X"ce5c3e16",
  X"9b87931e",
  X"afd6ba33",
  X"6c24cf5c",
  X"7a325381",
  X"28958677",
  X"3b8f4898",
  X"6b4bb9af",
  X"c4bfe81b",
  X"66282193",
  X"61d809cc",
  X"fb21a991",
  X"487cac60",
  X"5dec8032",
  X"ef845d5d",
  X"e98575b1",
  X"dc262302",
  X"eb651b88",
  X"23893e81",
  X"d396acc5",
  X"0f6d6ff3",
  X"83f44239",
  X"2e0b4482",
  X"a4842004",
  X"69c8f04a",
  X"9e1f9b5e",
  X"21c66842",
  X"f6e96c9a",
  X"670c9c61",
  X"abd388f0",
  X"6a51a0d2",
  X"d8542f68",
  X"960fa728",
  X"ab5133a3",
  X"6eef0b6c",
  X"137a3be4",
  X"ba3bf050",
  X"7efb2a98",
  X"a1f1651d",
  X"39af0176",
  X"66ca593e",
  X"82430e88",
  X"8cee8619",
  X"456f9fb4",
  X"7d84a5c3",
  X"3b8b5ebe",
  X"e06f75d8",
  X"85c12073",
  X"401a449f",
  X"56c16aa6",
  X"4ed3aa62",
  X"363f7706",
  X"1bfedf72",
  X"429b023d",
  X"37d0d724",
  X"d00a1248",
  X"db0fead3",
  X"49f1c09b",
  X"075372c9",
  X"80991b7b",
  X"25d479d8",
  X"f6e8def7",
  X"e3fe501a",
  X"b6794c3b",
  X"976ce0bd",
  X"04c006ba",
  X"c1a94fb6",
  X"409f60c4",
  X"5e5c9ec2",
  X"196a2463",
  X"68fb6faf",
  X"3e6c53b5",
  X"1339b2eb",
  X"3b52ec6f",
  X"6dfc511f",
  X"9b30952c",
  X"cc814544",
  X"af5ebd09",
  X"bee3d004",
  X"de334afd",
  X"660f2807",
  X"192e4bb3",
  X"c0cba857",
  X"45c8740f",
  X"d20b5f39",
  X"b9d3fbdb",
  X"5579c0bd",
  X"1a60320a",
  X"d6a100c6",
  X"402c7279",
  X"679f25fe",
  X"fb1fa3cc",
  X"8ea5e9f8",
  X"db3222f8",
  X"3c7516df",
  X"fd616b15",
  X"2f501ec8",
  X"ad0552ab",
  X"323db5fa",
  X"fd238760",
  X"53317b48",
  X"3e00df82",
  X"9e5c57bb",
  X"ca6f8ca0",
  X"1a87562e",
  X"df1769db",
  X"d542a8f6",
  X"287effc3",
  X"ac6732c6",
  X"8c4f5573",
  X"695b27b0",
  X"bbca58c8",
  X"e1ffa35d",
  X"b8f011a0",
  X"10fa3d98",
  X"fd2183b8",
  X"4afcb56c",
  X"2dd1d35b",
  X"9a53e479",
  X"b6f84565",
  X"d28e49bc",
  X"4bfb9790",
  X"e1ddf2da",
  X"a4cb7e33",
  X"62fb1341",
  X"cee4c6e8",
  X"ef20cada",
  X"36774c01",
  X"d07e9efe",
  X"2bf11fb4",
  X"95dbda4d",
  X"ae909198",
  X"eaad8e71",
  X"6b93d5a0",
  X"d08ed1d0",
  X"afc725e0",
  X"8e3c5b2f",
  X"8e7594b7",
  X"8ff6e2fb",
  X"f2122b64",
  X"8888b812",
  X"900df01c",
  X"4fad5ea0",
  X"688fc31c",
  X"d1cff191",
  X"b3a8c1ad",
  X"2f2f2218",
  X"be0e1777",
  X"ea752dfe",
  X"8b021fa1",
  X"e5a0cc0f",
  X"b56f74e8",
  X"18acf3d6",
  X"ce89e299",
  X"b4a84fe0",
  X"fd13e0b7",
  X"7cc43b81",
  X"d2ada8d9",
  X"165fa266",
  X"80957705",
  X"93cc7314",
  X"211a1477",
  X"e6ad2065",
  X"77b5fa86",
  X"c75442f5",
  X"fb9d35cf",
  X"ebcdaf0c",
  X"7b3e89a0",
  X"d6411bd3",
  X"ae1e7e49",
  X"00250e2d",
  X"2071b35e",
  X"226800bb",
  X"57b8e0af",
  X"2464369b",
  X"f009b91e",
  X"5563911d",
  X"59dfa6aa",
  X"78c14389",
  X"d95a537f",
  X"207d5ba2",
  X"02e5b9c5",
  X"83260376",
  X"6295cfa9",
  X"11c81968",
  X"4e734a41",
  X"b3472dca",
  X"7b14a94a",
  X"1b510052",
  X"9a532915",
  X"d60f573f",
  X"bc9bc6e4",
  X"2b60a476",
  X"81e67400",
  X"08ba6fb5",
  X"571be91f",
  X"f296ec6b",
  X"2a0dd915",
  X"b6636521",
  X"e7b9f9b6",
  X"ff34052e",
  X"c5855664",
  X"53b02d5d",
  X"a99f8fa1",
  X"08ba4799",
  X"6e85076a");
										
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


