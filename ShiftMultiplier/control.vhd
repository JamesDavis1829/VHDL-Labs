library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity control is
	port(clock		:	in std_logic;
		  start		:	in std_logic;
		  lsb			:	in std_logic;
		  done		:	out std_logic;
		  add			:	out std_logic;
		  load		:	out std_logic;
		  shift		:	out std_logic;
		  counterOut:	out std_logic_vector(7 downto 0));
end control;

architecture behv of control is
	type states is (stop,startS,q,addS,shiftS);
	signal state: states := stop;
	signal count: unsigned(4 downto 0);
	signal counter: std_logic_vector (7 downto 0);
begin
	done <= '1' when state = stop else '0';
	load <= '1' when state = startS else '0';
	add <= '1' when state = addS	else '0';
	shift <= '1' when state = shiftS else '0';
	process(clock)
	begin
		if rising_edge(clock) then
		counter <= std_logic_vector(unsigned(counter) + 1);
			case state is
				when stop =>
					if start = '1' then state <= startS; 
											  counterOut <= (others => '0');
					end if;
				when startS => state <= q;
				when q =>
					if lsb = '0' then state <= shiftS;
					elsif lsb = '1' then state <= addS;
					end if;
				when addS => state <= shiftS;
				when shiftS =>
					if(count = 7) then state <= stop;
					else state <= q;
					end if;
			end case;
		end if;
		counterOut <= counter;
	end process;
	process(clock)
	begin
		if rising_edge(clock) then
			if state = startS then 
				count <= to_unsigned(0,5);
			elsif state = shiftS then count <= count + 1;
			end if;
		end if;
	end process;
end behv;