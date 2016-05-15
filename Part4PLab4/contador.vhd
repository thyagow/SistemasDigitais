library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador is
	port(
	clock : in std_logic;
	c : out std_logic
	);
end contador;	
	
	--x"0000001"x"2FAF07F"
architecture cont of contador is
	signal clk_counter : std_logic_vector(27 downto 0);
	begin			
		process(clock, clk_counter)
			begin
					
				if(clock'event and clock = '1') then
					clk_counter <= clk_counter + 1;				
					
					if(clk_counter = x"0000001") then
						clk_counter <= (others => '0');
						c <= '1';
					else
						c <= '0';
					end if;
				end if;
			end process;
end cont;
						
					