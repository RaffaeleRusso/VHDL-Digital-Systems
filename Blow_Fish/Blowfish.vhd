----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:58:28 09/12/2022 
-- Design Name: 
-- Module Name:    Blowfish - Structural 
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

entity Blowfish is
	port(
		CLK : in std_logic;
		RST : in std_logic;
		start : in std_logic;
		m : in std_logic;
		Plaintext : in std_logic_vector(63 downto 0);
		K : in std_logic_vector(31 downto 0);
		Ciphertext : out std_logic_vector(63 downto 0)
	);
end Blowfish;

architecture Structural of Blowfish is

	component Round
		port(
			CLK : in std_logic;
			RST : in std_logic;
			EN : in std_logic;
			Pi : in std_logic_vector(31 downto 0);
			Xl : in std_logic_vector(31 downto 0);
			Xr : in std_logic_vector(31 downto 0);
			Y : out std_logic_vector(63 downto 0)
		);
	end component;

	component Counter_address
		Port( 
		CLK : in STD_LOGIC;
		RST : in STD_LOGIC;
		EN : in STD_LOGIC;
		M : in STD_LOGIC;
		LOAD : in STD_LOGIC;
		DATA : in STD_LOGIC_VECTOR (4 downto 0);
		counter : out STD_LOGIC_VECTOR (4 downto 0);
		DIV : out std_logic
	);
	end component;
	component Plain_register
		generic ( N :integer := 64);
		port( 
		CLK : in std_logic;
		RST : in std_logic;
		Plain : in std_logic_vector(N-1 downto 0);
		Round_out : in std_logic_vector(N-1 downto 0);
		Y : out std_logic_vector(N-1 downto 0);		
		start : in std_logic;
		load_round_out : in std_logic
		);
	end component;
	
	component Post_proc_register
		generic ( N :integer := 32);
		port( 
		CLK : in std_logic;
		RST : in std_logic;
		SEL : in std_logic;
		EN : in std_logic;
		Xor_in : in std_logic_vector(N-1 downto 0);
		Y : out std_logic_vector(2*N-1 downto 0)
		);
	end component;
	
	component Post_processing
		port(
		Xl : in std_logic_vector(31 downto 0);
		Xr : in std_logic_vector(31 downto 0);
		P16 : in std_logic_vector(31 downto 0);
		P17 : in std_logic_vector(31 downto 0);
		Z : out std_logic_vector(63 downto 0)
	);
	end component;

	component ROM_P
		port( 
		CLK : in std_logic; 
		RST : in std_logic;
		EN : in std_logic; 
		ADDR : in std_logic_vector(4 downto 0); 
		DATA : out std_logic_vector(31 downto 0)
	);
	end component;
	
	component control_unit
		port(
		CLK : in std_logic;
		RST : in std_logic;
		start : in std_logic;
		m : in std_logic;
		load : out std_logic;
		incr : out std_logic;
		count : in std_logic_vector(4 downto 0);
		En_ppr : out std_logic;
		sel : out std_logic;
		load_round_out : out std_logic
	);
	end component;
	
	component registroChiave
		generic(N : integer := 32);
		port( 
			chiave : in std_logic_vector(N-1 downto 0);
			CLK, RST, start: in std_logic;
			output: out std_logic_vector(N-1 downto 0) := (others => '0')
		);
	end component;
	
	signal inc : std_logic;
	signal out_cnt : std_logic_vector(4 downto 0);
	signal key : std_logic_vector(31 downto 0);
	signal out_romp : std_logic_vector(31 downto 0);
	signal xor1 : std_logic_vector(31 downto 0);
	signal plain_reg_out : std_logic_vector(63 downto 0);
	signal plain_reg_in : std_logic_vector(63 downto 0);
	signal lren: std_logic;
	signal sel0 : std_logic;
	signal ppren0 : std_logic;
	signal pprout : std_logic_vector(63 downto 0);
	signal load0 : std_logic;
	
begin

	round1 : Round
		port map(
			CLK => CLK,
			RST => RST,
			EN => '1',
			Pi => xor1,
			Xr => plain_reg_out(31 downto 0),
			Xl => plain_reg_out(63 downto 32),
			Y => plain_reg_in
		);

	cont : Counter_address
		Port map( 
			CLK => CLK,
			RST => RST,
			EN => inc,
			M => M,
			LOAD => load0,
			DATA => "10001",
			counter => out_cnt
		);
	
	
	pl_reg :  Plain_register
		port map( 
			CLK => CLK,
			RST => RST,
			Plain => Plaintext,
			Round_out => plain_reg_in,
			Y => plain_reg_out,	
			start => start,
			load_round_out => lren
		);
	
	ppreg : Post_proc_register
		port map( 
			CLK => CLK,
			RST => RST,
			SEL => sel0,
			EN => ppren0,
			Xor_in => xor1,
			Y => pprout
		);
	
	pp1 : Post_processing
		port map(
			Xl => plain_reg_out(63 downto 32),
			Xr => plain_reg_out(31 downto 0),
			P16 => pprout(31 downto 0),
			P17 => pprout(63 downto 32),
			Z => Ciphertext
		);

	rom1 : ROM_P
		port map( 
			CLK => CLK,
			RST => RST,
			EN => '1', 
			ADDR => out_cnt, 
			DATA => out_romp
		);

xor1 <= key xor out_romp;
	
	CU : control_unit
		port map(
			CLK => CLK,
			RST => RST,
			start => start,
			M => M,
			LOAD => load0,
			incr => inc,
			count => out_cnt,
			En_ppr => ppren0,
			sel => sel0,
			load_round_out => lren
		);

	K1 : registroChiave
		port map( 
			chiave => K,
			CLK => CLK,
			RST => RST,
			start => start,
			output => key
		);
end Structural;

