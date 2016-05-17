LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY seven_seg_hex IS
PORT (bin: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 leds: OUT STD_LOGIC_VECTOR(1 TO 7));
END seven_seg_hex;
ARCHITECTURE Behavior OF seven_seg_hex IS
BEGIN
leds <= "0000001" WHEN bin="0000" ELSE
"1001111" WHEN bin="0001" ELSE
"0010010" WHEN bin="0010" ELSE
"0000110" WHEN bin="0011" ELSE
"1001100" WHEN bin="0100" ELSE
"0100100" WHEN bin="0101" ELSE
"0100000" WHEN bin="0110" ELSE
"0001111" WHEN bin="0111" ELSE
"0000000" WHEN bin="1000" ELSE
"0001100" WHEN bin="1001" ELSE
"0001000" WHEN bin="1010" ELSE
"1100000" WHEN bin="1011" ELSE
"0110001" WHEN bin="1100" ELSE
"1000010" WHEN bin="1101" ELSE
"0110000" WHEN bin="1110" ELSE
"0111000" WHEN bin="1111" ELSE
"-------";
END Behavior;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity oneToSixCounter is
port(clear			:in std_logic;
	  clock			:in std_logic;
	  count			:in std_logic;
	  adderOut		:out std_logic_vector(3 downto 0);
	  dispOut		:out std_logic_vector(3 downto 0);
	  countNext		:buffer std_logic);
end oneToSixCounter;

architecture behv of oneToSixCounter is
signal preCount: std_logic_vector(3 downto 0);
begin
	process(clock,clear,count)
	begin
		if(rising_edge(clock)) then
			if countNext = '1' then
				countNext <= '0';
			end if;
			if(clear = '1') then
				preCount <= "0000";
			end if;
			if count = '1' then
			preCount <= preCount + 1;
				if preCount > 5 then
					preCount <= "0001";
					countNext <= '1';
				end if;
			end if;
		end if;
	end process;
	adderOut <= preCount;
	dispOut <= preCount;
end behv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity adder is
port(add1	:in std_logic_vector(3 downto 0);
	  add2	:in std_logic_vector(3 downto 0);
	  sum		:out std_LOGIC_VECTOR(3 downto 0));
end adder;

architecture behv of adder is
signal sumT : std_logic_vector(4 downto 0);
begin
	sumT <= ('0' & add1) + ('0' & add2);
	sum <= sumT(3 downto 0);
end behv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pointRegister is
port(clock		:in std_logic;
	  clear		:in std_logic;
	  input		:in std_logic;
	  datain		:in std_logic_vector(3 downto 0);
	  dataout	:out std_logic_vector(3 downto 0));
end pointRegister;

architecture behv of pointRegister is

signal regContents: std_logic_vector(3 downto 0);

begin
	process(clock)
	begin
	if rising_edge(clock) then
		if clear = '1' then
			regContents <= "0000";
		elsif input = '1' then
			regContents <= datain;
		end if;
	end if;
	end process;
	
	dataOut <= regContents;
end behv;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparator is
port(clock	:in std_logic;
	  sum		:in std_logic_vector(3 downto 0);
	  point  :in std_logic_vector(3 downto 0);
	  eq		:out std_logic);
end comparator;

architecture behv of comparator is
signal outSig: std_logic;
begin
	outSig <= '1' when sum = point else '0';
	eq <= outSig;
end behv;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testLogic is
port(clock	:in std_logic;
	  sum		:in std_logic_vector(3 downto 0);
	  s		:out std_logic;
	  soe		:out std_logic;
	  ttort	:out std_logic);
end testLogic;

architecture behv of testLogic is
begin
	s <= '1' when sum = 7 else '0';
	soe <= '1' when sum = 7 or sum = 11 else '0';
	ttort <= '1' when sum = 2 or sum = 3 or sum = 12 else '0';
end behv;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Game is
port(clock		:in std_logic;
     rollb,eq	:in std_logic;
	  reset		:in std_logic;
	  roll		:out std_logic;
	  win,lose	:out std_logic;
	  sp			:out std_logic;
	  s,soe,ttort:in std_logic;
	  sum			:in std_logic_vector(3 downto 0));
end Game;

architecture behv of Game is

type states is (s0,s1,s2,s3,s4,s5);
signal currentState: states := s0;
signal nextState: states;
signal point : std_logic_vector(3 downto 0);

