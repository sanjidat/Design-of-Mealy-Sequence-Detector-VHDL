
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mealy_101_Sequence_detector is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Mealy_101_Sequence_detector;

architecture Behavioral of Mealy_101_Sequence_detector is

	type state_type is (s0,s1,s2);
	
	signal state, next_state : state_type;
	signal z_internal        : std_logic;
	
begin
	-- state register
	process(clk,reset)
	begin
		if rising_edge(clk) then 
			if reset = '1' then 
				state <= s0;
			else 
				state <= next_state;
			end if;
		end if;
	end process;
	
	-- Next state and Output Logic
	process(state,x)
	begin 
		case state is
		
			when s0 => 
				if x = '1' then 
					next_state <= s1;
					z_internal <= '0';
				else 
					next_state <= s0;
					z_internal <= '0';
				end if;
				
			when s1 => 
				if x = '0' then 
					next_state <= s2;
					z_internal <= '0';
				else 
					next_state <= s1;
					z_internal <= '0';
				end if;
				
			when s2 => 
				if x = '1' then 
					next_state <= s0;
					z_internal <= '1';
				else 
					next_state <= s0;
					z_internal <= '0';
				end if;
		end case;
	end process;

-- Output Assignment
z <= z_internal;

end Behavioral;

