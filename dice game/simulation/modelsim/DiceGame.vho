-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/22/2015 15:51:24"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DiceGame IS
    PORT (
	clock : IN std_logic;
	d1 : OUT std_logic_vector(1 TO 7);
	d2 : OUT std_logic_vector(1 TO 7);
	d3 : OUT std_logic_vector(1 TO 7);
	w : OUT std_logic;
	l : OUT std_logic;
	rollb : IN std_logic;
	reset : IN std_logic
	);
END DiceGame;

-- Design Ports Information
-- d1[7]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[6]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[5]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[4]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[7]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[6]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[5]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[4]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[3]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[2]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rollb	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DiceGame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_d1 : std_logic_vector(1 TO 7);
SIGNAL ww_d2 : std_logic_vector(1 TO 7);
SIGNAL ww_d3 : std_logic_vector(1 TO 7);
SIGNAL ww_w : std_logic;
SIGNAL ww_l : std_logic;
SIGNAL ww_rollb : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \rollb~input_o\ : std_logic;
SIGNAL \CL|Selector2~1_combout\ : std_logic;
SIGNAL \CL|lose~0_combout\ : std_logic;
SIGNAL \A1|Add0~1_sumout\ : std_logic;
SIGNAL \C1|preCount~0_combout\ : std_logic;
SIGNAL \C1|preCount[0]~1_combout\ : std_logic;
SIGNAL \A1|Add0~2\ : std_logic;
SIGNAL \A1|Add0~5_sumout\ : std_logic;
SIGNAL \A1|Add0~6\ : std_logic;
SIGNAL \A1|Add0~10\ : std_logic;
SIGNAL \A1|Add0~13_sumout\ : std_logic;
SIGNAL \CL|Selector3~0_combout\ : std_logic;
SIGNAL \PR|regContents[0]~2_combout\ : std_logic;
SIGNAL \PR|regContents[0]~0_combout\ : std_logic;
SIGNAL \CP|Equal0~0_combout\ : std_logic;
SIGNAL \S3|Equal7~0_combout\ : std_logic;
SIGNAL \CL|Selector3~1_combout\ : std_logic;
SIGNAL \CL|currentState.s3~q\ : std_logic;
SIGNAL \CL|Selector2~0_combout\ : std_logic;
SIGNAL \T1|soe~combout\ : std_logic;
SIGNAL \CL|win~0_combout\ : std_logic;
SIGNAL \CL|Selector2~3_combout\ : std_logic;
SIGNAL \CL|currentState.s2~q\ : std_logic;
SIGNAL \CL|Selector0~0_combout\ : std_logic;
SIGNAL \CL|currentState.s0~q\ : std_logic;
SIGNAL \CL|nextState.s1~0_combout\ : std_logic;
SIGNAL \CL|currentState.s1~q\ : std_logic;
SIGNAL \C1|countNext~0_combout\ : std_logic;
SIGNAL \C1|countNext~q\ : std_logic;
SIGNAL \C2|preCount~0_combout\ : std_logic;
SIGNAL \C2|preCount[0]~1_combout\ : std_logic;
SIGNAL \C2|preCount~3_combout\ : std_logic;
SIGNAL \C2|preCount~2_combout\ : std_logic;
SIGNAL \A1|Add0~9_sumout\ : std_logic;
SIGNAL \CL|Selector2~2_combout\ : std_logic;
SIGNAL \CL|Selector4~0_combout\ : std_logic;
SIGNAL \PR|regContents[0]~1_combout\ : std_logic;
SIGNAL \CL|Selector4~1_combout\ : std_logic;
SIGNAL \CL|currentState.s4~q\ : std_logic;
SIGNAL \CL|nextState.s5~4_combout\ : std_logic;
SIGNAL \CL|currentState.s5~q\ : std_logic;
SIGNAL \CL|roll~0_combout\ : std_logic;
SIGNAL \C1|preCount~2_combout\ : std_logic;
SIGNAL \C1|preCount~3_combout\ : std_logic;
SIGNAL \S1|leds[7]~0_combout\ : std_logic;
SIGNAL \S1|leds[6]~1_combout\ : std_logic;
SIGNAL \S1|leds[5]~2_combout\ : std_logic;
SIGNAL \S1|leds[4]~3_combout\ : std_logic;
SIGNAL \S1|leds[3]~4_combout\ : std_logic;
SIGNAL \S1|leds[2]~5_combout\ : std_logic;
SIGNAL \S1|leds[1]~6_combout\ : std_logic;
SIGNAL \S2|leds[7]~0_combout\ : std_logic;
SIGNAL \S2|leds[6]~1_combout\ : std_logic;
SIGNAL \S2|leds[5]~2_combout\ : std_logic;
SIGNAL \S2|leds[4]~3_combout\ : std_logic;
SIGNAL \S2|leds[3]~4_combout\ : std_logic;
SIGNAL \S2|leds[2]~5_combout\ : std_logic;
SIGNAL \S2|leds[1]~6_combout\ : std_logic;
SIGNAL \S3|leds[7]~0_combout\ : std_logic;
SIGNAL \S3|leds[6]~1_combout\ : std_logic;
SIGNAL \S3|leds[5]~2_combout\ : std_logic;
SIGNAL \S3|leds[4]~3_combout\ : std_logic;
SIGNAL \S3|leds[3]~4_combout\ : std_logic;
SIGNAL \S3|leds[2]~5_combout\ : std_logic;
SIGNAL \S3|leds[1]~6_combout\ : std_logic;
SIGNAL \C2|preCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PR|regContents\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|preCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rollb~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \PR|ALT_INV_regContents[0]~2_combout\ : std_logic;
SIGNAL \CL|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \PR|ALT_INV_regContents[0]~1_combout\ : std_logic;
SIGNAL \CL|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \S3|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \CL|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \CL|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CL|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \T1|ALT_INV_soe~combout\ : std_logic;
SIGNAL \C1|ALT_INV_countNext~q\ : std_logic;
SIGNAL \CL|ALT_INV_roll~0_combout\ : std_logic;
SIGNAL \CL|ALT_INV_lose~0_combout\ : std_logic;
SIGNAL \CL|ALT_INV_win~0_combout\ : std_logic;
SIGNAL \S2|ALT_INV_leds[3]~4_combout\ : std_logic;
SIGNAL \S2|ALT_INV_leds[7]~0_combout\ : std_logic;
SIGNAL \C2|ALT_INV_preCount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \S1|ALT_INV_leds[3]~4_combout\ : std_logic;
SIGNAL \S1|ALT_INV_leds[7]~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_preCount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CL|ALT_INV_currentState.s0~q\ : std_logic;
SIGNAL \CL|ALT_INV_currentState.s4~q\ : std_logic;
SIGNAL \PR|ALT_INV_regContents\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CL|ALT_INV_currentState.s5~q\ : std_logic;
SIGNAL \CL|ALT_INV_currentState.s1~q\ : std_logic;
SIGNAL \CL|ALT_INV_currentState.s3~q\ : std_logic;
SIGNAL \CL|ALT_INV_currentState.s2~q\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \A1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
d1 <= ww_d1;
d2 <= ww_d2;
d3 <= ww_d3;
w <= ww_w;
l <= ww_l;
ww_rollb <= rollb;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rollb~input_o\ <= NOT \rollb~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\PR|ALT_INV_regContents[0]~2_combout\ <= NOT \PR|regContents[0]~2_combout\;
\CL|ALT_INV_Selector4~0_combout\ <= NOT \CL|Selector4~0_combout\;
\PR|ALT_INV_regContents[0]~1_combout\ <= NOT \PR|regContents[0]~1_combout\;
\CL|ALT_INV_Selector3~0_combout\ <= NOT \CL|Selector3~0_combout\;
\S3|ALT_INV_Equal7~0_combout\ <= NOT \S3|Equal7~0_combout\;
\CL|ALT_INV_Selector2~2_combout\ <= NOT \CL|Selector2~2_combout\;
\CL|ALT_INV_Selector2~1_combout\ <= NOT \CL|Selector2~1_combout\;
\CP|ALT_INV_Equal0~0_combout\ <= NOT \CP|Equal0~0_combout\;
\CL|ALT_INV_Selector2~0_combout\ <= NOT \CL|Selector2~0_combout\;
\T1|ALT_INV_soe~combout\ <= NOT \T1|soe~combout\;
\C1|ALT_INV_countNext~q\ <= NOT \C1|countNext~q\;
\CL|ALT_INV_roll~0_combout\ <= NOT \CL|roll~0_combout\;
\CL|ALT_INV_lose~0_combout\ <= NOT \CL|lose~0_combout\;
\CL|ALT_INV_win~0_combout\ <= NOT \CL|win~0_combout\;
\S2|ALT_INV_leds[3]~4_combout\ <= NOT \S2|leds[3]~4_combout\;
\S2|ALT_INV_leds[7]~0_combout\ <= NOT \S2|leds[7]~0_combout\;
\C2|ALT_INV_preCount\(0) <= NOT \C2|preCount\(0);
\C2|ALT_INV_preCount\(2) <= NOT \C2|preCount\(2);
\C2|ALT_INV_preCount\(1) <= NOT \C2|preCount\(1);
\S1|ALT_INV_leds[3]~4_combout\ <= NOT \S1|leds[3]~4_combout\;
\S1|ALT_INV_leds[7]~0_combout\ <= NOT \S1|leds[7]~0_combout\;
\C1|ALT_INV_preCount\(0) <= NOT \C1|preCount\(0);
\C1|ALT_INV_preCount\(2) <= NOT \C1|preCount\(2);
\C1|ALT_INV_preCount\(1) <= NOT \C1|preCount\(1);
\CL|ALT_INV_currentState.s0~q\ <= NOT \CL|currentState.s0~q\;
\CL|ALT_INV_currentState.s4~q\ <= NOT \CL|currentState.s4~q\;
\PR|ALT_INV_regContents\(2) <= NOT \PR|regContents\(2);
\PR|ALT_INV_regContents\(1) <= NOT \PR|regContents\(1);
\PR|ALT_INV_regContents\(0) <= NOT \PR|regContents\(0);
\PR|ALT_INV_regContents\(3) <= NOT \PR|regContents\(3);
\CL|ALT_INV_currentState.s5~q\ <= NOT \CL|currentState.s5~q\;
\CL|ALT_INV_currentState.s1~q\ <= NOT \CL|currentState.s1~q\;
\CL|ALT_INV_currentState.s3~q\ <= NOT \CL|currentState.s3~q\;
\CL|ALT_INV_currentState.s2~q\ <= NOT \CL|currentState.s2~q\;
\A1|ALT_INV_Add0~13_sumout\ <= NOT \A1|Add0~13_sumout\;
\A1|ALT_INV_Add0~9_sumout\ <= NOT \A1|Add0~9_sumout\;
\A1|ALT_INV_Add0~5_sumout\ <= NOT \A1|Add0~5_sumout\;
\A1|ALT_INV_Add0~1_sumout\ <= NOT \A1|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y4_N96
\d1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|ALT_INV_leds[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_d1(7));