begin
	process(rollb,reset,currentState,sum)
	begin
	sp <= '0';
	roll <= '0';
	win <= '0';
	lose <= '0';
	nextState <= currentState;
	if reset = '1' then
		nextState <= s0;
	else
		case currentState is
			when s0 => if rollb = '1' then 
				nextState <= s1; end if;
			when s1 =>
				if rollb = '1' then
					roll <= '1';
				elsif soe = '1' then 
					nextState <= s2;
				elsif ttort = '1' then
					nextState <= s3;
				else
					sp <= '1';
					nextState <= s4;
				end if;
			when s2 =>
				win <= '1';
				if reset = '1' then 
					nextState <= s0;
				end if;
			when s3 =>
				lose <= '1';
				if reset = '1' then
					nextState <= s0;
				end if;
			when s4 =>
				if rollb = '1' then 
					nextState <= s5;
				end if;
			when s5 =>
				if rollb = '1' then
					roll <= '1';
				elsif eq = '1' then
					nextState <= s2;
				elsif s = '1' then
					nextState <= s3;
				else
					nextState <= s4;
				end if;
			end case;
		end if;
	end process;
	
	process(clock)
	begin
		if rising_edge(clock) then
			currentState <= nextState;
		end if;
	end process;
end behv;
	  
	  
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DiceGame is
port(clock	:in std_logic;
     d1,d2	:out std_logic_vector(1 to 7);
	  d3		:out std_logic_vector(1 to 7);
	  w,l		:out std_logic;
	  rollb	:in std_logic;
	  reset	:in std_logic);
end DiceGame;

architecture behv of DiceGame is

component seven_seg_hex is
port (bin: in std_logic_vector(3 downto 0);
 leds: out std_logic_vector(1 to 7));
end component;

component oneToSixCounter is
port(clear			:in std_logic;
	  clock			:in std_logic;
	  count			:in std_logic;
	  adderOut		:out std_logic_vector(3 downto 0);
	  dispOut		:out std_logic_vector(3 downto 0);
	  countNext		:out std_logic);
end component;

component adder is
port(add1	:in std_logic_vector(3 downto 0);
	  add2	:in std_logic_vector(3 downto 0);
	  sum		:out std_LOGIC_VECTOR(3 downto 0));
end component;

component pointRegister is
port(clock		:in std_logic;
	  clear		:in std_logic;
	  input		:in std_logic;
	  datain		:in std_logic_vector(3 downto 0);
	  dataout	:out std_logic_vector(3 downto 0));
end component;

component comparator is
port(clock	:in std_logic;
	  sum		:in std_logic_vector(3 downto 0);
	  point  :in std_logic_vector(3 downto 0);
	  eq		:out std_logic);
end component;

component testLogic is
port(clock	:in std_logic;
	  sum		:in std_logic_vector(3 downto 0);
	  s		:out std_logic;
	  soe		:out std_logic;
	  ttort	:out std_logic);
end component;

component Game is
port(clock		:in std_logic;
     rollb,eq	:in std_logic;
	  reset		:in std_logic;
	  roll		:out std_logic;
	  win,lose	:out std_logic;
	  sp			:out std_logic;
	  s,soe,ttort:in std_logic;
	  sum			:in std_logic_vector(3 downto 0));
end component;

signal toadd1,toadd2		: std_logic_vector(3 downto 0);
signal todisp1,todisp2	: std_logic_vector(3 downto 0);
signal cEnable				: std_logic;
signal sumOut				: std_logic_vector(3 downto 0);
signal rOut,eqO,spO		: std_logic;
signal sO,soeO,ttortO	: std_logic;
signal pointOut			: std_logic_vector(3 downto 0);

begin

	CL: Game port map(clock,not(rollb),eqO,not(reset),rOut,w,l,spO,sO,soeO,ttortO,sumOut);
	T1: testLogic port map(clock,sumOut,sO,soeO,ttortO);
	CP: comparator port map(clock, sumOut,pointOut,eqO);
	PR: pointRegister port map(clock, not(reset),spO,sumOut,pointOut);
	A1: adder port map(toAdd1,toAdd2,sumOut);
	C1: oneToSixCounter port map(not(reset),clock,rOut,toadd1,todisp1,cEnable);
	C2: oneToSixCounter port map(not(reset),clock, cEnable, todisp2,toadd2,open);
	S1: seven_seg_hex port map(todisp1,d1);
	S2: seven_seg_hex port map(todisp2,d2);
	S3: seven_seg_hex port map(sumOut,d3);
end behv;
	

