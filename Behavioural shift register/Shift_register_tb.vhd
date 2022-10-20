--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:51:33 11/07/2021
-- Design Name:   
-- Module Name:   /home/so/Scrivania/Progetti_Xilinx/Shift_register/Shift_register_tb.vhd
-- Project Name:  Shift_register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_register
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Shift_register_tb IS
END Shift_register_tb;
 
ARCHITECTURE behavior OF Shift_register_tb IS 
 
    COMPONENT Shift_register
	 
	 GENERIC (N : integer := 4);
	 
    PORT(
         CLK : IN  std_logic;
         Y : IN  std_logic_vector(0 to 3):= (others => '0');
         M : IN  std_logic;
         RST : IN  std_logic;
			SET : IN std_logic;
         INPUT : IN  std_logic;
         L_OUT : OUT  std_logic;
         R_OUT : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal CLK : std_logic := '0';
   signal Y : std_logic_vector(0 to 3) := (others => '0');
   signal M : std_logic := '0';
   signal RST : std_logic := '0';
	signal SET : std_logic := '0';
   signal INPUT : std_logic := '0';

 	--Outputs
   signal L_OUT : std_logic;
   signal R_OUT : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
	constant Nc : integer := 4;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_register 
		GENERIC MAP(
			N => Nc
		)
		
		PORT MAP (
          CLK => CLK,
          Y => Y,
          M => M,
          RST => RST,
			 SET => SET,
          INPUT => INPUT,
          L_OUT => L_OUT,
          R_OUT => R_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;

      -- insert stimulus here 
		
		INPUT <= '1';
		Y <= "0001";
		M <= '0';
		SET <= '1';
		wait for 20 ns;
		INPUT <= '0';
		wait for 20 ns;
		INPUT <= '0';
		wait for 20 ns;
		INPUT <= '1';
		wait for 20 ns;
		SET <= '0';
		Y <= "0011";
		SET <= '1';
		assert R_OUT = '1'
		report "error1" 
		severity failure;
		
		wait for 20 ns;
		SET <= '0';
		assert R_OUT = '0'
		report "error2"
		severity failure;
		
		wait for 20 ns;
		assert R_OUT = '0'
		report "error3"
		severity failure;
		
		wait for 20 ns;
		assert R_OUT = '1'
		report "error4" 
		severity failure;
		
		SET <= '1';
		M <= '1';
		INPUT <= '1';
		wait for 20 ns;
		assert L_OUT = '1'
		report "error5" 
		severity failure;
		SET <= '0';
		
		INPUT <= '0';
		wait for 20 ns;
		assert L_OUT = '1'		
		report "error6" 
		severity failure;
		
		INPUT <= '0';
		wait for 20 ns;
		assert L_OUT = '1'
		report "error7" 
		severity failure;
		
		INPUT <= '1';
		wait for 20 ns;
		assert L_OUT = '1'
		report "error8" 
		severity failure;
		
		INPUT <= '1';
		wait for 20 ns;
		assert L_OUT = '1'
		report "error9" 
		severity failure;
		
		INPUT <= '0';
		wait for 20 ns;
		assert L_OUT = '1'
		report "error10" 
		severity failure;


      wait;
   end process;

END;
