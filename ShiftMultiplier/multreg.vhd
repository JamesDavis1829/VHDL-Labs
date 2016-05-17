library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity multreg is
	port(multiplier		:in	std_logic_vector(7 downto 0);
		  multiplicand		:in 	std_logic_vector(7 downto 0);
		  load,shift,add	:in	std_logic;
		  lsb					:out	std_logic;
		  clock				:in 	std_logic;
		  product			:buffer 	std_logic_vector(16 downto 0));
end multreg;

architecture behv of multreg is
signal regContents		: std_logic_vector(16 downto 0);
signal posMultiplier		:	std_logic_vector(7 downto 0);
signal posMultiplicand	:	std_logic_vector(7 downto 0);
begin
	process(multiplicand,multiplier)
	begin
		if(multiplicand(7) = '1') then
			posMultiplicand <= not multiplicand + 1;
		else
			posMultiplicand <= multiplicand;
		end if;
		
		if (multiplier(7) = '1') then
			posMultiplier <= not multiplier + 1;
		else
			posMultiplier <= multiplier;
		end if;
	end process;
	process(clock)
	begin
		if falling_edge(clock) then
			if load = '1' then
					regContents <= "000000000" & posMultiplicand;
			elsif shift = '1' then
				regContents <= '0' & regContents(16 downto 1);
			elsif add = '1' then
				regContents(16 downto 8) <= std_logic_vector(unsigned(regContents(16 downto 8)) +unsigned( posMultiplier));
			end if;
		end if;
	end process;
	
	process(regContents)
	begin
		if (multiplicand(7) xor multiplier(7)) = '0' then
			product <= regContents;
		else
			product <= not regContents + 1;
		end if;
	end process;
	lsb <= regContents(0);
end behv;