library ieee;
use ieee.std_logic_1164.all;

entity seven_seg is
	PORT (	bin: in std_logic_vector(3 downto 0);
			output: out std_logic_vector(1 to 7));
end seven_seg;

architecture Behavior of seven_seg is
begin
	output <= "0000001" when bin="0000" else
		"1001111" when bin="0001" else
		"0010010" when bin="0010" else
		"0000110" when bin="0011" else
		"1001100" when bin="0100" else
		"0100100" when bin="0101" else
		"0100000" when bin="0110" else
		"0001111" when bin="0111" else
		"0000000" when bin="1000" else
		"0001100" when bin="1001" else
		"0001000" when bin="1010" else
		"1100000" when bin="1011" else
		"0110001" when bin="1100" else
		"1000010" when bin="1101" else
		"0110000" when bin="1110" else
		"0111000" when bin="1111" else
		"-------";
end Behavior;