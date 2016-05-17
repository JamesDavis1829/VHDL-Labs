library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity IntegerMultiplier is
	port(clock				:in std_logic;
		  multiplier		:in std_logic_vector(7 downto 0);
		  multiplicand		:in std_logic_vector(7 downto 0);
		  start				:in std_logic;
		  done				:buffer std_logic;
		  product			:buffer std_logic_vector(16 downto 0);
		  counter1, counter0: out std_logic_vector(1 to 7);
		  product3, product2, product1, product0: out std_logic_vector(1 to 7));
end IntegerMultiplier;

architecture behv of IntegerMultiplier is

component multreg is
	port(multiplier		:in	std_logic_vector(7 downto 0);
		  multiplicand		:in 	std_logic_vector(7 downto 0);
		  load,shift,add	:in	std_logic;
		  lsb					:out	std_logic;
		  clock				:in 	std_logic;
		  product			:out 	std_logic_vector(16 downto 0));
end component;

component control is
	port(clock		:	in std_logic;
		  start		:	in std_logic;
		  lsb			:	in std_logic;
		  done		:	out std_logic;
		  add			:	out std_logic;
		  load		:	out std_logic;
		  shift		:	out std_logic;
		  counterOut:	out std_logic_vector(7 downto 0));
end component;

component seven_seg is
		port(	bin: in std_logic_vector(3 downto 0);
				output: out std_logic_vector(1 to 7));
end component;

	signal lsb,load,shift,add: std_logic;
	signal counterOut : std_logic_vector(7 downto 0);
begin
	R1: multreg port map(multiplier, multiplicand,load,shift,add,lsb,clock,product);
	C1: control port map(clock,start,lsb,done,add,load,shift,counterOut);
	S0: seven_seg port map(product(3 downto 0), product0);
	S1: seven_seg port map(product(7 downto 4), product1);
	S2: seven_seg port map(product(11 downto 8), product2);
	S3: seven_seg port map(product(15 downto 12), product3);
	S4: seven_seg port map(counterOut(3 downto 0),counter0);
	S5: seven_seg port map(counterOut(7 downto 4), counter1);
end behv;

		  
	
	