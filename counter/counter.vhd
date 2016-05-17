library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
generic (n: natural := 8);
	port(clock	:in std_logic;
		  shift  :in std_logic;
		  k		:out std_logic);
end counter;

architecture behv of counter is
	signal count: integer := 0;
begin

	process(clock, shift, count)
	begin
		if(rising_edge(clock) and shift = '1' and count < n) then
			count <= count + 1;
			k <= '0';
			if(count = n) then
				k <= '1';
			end if;
		elsif(rising_edge(clock) and shift = '1') then
			count <= 1;
			k <= '0';
		end if;
	end process;
end behv;

