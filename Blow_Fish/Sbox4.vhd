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

entity Sbox4 is

	port( CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
	);
	
end Sbox4;

architecture behavioral of Sbox4 is
	
	type rom_type is array (0 to 255) of std_logic_vector(31 downto 0);
	signal ROM : rom_type := (
  X"3a39ce37",
  X"d3faf5cf",
  X"abc27737",
  X"5ac52d1b",
  X"5cb0679e",
  X"4fa33742",
  X"d3822740",
  X"99bc9bbe",
  X"d5118e9d",
  X"bf0f7315",
  X"d62d1c7e",
  X"c700c47b",
  X"b78c1b6b",
  X"21a19045",
  X"b26eb1be",
  X"6a366eb4",
  X"5748ab2f",
  X"bc946e79",
  X"c6a376d2",
  X"6549c2c8",
  X"530ff8ee",
  X"468dde7d",
  X"d5730a1d",
  X"4cd04dc6",
  X"2939bbdb",
  X"a9ba4650",
  X"ac9526e8",
  X"be5ee304",
  X"a1fad5f0",
  X"6a2d519a",
  X"63ef8ce2",
  X"9a86ee22",
  X"c089c2b8",
  X"43242ef6",
  X"a51e03aa",
  X"9cf2d0a4",
  X"83c061ba",
  X"9be96a4d",
  X"8fe51550",
  X"ba645bd6",
  X"2826a2f9",
  X"a73a3ae1",
  X"4ba99586",
  X"ef5562e9",
  X"c72fefd3",
  X"f752f7da",
  X"3f046f69",
  X"77fa0a59",
  X"80e4a915",
  X"87b08601",
  X"9b09e6ad",
  X"3b3ee593",
  X"e990fd5a",
  X"9e34d797",
  X"2cf0b7d9",
  X"022b8b51",
  X"96d5ac3a",
  X"017da67d",
  X"d1cf3ed6",
  X"7c7d2d28",
  X"1f9f25cf",
  X"adf2b89b",
  X"5ad6b472",
  X"5a88f54c",
  X"e029ac71",
  X"e019a5e6",
  X"47b0acfd",
  X"ed93fa9b",
  X"e8d3c48d",
  X"283b57cc",
  X"f8d56629",
  X"79132e28",
  X"785f0191",
  X"ed756055",
  X"f7960e44",
  X"e3d35e8c",
  X"15056dd4",
  X"88f46dba",
  X"03a16125",
  X"0564f0bd",
  X"c3eb9e15",
  X"3c9057a2",
  X"97271aec",
  X"a93a072a",
  X"1b3f6d9b",
  X"1e6321f5",
  X"f59c66fb",
  X"26dcf319",
  X"7533d928",
  X"b155fdf5",
  X"03563482",
  X"8aba3cbb",
  X"28517711",
  X"c20ad9f8",
  X"abcc5167",
  X"ccad925f",
  X"4de81751",
  X"3830dc8e",
  X"379d5862",
  X"9320f991",
  X"ea7a90c2",
  X"fb3e7bce",
  X"5121ce64",
  X"774fbe32",
  X"a8b6e37e",
  X"c3293d46",
  X"48de5369",
  X"6413e680",
  X"a2ae0810",
  X"dd6db224",
  X"69852dfd",
  X"09072166",
  X"b39a460a",
  X"6445c0dd",
  X"586cdecf",
  X"1c20c8ae",
  X"5bbef7dd",
  X"1b588d40",
  X"ccd2017f",
  X"6bb4e3bb",
  X"dda26a7e",
  X"3a59ff45",
  X"3e350a44",
  X"bcb4cdd5",
  X"72eacea8",
  X"fa6484bb",
  X"8d6612ae",
  X"bf3c6f47",
  X"d29be463",
  X"542f5d9e",
  X"aec2771b",
  X"f64e6370",
  X"740e0d8d",
  X"e75b1357",
  X"f8721671",
  X"af537d5d",
  X"4040cb08",
  X"4eb4e2cc",
  X"34d2466a",
  X"0115af84",
  X"e1b00428",
  X"95983a1d",
  X"06b89fb4",
  X"ce6ea048",
  X"6f3f3b82",
  X"3520ab82",
  X"011a1d4b",
  X"277227f8",
  X"611560b1",
  X"e7933fdc",
  X"bb3a792b",
  X"344525bd",
  X"a08839e1",
  X"51ce794b",
  X"2f32c9b7",
  X"a01fbac9",
  X"e01cc87e",
  X"bcc7d1f6",
  X"cf0111c3",
  X"a1e8aac7",
  X"1a908749",
  X"d44fbd9a",
  X"d0dadecb",
  X"d50ada38",
  X"0339c32a",
  X"c6913667",
  X"8df9317c",
  X"e0b12b4f",
  X"f79e59b7",
  X"43f5bb3a",
  X"f2d519ff",
  X"27d9459c",
  X"bf97222c",
  X"15e6fc2a",
  X"0f91fc71",
  X"9b941525",
  X"fae59361",
  X"ceb69ceb",
  X"c2a86459",
  X"12baa8d1",
  X"b6c1075e",
  X"e3056a0c",
  X"10d25065",
  X"cb03a442",
  X"e0ec6e0e",
  X"1698db3b",
  X"4c98a0be",
  X"3278e964",
  X"9f1f9532",
  X"e0d392df",
  X"d3a0342b",
  X"8971f21e",
  X"1b0a7441",
  X"4ba3348c",
  X"c5be7120",
  X"c37632d8",
  X"df359f8d",
  X"9b992f2e",
  X"e60b6f47",
  X"0fe3f11d",
  X"e54cda54",
  X"1edad891",
  X"ce6279cf",
  X"cd3e7e6f",
  X"1618b166",
  X"fd2c1d05",
  X"848fd2c5",
  X"f6fb2299",
  X"f523f357",
  X"a6327623",
  X"93a83531",
  X"56cccd02",
  X"acf08162",
  X"5a75ebb5",
  X"6e163697",
  X"88d273cc",
  X"de966292",
  X"81b949d0",
  X"4c50901b",
  X"71c65614",
  X"e6c6c7bd",
  X"327a140a",
  X"45e1d006",
  X"c3f27b9a",
  X"c9aa53fd",
  X"62a80f00",
  X"bb25bfe2",
  X"35bdd2f6",
  X"71126905",
  X"b2040222",
  X"b6cbcf7c",
  X"cd769c2b",
  X"53113ec0",
  X"1640e3d3",
  X"38abbd60",
  X"2547adf0",
  X"ba38209c",
  X"f746ce76",
  X"77afa1c5",
  X"20756060",
  X"85cbfe4e",
  X"8ae88dd8",
  X"7aaaf9b0",
  X"4cf9aa7e",
  X"1948c25c",
  X"02fb8a8c",
  X"01c36ae4",
  X"d6ebe1f9",
  X"90d4f869",
  X"a65cdea0",
  X"3f09252d",
  X"c208e69f",
  X"b74e6132",
  X"ce77e25b",
  X"578fdfe3",
  X"3ac372e6");
										
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


