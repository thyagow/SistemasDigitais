library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador2 is
	port(
		clock2 : in std_logic;
		hex_show : out std_logic_vector(6 downto 0)
	);
end contador2;

architecture cont2 of contador2 is
	signal c : std_logic_vector(3 downto 0);
	begin		
			
	process(clock2)
		begin				
		if(clock2'event and clock2 = '1') then
				c <= c + "0001";
			
			if(c = "1001") then								
				c <= (others => '0');				
			end if;
			
			case c is
					when "0000" => hex_show <= "1000000";
					when "0001" => hex_show <= "1111001";
					when "0010" => hex_show <= "0100100";
					when "0011" => hex_show <= "0110000";
					when "0100" => hex_show <= "0011001";
					when "0101" => hex_show <= "0010010";
					when "0110" => hex_show <= "0000010";
					when "0111" => hex_show <= "1111000";
					when "1000" => hex_show <= "0000000";
					when "1001" => hex_show <= "0010000";				
					when others => hex_show <= "1111111";				
				end case;			
		end if;
	end process;
end cont2;