-- Location: IOOBUF_X89_Y13_N39
\d1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|leds[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_d1(6));

-- Location: IOOBUF_X89_Y13_N56
\d1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|leds[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_d1(5));

-- Location: IOOBUF_X89_Y4_N79
\d1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|leds[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_d1(4));

-- Location: IOOBUF_X89_Y11_N96
\d1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|ALT_INV_leds[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_d1(3));

-- Location: IOOBUF_X89_Y11_N79
\d1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|leds[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_d1(2));

-- Location: IOOBUF_X89_Y8_N39
\d1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|leds[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_d1(1));

-- Location: IOOBUF_X89_Y8_N56
\d2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|ALT_INV_leds[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_d2(7));

-- Location: IOOBUF_X89_Y15_N56
\d2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|leds[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_d2(6));

-- Location: IOOBUF_X89_Y15_N39
\d2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|leds[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_d2(5));

-- Location: IOOBUF_X89_Y16_N56
\d2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|leds[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_d2(4));

-- Location: IOOBUF_X89_Y16_N39
\d2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|ALT_INV_leds[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_d2(3));

-- Location: IOOBUF_X89_Y6_N56
\d2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|leds[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_d2(2));

-- Location: IOOBUF_X89_Y6_N39
\d2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|leds[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_d2(1));

-- Location: IOOBUF_X89_Y9_N39
\d3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|leds[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_d3(7));

-- Location: IOOBUF_X89_Y23_N5
\d3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|leds[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_d3(6));

-- Location: IOOBUF_X89_Y9_N56
\d3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|leds[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_d3(5));

-- Location: IOOBUF_X89_Y23_N22
\d3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|leds[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_d3(4));

-- Location: IOOBUF_X89_Y25_N22
\d3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|leds[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_d3(3));

