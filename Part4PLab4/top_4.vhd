library ieee;
use ieee.std_logic_1164.all;

entity top_4 is
	port(
		clock_50 : in std_logic;
		HEX0 : out std_logic_vector(6 downto 0)
	);
end top_4;

architecture topo of top_4 is	
	component contador	
		port(
			clock : in std_logic;
			c : out std_logic
		);
	end component;

	component contador2
		port(
			clock2 : in std_logic;
			hex_show : out std_logic_vector(6 downto 0)
		);	
	end component;
	
	signal sinal : std_logic;
	
	begin
	L0 : contador port map (clock_50, sinal);
	L2 : contador2 port map (sinal, HEX0);
end topo;
