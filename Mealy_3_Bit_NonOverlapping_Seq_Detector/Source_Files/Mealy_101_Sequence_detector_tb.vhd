LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Mealy_101_Sequence_detector_tb IS
END Mealy_101_Sequence_detector_tb;
 
ARCHITECTURE behavior OF Mealy_101_Sequence_detector_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mealy_101_Sequence_detector
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         x : IN  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal x : std_logic := '0';

 	--Outputs
   signal z : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mealy_101_Sequence_detector PORT MAP (
          clk => clk,
          reset => reset,
          x => x,
          z => z
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 
	-- Input sequence: 1 0 1 (should detect at end)
        x <= '1'; wait for clk_period;
        x <= '0'; wait for clk_period;
        x <= '1'; wait for clk_period;

        -- Non-matching: 0 0
        x <= '0'; wait for clk_period;
        x <= '0'; wait for clk_period;

        -- Matching again: 1 0 1
        x <= '1'; wait for clk_period;
        x <= '0'; wait for clk_period;
        x <= '1'; wait for clk_period;
		  
		  -- Matching again: 1 0 1
        x <= '1'; wait for clk_period;
        x <= '0'; wait for clk_period;
        x <= '1'; wait for clk_period;
		  
		  -- Non-matching: 0 1
        x <= '0'; wait for clk_period;
        x <= '1'; wait for clk_period;
		  
		wait for 50 ns;
      wait;
   end process;

END;