-- Location: IOOBUF_X89_Y21_N56
\d3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|leds[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_d3(2));

-- Location: IOOBUF_X89_Y20_N62
\d3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|leds[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_d3(1));

-- Location: IOOBUF_X52_Y0_N2
\w~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CL|win~0_combout\,
	devoe => ww_devoe,
	o => ww_w);

-- Location: IOOBUF_X89_Y6_N22
\l~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CL|lose~0_combout\,
	devoe => ww_devoe,
	o => ww_l);

-- Location: IOIBUF_X32_Y0_N1
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G6
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\rollb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rollb,
	o => \rollb~input_o\);

-- Location: MLABCELL_X87_Y9_N21
\CL|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector2~1_combout\ = (\rollb~input_o\ & \CL|currentState.s5~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rollb~input_o\,
	datad => \CL|ALT_INV_currentState.s5~q\,
	combout => \CL|Selector2~1_combout\);

-- Location: MLABCELL_X87_Y9_N9
\CL|lose~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|lose~0_combout\ = (\reset~input_o\ & \CL|currentState.s3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \CL|ALT_INV_currentState.s3~q\,
	combout => \CL|lose~0_combout\);

-- Location: LABCELL_X88_Y9_N0
\A1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~1_sumout\ = SUM(( \C2|preCount\(0) ) + ( \C1|preCount\(0) ) + ( !VCC ))
-- \A1|Add0~2\ = CARRY(( \C2|preCount\(0) ) + ( \C1|preCount\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_preCount\(0),
	datad => \C2|ALT_INV_preCount\(0),
	cin => GND,
	sumout => \A1|Add0~1_sumout\,
	cout => \A1|Add0~2\);

-- Location: MLABCELL_X87_Y9_N48
\C1|preCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|preCount~0_combout\ = ( !\rollb~input_o\ & ( !\CL|roll~0_combout\ & ( (\reset~input_o\ & ((!\C1|preCount\(0) & (!\C1|preCount\(2) & \C1|preCount\(1))) # (\C1|preCount\(0) & ((!\C1|preCount\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \C1|ALT_INV_preCount\(2),
	datac => \C1|ALT_INV_preCount\(0),
	datad => \C1|ALT_INV_preCount\(1),
	datae => \ALT_INV_rollb~input_o\,
	dataf => \CL|ALT_INV_roll~0_combout\,
	combout => \C1|preCount~0_combout\);

-- Location: MLABCELL_X87_Y9_N6
\C1|preCount[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|preCount[0]~1_combout\ = ( \CL|currentState.s1~q\ & ( (!\reset~input_o\) # (!\rollb~input_o\) ) ) # ( !\CL|currentState.s1~q\ & ( (!\reset~input_o\) # ((!\rollb~input_o\ & \CL|currentState.s5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001111110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_rollb~input_o\,
	datad => \CL|ALT_INV_currentState.s5~q\,
	dataf => \CL|ALT_INV_currentState.s1~q\,
	combout => \C1|preCount[0]~1_combout\);

-- Location: FF_X88_Y9_N14
\C1|preCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|preCount~0_combout\,
	sload => VCC,
	ena => \C1|preCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|preCount\(1));

-- Location: LABCELL_X88_Y9_N3
\A1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~5_sumout\ = SUM(( \C2|preCount\(1) ) + ( \C1|preCount\(1) ) + ( \A1|Add0~2\ ))
-- \A1|Add0~6\ = CARRY(( \C2|preCount\(1) ) + ( \C1|preCount\(1) ) + ( \A1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_preCount\(1),
	datad => \C2|ALT_INV_preCount\(1),
	cin => \A1|Add0~2\,
	sumout => \A1|Add0~5_sumout\,
	cout => \A1|Add0~6\);

-- Location: LABCELL_X88_Y9_N6
\A1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~9_sumout\ = SUM(( \C2|preCount\(2) ) + ( \C1|preCount\(2) ) + ( \A1|Add0~6\ ))
-- \A1|Add0~10\ = CARRY(( \C2|preCount\(2) ) + ( \C1|preCount\(2) ) + ( \A1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_preCount\(2),
	datad => \C2|ALT_INV_preCount\(2),
	cin => \A1|Add0~6\,
	sumout => \A1|Add0~9_sumout\,
	cout => \A1|Add0~10\);

-- Location: LABCELL_X88_Y9_N9
\A1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|Add0~13_sumout\ = SUM(( GND ) + ( GND ) + ( \A1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \A1|Add0~10\,
	sumout => \A1|Add0~13_sumout\);

-- Location: LABCELL_X88_Y9_N15
\CL|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector3~0_combout\ = ( !\A1|Add0~5_sumout\ & ( \A1|Add0~13_sumout\ & ( (\rollb~input_o\ & (\CL|currentState.s1~q\ & (\A1|Add0~9_sumout\ & !\A1|Add0~1_sumout\))) ) ) ) # ( \A1|Add0~5_sumout\ & ( !\A1|Add0~13_sumout\ & ( (\rollb~input_o\ & 
-- (\CL|currentState.s1~q\ & !\A1|Add0~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rollb~input_o\,
	datab => \CL|ALT_INV_currentState.s1~q\,
	datac => \A1|ALT_INV_Add0~9_sumout\,
	datad => \A1|ALT_INV_Add0~1_sumout\,
	datae => \A1|ALT_INV_Add0~5_sumout\,
	dataf => \A1|ALT_INV_Add0~13_sumout\,
	combout => \CL|Selector3~0_combout\);

-- Location: LABCELL_X88_Y9_N42
\PR|regContents[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PR|regContents[0]~2_combout\ = ( \A1|Add0~13_sumout\ & ( (!\A1|Add0~9_sumout\ & (\A1|Add0~1_sumout\ & \A1|Add0~5_sumout\)) # (\A1|Add0~9_sumout\ & (!\A1|Add0~1_sumout\ & !\A1|Add0~5_sumout\)) ) ) # ( !\A1|Add0~13_sumout\ & ( (\A1|Add0~5_sumout\ & 
-- ((!\A1|Add0~9_sumout\) # (\A1|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|ALT_INV_Add0~9_sumout\,
	datac => \A1|ALT_INV_Add0~1_sumout\,
	datad => \A1|ALT_INV_Add0~5_sumout\,
	dataf => \A1|ALT_INV_Add0~13_sumout\,
	combout => \PR|regContents[0]~2_combout\);

-- Location: LABCELL_X88_Y9_N51
\PR|regContents[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PR|regContents[0]~0_combout\ = ( \PR|regContents[0]~2_combout\ & ( !\reset~input_o\ ) ) # ( !\PR|regContents[0]~2_combout\ & ( (!\reset~input_o\) # ((\rollb~input_o\ & \CL|currentState.s1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110101111100001111010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rollb~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \CL|ALT_INV_currentState.s1~q\,
	dataf => \PR|ALT_INV_regContents[0]~2_combout\,
	combout => \PR|regContents[0]~0_combout\);

-- Location: FF_X88_Y9_N11
\PR|regContents[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|Add0~13_sumout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \PR|regContents[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR|regContents\(3));

-- Location: LABCELL_X88_Y9_N45
\CP|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Equal0~0_combout\ = ( \PR|regContents\(3) & ( !\A1|Add0~13_sumout\ ) ) # ( !\PR|regContents\(3) & ( \A1|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A1|ALT_INV_Add0~13_sumout\,
	dataf => \PR|ALT_INV_regContents\(3),
	combout => \CP|Equal0~0_combout\);

-- Location: LABCELL_X88_Y9_N48
\S3|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|Equal7~0_combout\ = ( !\A1|Add0~13_sumout\ & ( (\A1|Add0~9_sumout\ & (\A1|Add0~5_sumout\ & \A1|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|ALT_INV_Add0~9_sumout\,
	datac => \A1|ALT_INV_Add0~5_sumout\,
	datad => \A1|ALT_INV_Add0~1_sumout\,
	dataf => \A1|ALT_INV_Add0~13_sumout\,
	combout => \S3|Equal7~0_combout\);

-- Location: LABCELL_X88_Y9_N36
\CL|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector3~1_combout\ = ( \CP|Equal0~0_combout\ & ( \S3|Equal7~0_combout\ & ( ((\CL|Selector3~0_combout\) # (\CL|lose~0_combout\)) # (\CL|Selector2~1_combout\) ) ) ) # ( !\CP|Equal0~0_combout\ & ( \S3|Equal7~0_combout\ & ( (((\CL|Selector2~1_combout\ & 
-- !\CL|Selector2~2_combout\)) # (\CL|Selector3~0_combout\)) # (\CL|lose~0_combout\) ) ) ) # ( \CP|Equal0~0_combout\ & ( !\S3|Equal7~0_combout\ & ( (\CL|Selector3~0_combout\) # (\CL|lose~0_combout\) ) ) ) # ( !\CP|Equal0~0_combout\ & ( !\S3|Equal7~0_combout\ 
-- & ( (\CL|Selector3~0_combout\) # (\CL|lose~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111101110011111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|ALT_INV_Selector2~1_combout\,
	datab => \CL|ALT_INV_lose~0_combout\,
	datac => \CL|ALT_INV_Selector2~2_combout\,
	datad => \CL|ALT_INV_Selector3~0_combout\,
	datae => \CP|ALT_INV_Equal0~0_combout\,
	dataf => \S3|ALT_INV_Equal7~0_combout\,
	combout => \CL|Selector3~1_combout\);

-- Location: FF_X88_Y9_N38
\CL|currentState.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CL|Selector3~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL|currentState.s3~q\);

-- Location: MLABCELL_X87_Y9_N18
\CL|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector2~0_combout\ = ( \CL|currentState.s1~q\ & ( \rollb~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rollb~input_o\,
	dataf => \CL|ALT_INV_currentState.s1~q\,
	combout => \CL|Selector2~0_combout\);

-- Location: MLABCELL_X87_Y9_N54
\T1|soe\ : cyclonev_lcell_comb
-- Equation(s):
-- \T1|soe~combout\ = ( \A1|Add0~13_sumout\ & ( (\A1|Add0~5_sumout\ & (\A1|Add0~1_sumout\ & !\A1|Add0~9_sumout\)) ) ) # ( !\A1|Add0~13_sumout\ & ( (\A1|Add0~5_sumout\ & (\A1|Add0~1_sumout\ & \A1|Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~5_sumout\,
	datac => \A1|ALT_INV_Add0~1_sumout\,
	datad => \A1|ALT_INV_Add0~9_sumout\,
	dataf => \A1|ALT_INV_Add0~13_sumout\,
	combout => \T1|soe~combout\);

-- Location: MLABCELL_X87_Y9_N33
\CL|win~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|win~0_combout\ = ( \CL|currentState.s2~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \CL|ALT_INV_currentState.s2~q\,
	combout => \CL|win~0_combout\);

-- Location: MLABCELL_X87_Y9_N42
\CL|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector2~3_combout\ = ( \T1|soe~combout\ & ( \CL|win~0_combout\ ) ) # ( !\T1|soe~combout\ & ( \CL|win~0_combout\ ) ) # ( \T1|soe~combout\ & ( !\CL|win~0_combout\ & ( ((\CL|Selector2~1_combout\ & (!\CP|Equal0~0_combout\ & \CL|Selector2~2_combout\))) # 
-- (\CL|Selector2~0_combout\) ) ) ) # ( !\T1|soe~combout\ & ( !\CL|win~0_combout\ & ( (\CL|Selector2~1_combout\ & (!\CP|Equal0~0_combout\ & \CL|Selector2~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000001100110111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|ALT_INV_Selector2~1_combout\,
	datab => \CL|ALT_INV_Selector2~0_combout\,
	datac => \CP|ALT_INV_Equal0~0_combout\,
	datad => \CL|ALT_INV_Selector2~2_combout\,
	datae => \T1|ALT_INV_soe~combout\,
	dataf => \CL|ALT_INV_win~0_combout\,
	combout => \CL|Selector2~3_combout\);

-- Location: FF_X87_Y9_N44
\CL|currentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CL|Selector2~3_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL|currentState.s2~q\);

-- Location: MLABCELL_X87_Y9_N15
\CL|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector0~0_combout\ = ( \CL|currentState.s2~q\ & ( (\reset~input_o\ & \CL|currentState.s0~q\) ) ) # ( !\CL|currentState.s2~q\ & ( (!\CL|currentState.s3~q\ & (((!\rollb~input_o\) # (\CL|currentState.s0~q\)))) # (\CL|currentState.s3~q\ & 
-- (\reset~input_o\ & ((\CL|currentState.s0~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110101110000001111010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_rollb~input_o\,
	datac => \CL|ALT_INV_currentState.s3~q\,
	datad => \CL|ALT_INV_currentState.s0~q\,
	dataf => \CL|ALT_INV_currentState.s2~q\,
	combout => \CL|Selector0~0_combout\);

-- Location: FF_X87_Y9_N17
\CL|currentState.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CL|Selector0~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL|currentState.s0~q\);

-- Location: MLABCELL_X87_Y9_N12
\CL|nextState.s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|nextState.s1~0_combout\ = ( \CL|currentState.s0~q\ & ( (!\rollb~input_o\ & (!\CL|currentState.s4~q\ & \CL|currentState.s1~q\)) ) ) # ( !\CL|currentState.s0~q\ & ( (!\rollb~input_o\ & !\CL|currentState.s4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rollb~input_o\,
	datac => \CL|ALT_INV_currentState.s4~q\,
	datad => \CL|ALT_INV_currentState.s1~q\,
	dataf => \CL|ALT_INV_currentState.s0~q\,
	combout => \CL|nextState.s1~0_combout\);

-- Location: FF_X87_Y9_N14
\CL|currentState.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CL|nextState.s1~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL|currentState.s1~q\);

-- Location: MLABCELL_X87_Y9_N24
\C1|countNext~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|countNext~0_combout\ = ( \CL|currentState.s5~q\ & ( \C1|preCount\(2) & ( (!\rollb~input_o\ & (\reset~input_o\ & \C1|preCount\(1))) ) ) ) # ( !\CL|currentState.s5~q\ & ( \C1|preCount\(2) & ( (!\rollb~input_o\ & (\CL|currentState.s1~q\ & 
-- (\reset~input_o\ & \C1|preCount\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rollb~input_o\,
	datab => \CL|ALT_INV_currentState.s1~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \C1|ALT_INV_preCount\(1),
	datae => \CL|ALT_INV_currentState.s5~q\,
	dataf => \C1|ALT_INV_preCount\(2),
	combout => \C1|countNext~0_combout\);

-- Location: FF_X87_Y9_N26
\C1|countNext\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|countNext~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|countNext~q\);

-- Location: MLABCELL_X84_Y9_N36
\C2|preCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|preCount~0_combout\ = ( \C2|preCount\(1) & ( \C1|countNext~q\ & ( (!\C2|preCount\(2) & !\C2|preCount\(0)) ) ) ) # ( !\C2|preCount\(1) & ( \C1|countNext~q\ & ( \C2|preCount\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|ALT_INV_preCount\(2),
	datac => \C2|ALT_INV_preCount\(0),
	datae => \C2|ALT_INV_preCount\(1),
	dataf => \C1|ALT_INV_countNext~q\,
	combout => \C2|preCount~0_combout\);

-- Location: MLABCELL_X87_Y9_N36
\C2|preCount[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|preCount[0]~1_combout\ = ( \reset~input_o\ & ( \C1|countNext~q\ ) ) # ( !\reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_countNext~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \C2|preCount[0]~1_combout\);

-- Location: FF_X87_Y9_N5
\C2|preCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C2|preCount~0_combout\,
	sload => VCC,
	ena => \C2|preCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|preCount\(1));

-- Location: MLABCELL_X87_Y9_N39
\C2|preCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|preCount~3_combout\ = ( \C2|preCount\(2) & ( (\C1|countNext~q\ & ((!\C2|preCount\(0)) # (\C2|preCount\(1)))) ) ) # ( !\C2|preCount\(2) & ( (\C1|countNext~q\ & !\C2|preCount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_preCount\(1),
	datab => \C1|ALT_INV_countNext~q\,
	datad => \C2|ALT_INV_preCount\(0),
	dataf => \C2|ALT_INV_preCount\(2),
	combout => \C2|preCount~3_combout\);

-- Location: FF_X87_Y9_N41
\C2|preCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C2|preCount~3_combout\,
	ena => \C2|preCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|preCount\(0));

-- Location: MLABCELL_X84_Y9_N9
\C2|preCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|preCount~2_combout\ = ( \C2|preCount\(1) & ( \C1|countNext~q\ & ( (\C2|preCount\(0) & !\C2|preCount\(2)) ) ) ) # ( !\C2|preCount\(1) & ( \C1|countNext~q\ & ( \C2|preCount\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_preCount\(0),
	datac => \C2|ALT_INV_preCount\(2),
	datae => \C2|ALT_INV_preCount\(1),
	dataf => \C1|ALT_INV_countNext~q\,
	combout => \C2|preCount~2_combout\);

-- Location: FF_X87_Y9_N53
\C2|preCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C2|preCount~2_combout\,
	sload => VCC,
	ena => \C2|preCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|preCount\(2));

-- Location: FF_X88_Y9_N7
\PR|regContents[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|Add0~9_sumout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \PR|regContents[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR|regContents\(2));

-- Location: FF_X88_Y9_N4
\PR|regContents[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|Add0~5_sumout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \PR|regContents[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR|regContents\(1));

-- Location: FF_X88_Y9_N1
\PR|regContents[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|Add0~1_sumout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \PR|regContents[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR|regContents\(0));

-- Location: LABCELL_X88_Y9_N54
\CL|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector2~2_combout\ = ( \A1|Add0~1_sumout\ & ( \A1|Add0~9_sumout\ & ( (\PR|regContents\(2) & (\PR|regContents\(0) & (!\PR|regContents\(1) $ (\A1|Add0~5_sumout\)))) ) ) ) # ( !\A1|Add0~1_sumout\ & ( \A1|Add0~9_sumout\ & ( (\PR|regContents\(2) & 
-- (!\PR|regContents\(0) & (!\PR|regContents\(1) $ (\A1|Add0~5_sumout\)))) ) ) ) # ( \A1|Add0~1_sumout\ & ( !\A1|Add0~9_sumout\ & ( (!\PR|regContents\(2) & (\PR|regContents\(0) & (!\PR|regContents\(1) $ (\A1|Add0~5_sumout\)))) ) ) ) # ( !\A1|Add0~1_sumout\ & 
-- ( !\A1|Add0~9_sumout\ & ( (!\PR|regContents\(2) & (!\PR|regContents\(0) & (!\PR|regContents\(1) $ (\A1|Add0~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PR|ALT_INV_regContents\(2),
	datab => \PR|ALT_INV_regContents\(1),
	datac => \A1|ALT_INV_Add0~5_sumout\,
	datad => \PR|ALT_INV_regContents\(0),
	datae => \A1|ALT_INV_Add0~1_sumout\,
	dataf => \A1|ALT_INV_Add0~9_sumout\,
	combout => \CL|Selector2~2_combout\);

-- Location: LABCELL_X85_Y9_N54
\CL|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector4~0_combout\ = ( \rollb~input_o\ & ( \CL|currentState.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_rollb~input_o\,
	dataf => \CL|ALT_INV_currentState.s4~q\,
	combout => \CL|Selector4~0_combout\);

-- Location: LABCELL_X88_Y9_N33
\PR|regContents[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PR|regContents[0]~1_combout\ = ( \A1|Add0~5_sumout\ & ( \A1|Add0~13_sumout\ & ( (\rollb~input_o\ & (\CL|currentState.s1~q\ & ((!\A1|Add0~1_sumout\) # (\A1|Add0~9_sumout\)))) ) ) ) # ( !\A1|Add0~5_sumout\ & ( \A1|Add0~13_sumout\ & ( (\rollb~input_o\ & 
-- (\CL|currentState.s1~q\ & ((!\A1|Add0~9_sumout\) # (\A1|Add0~1_sumout\)))) ) ) ) # ( \A1|Add0~5_sumout\ & ( !\A1|Add0~13_sumout\ & ( (\rollb~input_o\ & (\CL|currentState.s1~q\ & (\A1|Add0~9_sumout\ & !\A1|Add0~1_sumout\))) ) ) ) # ( !\A1|Add0~5_sumout\ & 
-- ( !\A1|Add0~13_sumout\ & ( (\rollb~input_o\ & \CL|currentState.s1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000010000000000010000000100010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rollb~input_o\,
	datab => \CL|ALT_INV_currentState.s1~q\,
	datac => \A1|ALT_INV_Add0~9_sumout\,
	datad => \A1|ALT_INV_Add0~1_sumout\,
	datae => \A1|ALT_INV_Add0~5_sumout\,
	dataf => \A1|ALT_INV_Add0~13_sumout\,
	combout => \PR|regContents[0]~1_combout\);

-- Location: LABCELL_X88_Y9_N24
\CL|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|Selector4~1_combout\ = ( \CP|Equal0~0_combout\ & ( \PR|regContents[0]~1_combout\ ) ) # ( !\CP|Equal0~0_combout\ & ( \PR|regContents[0]~1_combout\ ) ) # ( \CP|Equal0~0_combout\ & ( !\PR|regContents[0]~1_combout\ & ( ((\CL|Selector2~1_combout\ & 
-- !\S3|Equal7~0_combout\)) # (\CL|Selector4~0_combout\) ) ) ) # ( !\CP|Equal0~0_combout\ & ( !\PR|regContents[0]~1_combout\ & ( ((!\CL|Selector2~2_combout\ & (\CL|Selector2~1_combout\ & !\S3|Equal7~0_combout\))) # (\CL|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111111001100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|ALT_INV_Selector2~2_combout\,
	datab => \CL|ALT_INV_Selector2~1_combout\,
	datac => \S3|ALT_INV_Equal7~0_combout\,
	datad => \CL|ALT_INV_Selector4~0_combout\,
	datae => \CP|ALT_INV_Equal0~0_combout\,
	dataf => \PR|ALT_INV_regContents[0]~1_combout\,
	combout => \CL|Selector4~1_combout\);

-- Location: FF_X88_Y9_N26
\CL|currentState.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CL|Selector4~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL|currentState.s4~q\);

-- Location: MLABCELL_X87_Y9_N57
\CL|nextState.s5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|nextState.s5~4_combout\ = ( \CL|currentState.s4~q\ & ( !\rollb~input_o\ ) ) # ( !\CL|currentState.s4~q\ & ( (!\rollb~input_o\ & \CL|currentState.s5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rollb~input_o\,
	datad => \CL|ALT_INV_currentState.s5~q\,
	dataf => \CL|ALT_INV_currentState.s4~q\,
	combout => \CL|nextState.s5~4_combout\);

-- Location: FF_X87_Y9_N59
\CL|currentState.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CL|nextState.s5~4_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CL|currentState.s5~q\);

-- Location: MLABCELL_X87_Y9_N30
\CL|roll~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CL|roll~0_combout\ = ( !\CL|currentState.s1~q\ & ( !\CL|currentState.s5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CL|ALT_INV_currentState.s5~q\,
	dataf => \CL|ALT_INV_currentState.s1~q\,
	combout => \CL|roll~0_combout\);

-- Location: LABCELL_X88_Y9_N18
\C1|preCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|preCount~2_combout\ = ( \C1|preCount\(2) & ( \C1|preCount\(0) & ( (!\rollb~input_o\ & (\reset~input_o\ & (!\CL|roll~0_combout\ & !\C1|preCount\(1)))) ) ) ) # ( !\C1|preCount\(2) & ( \C1|preCount\(0) & ( (!\rollb~input_o\ & (\reset~input_o\ & 
-- (!\CL|roll~0_combout\ & \C1|preCount\(1)))) ) ) ) # ( \C1|preCount\(2) & ( !\C1|preCount\(0) & ( (!\rollb~input_o\ & (\reset~input_o\ & (!\CL|roll~0_combout\ & !\C1|preCount\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000001000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rollb~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \CL|ALT_INV_roll~0_combout\,
	datad => \C1|ALT_INV_preCount\(1),
	datae => \C1|ALT_INV_preCount\(2),
	dataf => \C1|ALT_INV_preCount\(0),
	combout => \C1|preCount~2_combout\);

-- Location: FF_X88_Y9_N20
\C1|preCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|preCount~2_combout\,
	ena => \C1|preCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|preCount\(2));

-- Location: MLABCELL_X87_Y9_N0
\C1|preCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|preCount~3_combout\ = ( !\rollb~input_o\ & ( !\CL|roll~0_combout\ & ( (\reset~input_o\ & ((!\C1|preCount\(0)) # ((\C1|preCount\(2) & \C1|preCount\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \C1|ALT_INV_preCount\(2),
	datac => \C1|ALT_INV_preCount\(0),
	datad => \C1|ALT_INV_preCount\(1),
	datae => \ALT_INV_rollb~input_o\,
	dataf => \CL|ALT_INV_roll~0_combout\,
	combout => \C1|preCount~3_combout\);

-- Location: FF_X88_Y9_N32
\C1|preCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|preCount~3_combout\,
	sload => VCC,
	ena => \C1|preCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|preCount\(0));

-- Location: LABCELL_X88_Y11_N48
\S1|leds[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|leds[7]~0_combout\ = ( \C1|preCount\(2) & ( \C1|preCount\(1) & ( !\C1|preCount\(0) ) ) ) # ( !\C1|preCount\(2) & ( \C1|preCount\(1) ) ) # ( \C1|preCount\(2) & ( !\C1|preCount\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_preCount\(0),
	datae => \C1|ALT_INV_preCount\(2),
	dataf => \C1|ALT_INV_preCount\(1),
	combout => \S1|leds[7]~0_combout\);

-- Location: LABCELL_X88_Y11_N33
\S1|leds[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|leds[6]~1_combout\ = ( \C1|preCount\(2) & ( (\C1|preCount\(0) & \C1|preCount\(1)) ) ) # ( !\C1|preCount\(2) & ( (\C1|preCount\(1)) # (\C1|preCount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000101010101010101111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_preCount\(0),
	datad => \C1|ALT_INV_preCount\(1),
	datae => \C1|ALT_INV_preCount\(2),
	combout => \S1|leds[6]~1_combout\);

-- Location: LABCELL_X88_Y11_N36
\S1|leds[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|leds[5]~2_combout\ = ( \C1|preCount\(2) & ( \C1|preCount\(1) & ( \C1|preCount\(0) ) ) ) # ( !\C1|preCount\(2) & ( \C1|preCount\(1) & ( \C1|preCount\(0) ) ) ) # ( \C1|preCount\(2) & ( !\C1|preCount\(1) ) ) # ( !\C1|preCount\(2) & ( !\C1|preCount\(1) & 
-- ( \C1|preCount\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_preCount\(0),
	datae => \C1|ALT_INV_preCount\(2),
	dataf => \C1|ALT_INV_preCount\(1),
	combout => \S1|leds[5]~2_combout\);

-- Location: LABCELL_X88_Y11_N21
\S1|leds[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|leds[4]~3_combout\ = ( \C1|preCount\(2) & ( !\C1|preCount\(0) $ (\C1|preCount\(1)) ) ) # ( !\C1|preCount\(2) & ( (\C1|preCount\(0) & !\C1|preCount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000101010100101010101010101000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_preCount\(0),
	datad => \C1|ALT_INV_preCount\(1),
	datae => \C1|ALT_INV_preCount\(2),
	combout => \S1|leds[4]~3_combout\);

-- Location: LABCELL_X88_Y11_N0
\S1|leds[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|leds[3]~4_combout\ = ( \C1|preCount\(2) & ( \C1|preCount\(1) ) ) # ( !\C1|preCount\(2) & ( \C1|preCount\(1) & ( \C1|preCount\(0) ) ) ) # ( \C1|preCount\(2) & ( !\C1|preCount\(1) ) ) # ( !\C1|preCount\(2) & ( !\C1|preCount\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_preCount\(0),
	datae => \C1|ALT_INV_preCount\(2),
	dataf => \C1|ALT_INV_preCount\(1),
	combout => \S1|leds[3]~4_combout\);

-- Location: LABCELL_X88_Y11_N45
\S1|leds[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|leds[2]~5_combout\ = ( \C1|preCount\(2) & ( !\C1|preCount\(0) $ (!\C1|preCount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_preCount\(0),
	datad => \C1|ALT_INV_preCount\(1),
	datae => \C1|ALT_INV_preCount\(2),
	combout => \S1|leds[2]~5_combout\);

-- Location: LABCELL_X88_Y11_N24
\S1|leds[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|leds[1]~6_combout\ = ( \C1|preCount\(2) & ( !\C1|preCount\(1) & ( !\C1|preCount\(0) ) ) ) # ( !\C1|preCount\(2) & ( !\C1|preCount\(1) & ( \C1|preCount\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_preCount\(0),
	datae => \C1|ALT_INV_preCount\(2),
	dataf => \C1|ALT_INV_preCount\(1),
	combout => \S1|leds[1]~6_combout\);

-- Location: LABCELL_X88_Y10_N3
\S2|leds[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|leds[7]~0_combout\ = ( \C2|preCount\(0) & ( !\C2|preCount\(2) $ (!\C2|preCount\(1)) ) ) # ( !\C2|preCount\(0) & ( (\C2|preCount\(1)) # (\C2|preCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_preCount\(2),
	datab => \C2|ALT_INV_preCount\(1),
	dataf => \C2|ALT_INV_preCount\(0),
	combout => \S2|leds[7]~0_combout\);

-- Location: LABCELL_X88_Y10_N30
\S2|leds[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|leds[6]~1_combout\ = ( \C2|preCount\(0) & ( (!\C2|preCount\(2)) # (\C2|preCount\(1)) ) ) # ( !\C2|preCount\(0) & ( (!\C2|preCount\(2) & \C2|preCount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_preCount\(2),
	datad => \C2|ALT_INV_preCount\(1),
	dataf => \C2|ALT_INV_preCount\(0),
	combout => \S2|leds[6]~1_combout\);

-- Location: LABCELL_X88_Y10_N51
\S2|leds[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|leds[5]~2_combout\ = ( \C2|preCount\(0) ) # ( !\C2|preCount\(0) & ( (\C2|preCount\(2) & !\C2|preCount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_preCount\(2),
	datab => \C2|ALT_INV_preCount\(1),
	dataf => \C2|ALT_INV_preCount\(0),
	combout => \S2|leds[5]~2_combout\);

-- Location: LABCELL_X88_Y10_N18
\S2|leds[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|leds[4]~3_combout\ = ( \C2|preCount\(0) & ( !\C2|preCount\(2) $ (\C2|preCount\(1)) ) ) # ( !\C2|preCount\(0) & ( (\C2|preCount\(2) & !\C2|preCount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_preCount\(2),
	datab => \C2|ALT_INV_preCount\(1),
	dataf => \C2|ALT_INV_preCount\(0),
	combout => \S2|leds[4]~3_combout\);

-- Location: LABCELL_X88_Y10_N21
\S2|leds[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|leds[3]~4_combout\ = ( \C2|preCount\(0) ) # ( !\C2|preCount\(0) & ( (!\C2|preCount\(1)) # (\C2|preCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_preCount\(2),
	datab => \C2|ALT_INV_preCount\(1),
	dataf => \C2|ALT_INV_preCount\(0),
	combout => \S2|leds[3]~4_combout\);

-- Location: LABCELL_X85_Y9_N24
\S2|leds[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|leds[2]~5_combout\ = ( \C2|preCount\(1) & ( \C2|preCount\(2) & ( !\C2|preCount\(0) ) ) ) # ( !\C2|preCount\(1) & ( \C2|preCount\(2) & ( \C2|preCount\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_preCount\(0),
	datae => \C2|ALT_INV_preCount\(1),
	dataf => \C2|ALT_INV_preCount\(2),
	combout => \S2|leds[2]~5_combout\);

-- Location: LABCELL_X88_Y10_N27
\S2|leds[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|leds[1]~6_combout\ = ( \C2|preCount\(0) & ( (!\C2|preCount\(2) & !\C2|preCount\(1)) ) ) # ( !\C2|preCount\(0) & ( (\C2|preCount\(2) & !\C2|preCount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_preCount\(2),
	datab => \C2|ALT_INV_preCount\(1),
	dataf => \C2|ALT_INV_preCount\(0),
	combout => \S2|leds[1]~6_combout\);

-- Location: LABCELL_X88_Y10_N54
\S3|leds[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|leds[7]~0_combout\ = ( \A1|Add0~9_sumout\ & ( (!\A1|Add0~13_sumout\ & (\A1|Add0~1_sumout\ & \A1|Add0~5_sumout\)) # (\A1|Add0~13_sumout\ & (!\A1|Add0~1_sumout\ & !\A1|Add0~5_sumout\)) ) ) # ( !\A1|Add0~9_sumout\ & ( (!\A1|Add0~13_sumout\ & 
-- !\A1|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~13_sumout\,
	datab => \A1|ALT_INV_Add0~1_sumout\,
	datac => \A1|ALT_INV_Add0~5_sumout\,
	dataf => \A1|ALT_INV_Add0~9_sumout\,
	combout => \S3|leds[7]~0_combout\);

-- Location: LABCELL_X88_Y10_N12
\S3|leds[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|leds[6]~1_combout\ = (!\A1|Add0~1_sumout\ & (!\A1|Add0~13_sumout\ & (!\A1|Add0~9_sumout\ & \A1|Add0~5_sumout\))) # (\A1|Add0~1_sumout\ & (!\A1|Add0~13_sumout\ $ (((\A1|Add0~9_sumout\ & !\A1|Add0~5_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110100010001000011010001000100001101000100010000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~13_sumout\,
	datab => \A1|ALT_INV_Add0~1_sumout\,
	datac => \A1|ALT_INV_Add0~9_sumout\,
	datad => \A1|ALT_INV_Add0~5_sumout\,
	combout => \S3|leds[6]~1_combout\);

-- Location: LABCELL_X88_Y10_N6
\S3|leds[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|leds[5]~2_combout\ = ( \A1|Add0~9_sumout\ & ( (!\A1|Add0~13_sumout\ & ((!\A1|Add0~5_sumout\) # (\A1|Add0~1_sumout\))) ) ) # ( !\A1|Add0~9_sumout\ & ( (\A1|Add0~1_sumout\ & ((!\A1|Add0~5_sumout\) # (!\A1|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~5_sumout\,
	datab => \A1|ALT_INV_Add0~1_sumout\,
	datac => \A1|ALT_INV_Add0~13_sumout\,
	dataf => \A1|ALT_INV_Add0~9_sumout\,
	combout => \S3|leds[5]~2_combout\);

-- Location: LABCELL_X88_Y10_N15
\S3|leds[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|leds[4]~3_combout\ = ( \A1|Add0~9_sumout\ & ( (!\A1|Add0~1_sumout\ & (!\A1|Add0~13_sumout\ & !\A1|Add0~5_sumout\)) # (\A1|Add0~1_sumout\ & ((\A1|Add0~5_sumout\))) ) ) # ( !\A1|Add0~9_sumout\ & ( (!\A1|Add0~1_sumout\ & (\A1|Add0~13_sumout\ & 
-- \A1|Add0~5_sumout\)) # (\A1|Add0~1_sumout\ & ((!\A1|Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010000000011110101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~13_sumout\,
	datac => \A1|ALT_INV_Add0~1_sumout\,
	datad => \A1|ALT_INV_Add0~5_sumout\,
	dataf => \A1|ALT_INV_Add0~9_sumout\,
	combout => \S3|leds[4]~3_combout\);

-- Location: LABCELL_X88_Y10_N36
\S3|leds[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|leds[3]~4_combout\ = (!\A1|Add0~13_sumout\ & (!\A1|Add0~1_sumout\ & (!\A1|Add0~9_sumout\ & \A1|Add0~5_sumout\))) # (\A1|Add0~13_sumout\ & (\A1|Add0~9_sumout\ & ((!\A1|Add0~1_sumout\) # (\A1|Add0~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000101000001001000010100000100100001010000010010000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~13_sumout\,
	datab => \A1|ALT_INV_Add0~1_sumout\,
	datac => \A1|ALT_INV_Add0~9_sumout\,
	datad => \A1|ALT_INV_Add0~5_sumout\,
	combout => \S3|leds[3]~4_combout\);

-- Location: LABCELL_X88_Y10_N39
\S3|leds[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|leds[2]~5_combout\ = ( \A1|Add0~9_sumout\ & ( (!\A1|Add0~13_sumout\ & (!\A1|Add0~1_sumout\ $ (!\A1|Add0~5_sumout\))) # (\A1|Add0~13_sumout\ & ((!\A1|Add0~1_sumout\) # (\A1|Add0~5_sumout\))) ) ) # ( !\A1|Add0~9_sumout\ & ( (\A1|Add0~13_sumout\ & 
-- (\A1|Add0~1_sumout\ & \A1|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~13_sumout\,
	datac => \A1|ALT_INV_Add0~1_sumout\,
	datad => \A1|ALT_INV_Add0~5_sumout\,
	dataf => \A1|ALT_INV_Add0~9_sumout\,
	combout => \S3|leds[2]~5_combout\);

-- Location: LABCELL_X88_Y10_N42
\S3|leds[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|leds[1]~6_combout\ = ( \A1|Add0~9_sumout\ & ( (!\A1|Add0~5_sumout\ & (!\A1|Add0~1_sumout\ $ (\A1|Add0~13_sumout\))) ) ) # ( !\A1|Add0~9_sumout\ & ( (\A1|Add0~1_sumout\ & (!\A1|Add0~5_sumout\ $ (\A1|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|ALT_INV_Add0~5_sumout\,
	datab => \A1|ALT_INV_Add0~1_sumout\,
	datac => \A1|ALT_INV_Add0~13_sumout\,
	dataf => \A1|ALT_INV_Add0~9_sumout\,
	combout => \S3|leds[1]~6_combout\);

-- Location: LABCELL_X27_Y28_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


