library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ButtonDebouncer is
    generic (                       
        CLK_period:   integer := 20;  
        btn_noise_time:   integer := 2000000000 
                                      
    );
    Port ( CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end ButtonDebouncer;

architecture Behavioral of ButtonDebouncer is

type stato is (NOT_PRESSED, PRESSED);
signal BTN_state : stato := NOT_PRESSED;

constant max_count : integer := btn_noise_time/CLK_period;  

begin

deb: process (CLK)
variable count: integer := 0;

begin
   if (CLK'event and CLK = '1') then
	   
	   	  case BTN_state is
			when NOT_PRESSED =>
			    CLEARED_BTN<= '0';
				if( BTN = '1' ) then
					BTN_state <= PRESSED;
				else 
					BTN_state <= NOT_PRESSED;
				end if;
            when PRESSED =>
               if(count = max_count -1) then
                       count:=0;
                       CLEARED_BTN <= '1';
                       BTN_state <= NOT_PRESSED;
                   else 
                       count:= count+1;
                       BTN_state <= PRESSED;
                   end if;
            when others => 
                BTN_state <= NOT_PRESSED;
		  end case;
     
  end if;  
end process;


end Behavioral;


--entity ButtonDebouncer is
--    generic (                       -- ADDED GENERICS to speed up simulation
--        CLKP:   integer := 20;
--        DEBT:   integer := 65000
--    );
--    port (
--        CLK:        in  std_logic;
--        BTN:        in  std_logic;
--        CLEARED_BTN:    out std_logic
--    );
--end entity ButtonDebouncer;

--architecture behavioural of ButtonDebouncer is
--    -- constant delay: integer := 650000; -- 6.5ms
--    --constant DELAY: integer := DEBT/CLKP;
--	 constant DELAY: integer := 1300000;
--    signal count:   integer := 0;
--    signal b_enab:  std_logic := '0';  
--
--    signal btnd0:   std_logic;      -- ADDED for clock domain crossing
--    signal btnd1:   std_logic;      -- DITTO
--
--    begin
--
--CLK_DOMAIN_CROSS:    -- ADDED process
--    process (clk)
--    begin
--        if rising_edge(clk) then
--            btnd0 <= btn;
--            btnd1 <= btnd0;
--        end if;
--    end process;
--
--DEBOUNCE_COUNTER:    -- ADDED LABEL
--    process (clk)
--    begin
--        if rising_edge(clk) then
--      
--            CLEARED_BTN <= '0';       -- btn_clr for only one clock, used as enable
--            if  btnd1 = '0' then  -- test for btn inactive state
--                count <= 0;
--            elsif count < DELAY then  -- while btn remains in active state
--                count <= count + 1;
--
--end if;
--            if count = DELAY - 1 then  -- why btn_clr '1' or 1 clock
--                CLEARED_BTN <= '1';
--            end if;
--        end if;
--    end process;
--end architecture behavioural;




