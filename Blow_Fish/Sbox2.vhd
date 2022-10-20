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

entity Sbox2 is

	port( CLK : in std_logic; 
			RST : in std_logic;
			EN : in std_logic; 
			ADDR : in std_logic_vector(7 downto 0); 
			DATA : out std_logic_vector(31 downto 0)
	);
	
end Sbox2;

architecture behavioral of Sbox2 is
	
	type rom_type is array (0 to 255) of std_logic_vector(31 downto 0);
	signal ROM : rom_type := (
  X"4b7a70e9",
  X"b5b32944",
  X"db75092e",
  X"c4192623",
  X"ad6ea6b0",
  X"49a7df7d",
  X"9cee60b8",
  X"8fedb266",
  X"ecaa8c71",
  X"699a17ff",
  X"5664526c",
  X"c2b19ee1",
  X"193602a5",
  X"75094c29",
  X"a0591340",
  X"e4183a3e",
  X"3f54989a",
  X"5b429d65",
  X"6b8fe4d6",
  X"99f73fd6",
  X"a1d29c07",
  X"efe830f5",
  X"4d2d38e6",
  X"f0255dc1",
  X"4cdd2086",
  X"8470eb26",
  X"6382e9c6",
  X"021ecc5e",
  X"09686b3f",
  X"3ebaefc9",
  X"3c971814",
  X"6b6a70a1",
  X"687f3584",
  X"52a0e286",
  X"b79c5305",
  X"aa500737",
  X"3e07841c",
  X"7fdeae5c",
  X"8e7d44ec",
  X"5716f2b8",
  X"b03ada37",
  X"f0500c0d",
  X"f01c1f04",
  X"0200b3ff",
  X"ae0cf51a",
  X"3cb574b2",
  X"25837a58",
  X"dc0921bd",
  X"d19113f9",
  X"7ca92ff6",
  X"94324773",
  X"22f54701",
  X"3ae5e581",
  X"37c2dadc",
  X"c8b57634",
  X"9af3dda7",
  X"a9446146",
  X"0fd0030e",
  X"ecc8c73e",
  X"a4751e41",
  X"e238cd99",
  X"3bea0e2f",
  X"3280bba1",
  X"183eb331",
  X"4e548b38",
  X"4f6db908",
  X"6f420d03",
  X"f60a04bf",
  X"2cb81290",
  X"24977c79",
  X"5679b072",
  X"bcaf89af",
  X"de9a771f",
  X"d9930810",
  X"b38bae12",
  X"dccf3f2e",
  X"5512721f",
  X"2e6b7124",
  X"501adde6",
  X"9f84cd87",
  X"7a584718",
  X"7408da17",
  X"bc9f9abc",
  X"e94b7d8c",
  X"ec7aec3a",
  X"db851dfa",
  X"63094366",
  X"c464c3d2",
  X"ef1c1847",
  X"3215d908",
  X"dd433b37",
  X"24c2ba16",
  X"12a14d43",
  X"2a65c451",
  X"50940002",
  X"133ae4dd",
  X"71dff89e",
  X"10314e55",
  X"81ac77d6",
  X"5f11199b",
  X"043556f1",
  X"d7a3c76b",
  X"3c11183b",
  X"5924a509",
  X"f28fe6ed",
  X"97f1fbfa",
  X"9ebabf2c",
  X"1e153c6e",
  X"86e34570",
  X"eae96fb1",
  X"860e5e0a",
  X"5a3e2ab3",
  X"771fe71c",
  X"4e3d06fa",
  X"2965dcb9",
  X"99e71d0f",
  X"803e89d6",
  X"5266c825",
  X"2e4cc978",
  X"9c10b36a",
  X"c6150eba",
  X"94e2ea78",
  X"a5fc3c53",
  X"1e0a2df4",
  X"f2f74ea7",
  X"361d2b3d",
  X"1939260f",
  X"19c27960",
  X"5223a708",
  X"f71312b6",
  X"ebadfe6e",
  X"eac31f66",
  X"e3bc4595",
  X"a67bc883",
  X"b17f37d1",
  X"018cff28",
  X"c332ddef",
  X"be6c5aa5",
  X"65582185",
  X"68ab9802",
  X"eecea50f",
  X"db2f953b",
  X"2aef7dad",
  X"5b6e2f84",
  X"1521b628",
  X"29076170",
  X"ecdd4775",
  X"619f1510",
  X"13cca830",
  X"eb61bd96",
  X"0334fe1e",
  X"aa0363cf",
  X"b5735c90",
  X"4c70a239",
  X"d59e9e0b",
  X"cbaade14",
  X"eecc86bc",
  X"60622ca7",
  X"9cab5cab",
  X"b2f3846e",
  X"648b1eaf",
  X"19bdf0ca",
  X"a02369b9",
  X"655abb50",
  X"40685a32",
  X"3c2ab4b3",
  X"319ee9d5",
  X"c021b8f7",
  X"9b540b19",
  X"875fa099",
  X"95f7997e",
  X"623d7da8",
  X"f837889a",
  X"97e32d77",
  X"11ed935f",
  X"16681281",
  X"0e358829",
  X"c7e61fd6",
  X"96dedfa1",
  X"7858ba99",
  X"57f584a5",
  X"1b227263",
  X"9b83c3ff",
  X"1ac24696",
  X"cdb30aeb",
  X"532e3054",
  X"8fd948e4",
  X"6dbc3128",
  X"58ebf2ef",
  X"34c6ffea",
  X"fe28ed61",
  X"ee7c3c73",
  X"5d4a14d9",
  X"e864b7e3",
  X"42105d14",
  X"203e13e0",
  X"45eee2b6",
  X"a3aaabea",
  X"db6c4f15",
  X"facb4fd0",
  X"c742f442",
  X"ef6abbb5",
  X"654f3b1d",
  X"41cd2105",
  X"d81e799e",
  X"86854dc7",
  X"e44b476a",
  X"3d816250",
  X"cf62a1f2",
  X"5b8d2646",
  X"fc8883a0",
  X"c1c7b6a3",
  X"7f1524c3",
  X"69cb7492",
  X"47848a0b",
  X"5692b285",
  X"095bbf00",
  X"ad19489d",
  X"1462b174",
  X"23820e00",
  X"58428d2a",
  X"0c55f5ea",
  X"1dadf43e",
  X"233f7061",
  X"3372f092",
  X"8d937e41",
  X"d65fecf1",
  X"6c223bdb",
  X"7cde3759",
  X"cbee7460",
  X"4085f2a7",
  X"ce77326e",
  X"a6078084",
  X"19f8509e",
  X"e8efd855",
  X"61d99735",
  X"a969a7aa",
  X"c50c06c2",
  X"5a04abfc",
  X"800bcadc",
  X"9e447a2e",
  X"c3453484",
  X"fdd56705",
  X"0e1e9ec9",
  X"db73dbd3",
  X"105588cd",
  X"675fda79",
  X"e3674340",
  X"c5c43465",
  X"713e38d8",
  X"3d28f89e",
  X"f16dff20",
  X"153e21e7",
  X"8fb03d4a",
  X"e6e39f2b",
  X"db83adf7");
  
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


