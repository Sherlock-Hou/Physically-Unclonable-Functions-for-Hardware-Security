--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:38:10 12/01/2016
-- Design Name:   
-- Module Name:   C:/Users/riagh/butterfly_puf/tb_butter_final.vhd
-- Project Name:  butterfly_puf
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Final_top
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_top_butter IS
END tb_top_butter;
 
ARCHITECTURE behavior OF tb_top_butter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Final_top
    PORT(
         Clock : IN  std_logic;
         PRE : IN  std_logic;
         Resetn : IN  std_logic;
         excite : IN  std_logic;
         response1 : OUT  std_logic;
         response2 : OUT  std_logic;
         response3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal PRE : std_logic := '0';
   signal Resetn : std_logic := '0';
   signal excite : std_logic := '0';

 	--Outputs
   signal response1 : std_logic;
   signal response2 : std_logic;
   signal response3 : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Final_top PORT MAP (
          Clock => Clock,
          PRE => PRE,
          Resetn => Resetn,
          excite => excite,
          response1 => response1,
          response2 => response2,
          response3 => response3
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_period*10;

      -- insert stimulus here 
PRE <= '0';
excite <='1';
Resetn <= '0';

wait for 100 ns;	

      wait;
   end process;

END;
