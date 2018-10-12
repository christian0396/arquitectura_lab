library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab4 is port(
	clk : in std_logic;
	rst : in std_logic;
	S : inout std_logic_vector (1 downto 0)
);
end lab4;

architecture lab4_arc of lab4 is 
begin
	process(s) begin	
		if rising_edge(clk) then
			s <= s + 1;
			if (rst='1') then
				s<="00";
			end if;
		end if;
	end process;
end lab4_arc;