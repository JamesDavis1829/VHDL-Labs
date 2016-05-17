library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity alu4bit is
	port(r            :buffer std_logic_vector(3 downto 0);
		  a,b          :in std_logic_vector(3 downto 0);
		  op           :in std_logic_vector(2 downto 0);
		  z,n,cout,v   :out std_logic                );
end alu4bit;

architecture behv of alu4bit is
	signal borrow,overflow,carry : std_logic;
	signal result                : std_logic_vector(4 downto 0);
begin
	--This decides all the flags
	process(r,op,carry,borrow,overflow)
	begin
		if r = "0000" then
			z <= '0';
		else
			z <= '1';
		end if;
		if r(3) = '1' then
			n <= '1';
		else 
			n <= '0';
		end if;
		if ((op = "011" or op = "100") and carry = '1') or ((op = "110" or op = "101") and borrow = '1') then
			cout <= '1';
		else
			cout <= '0';
		end if;
		if overflow = '1' and (op = "011" or op = "110" or op = "100" or op = "101") then
			v <= '1';
		else
			v <= '0';
		end if;
	end process;

	--This decides all the modes of the ALU
	process(a,b,op,result,r)
	begin
		--And mode
		if op = "000" then
			r <= a and b;
		--Or mode
		elsif op = "001" then
			r <= a or b;
		--Complement mode
		elsif op = "010" then
			r <= not a;
		--Add mode
		elsif op = "011" then
			result <= std_logic_vector(('0' & unsigned(a)) + ('0' & unsigned(b)));
			if result(4) = '1' then
				carry <= '1';
			end if;
			if (a(3) = '0' and b(3) = '0' and result(3) = '1') or (a(3) = '1' and b(3) = '1' and result(3) = '0') then
				overflow <= '1';
			end if;
			r <= result(3 downto 0);
		--Increment mode
		elsif op = "100" then
			result <= std_logic_vector(('0' & unsigned(a)) + 1);
			if result(4) = '1' then
				carry <= '1';
			end if;
			if (a(3) = '0' and result(3) = '1') or (a(3) = '1' and result(3) = '0') then
				overflow <= '1';
			end if;
			r <= result(3 downto 0);
		--decrement mode
		elsif op = "101" then
			result <= std_logic_vector(('0' & unsigned(a)) - 1);
			if result(4) = '1' then
				carry <= '1';
			end if;
			if (a(3) = '1' and r(3) = '1') then
				overflow <= '1';
			end if;
			r <= result(3 downto 0);
		--Subtraction mode
		elsif op = "110" then
			result <= std_logic_vector(('0' & unsigned(a)) - ('0' & unsigned(b)));
			if(result(4) = '1') then
				carry <= '1';
			end if;
			if (a(3) = '1' and b(3) = '0' and result(3) = '1') or (a(3) = '0' and b(3) = '1' and result(3) = '0') then	
				overflow <= '1';
			end if;
		--
		else
			r <= not a + "0001";
		end if;
	end process;
end behv;
			
		
			
			
			