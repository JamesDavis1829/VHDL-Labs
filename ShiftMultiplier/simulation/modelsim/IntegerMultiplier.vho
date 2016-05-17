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

-- DATE "04/12/2016 15:17:04"

-- 
-- Device: Altera 5CSEMA5F31C8 Package FBGA896
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

ENTITY 	IntegerMultiplier IS
    PORT (
	clock : IN std_logic;
	multiplier : IN std_logic_vector(7 DOWNTO 0);
	multiplicand : IN std_logic_vector(7 DOWNTO 0);
	start : IN std_logic;
	done : BUFFER std_logic;
	product : BUFFER std_logic_vector(16 DOWNTO 0);
	counter1 : BUFFER std_logic_vector(1 TO 7);
	counter0 : BUFFER std_logic_vector(1 TO 7);
	product3 : BUFFER std_logic_vector(1 TO 7);
	product2 : BUFFER std_logic_vector(1 TO 7);
	product1 : BUFFER std_logic_vector(1 TO 7);
	product0 : BUFFER std_logic_vector(1 TO 7)
	);
END IntegerMultiplier;

-- Design Ports Information
-- done	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[8]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[11]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[12]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[13]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[14]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[15]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[16]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter1[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[7]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[5]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter0[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product3[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product3[6]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product3[5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product3[4]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product3[3]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product3[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product3[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product2[7]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product2[6]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product2[5]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product2[4]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product2[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product2[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product2[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product1[7]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product1[6]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product1[5]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product1[4]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product1[3]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product1[2]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product1[1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product0[7]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product0[6]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product0[5]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product0[4]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product0[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product0[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product0[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[7]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[7]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[5]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[6]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[0]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[1]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[2]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[3]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IntegerMultiplier IS
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
SIGNAL ww_multiplier : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_multiplicand : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_product : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_counter1 : std_logic_vector(1 TO 7);
SIGNAL ww_counter0 : std_logic_vector(1 TO 7);
SIGNAL ww_product3 : std_logic_vector(1 TO 7);
SIGNAL ww_product2 : std_logic_vector(1 TO 7);
SIGNAL ww_product1 : std_logic_vector(1 TO 7);
SIGNAL ww_product0 : std_logic_vector(1 TO 7);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \C1|Add1~1_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \C1|Selector1~0_combout\ : std_logic;
SIGNAL \C1|state.startS~q\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
SIGNAL \C1|count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Add1~3_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \C1|Selector2~0_combout\ : std_logic;
SIGNAL \C1|state.q~q\ : std_logic;
SIGNAL \multiplicand[7]~input_o\ : std_logic;
SIGNAL \multiplicand[0]~input_o\ : std_logic;
SIGNAL \R1|Add0~1_sumout\ : std_logic;
SIGNAL \R1|regContents~0_combout\ : std_logic;
SIGNAL \multiplicand[1]~input_o\ : std_logic;
SIGNAL \R1|Add0~2\ : std_logic;
SIGNAL \R1|Add0~5_sumout\ : std_logic;
SIGNAL \R1|regContents~1_combout\ : std_logic;
SIGNAL \multiplicand[2]~input_o\ : std_logic;
SIGNAL \R1|Add0~6\ : std_logic;
SIGNAL \R1|Add0~9_sumout\ : std_logic;
SIGNAL \R1|regContents~2_combout\ : std_logic;
SIGNAL \multiplicand[3]~input_o\ : std_logic;
SIGNAL \R1|Add0~10\ : std_logic;
SIGNAL \R1|Add0~13_sumout\ : std_logic;
SIGNAL \R1|regContents~3_combout\ : std_logic;
SIGNAL \multiplicand[4]~input_o\ : std_logic;
SIGNAL \R1|Add0~14\ : std_logic;
SIGNAL \R1|Add0~17_sumout\ : std_logic;
SIGNAL \R1|regContents~4_combout\ : std_logic;
SIGNAL \multiplicand[5]~input_o\ : std_logic;
SIGNAL \R1|Add0~18\ : std_logic;
SIGNAL \R1|Add0~21_sumout\ : std_logic;
SIGNAL \R1|regContents~5_combout\ : std_logic;
SIGNAL \multiplicand[6]~input_o\ : std_logic;
SIGNAL \R1|Add0~22\ : std_logic;
SIGNAL \R1|Add0~25_sumout\ : std_logic;
SIGNAL \R1|regContents~6_combout\ : std_logic;
SIGNAL \R1|Add0~26\ : std_logic;
SIGNAL \R1|Add0~29_sumout\ : std_logic;
SIGNAL \multiplier[7]~input_o\ : std_logic;
SIGNAL \multiplier[0]~input_o\ : std_logic;
SIGNAL \R1|Add1~1_sumout\ : std_logic;
SIGNAL \R1|Add2~1_sumout\ : std_logic;
SIGNAL \multiplier[1]~input_o\ : std_logic;
SIGNAL \R1|Add1~2\ : std_logic;
SIGNAL \R1|Add1~5_sumout\ : std_logic;
SIGNAL \R1|Add2~2\ : std_logic;
SIGNAL \R1|Add2~5_sumout\ : std_logic;
SIGNAL \multiplier[2]~input_o\ : std_logic;
SIGNAL \R1|Add1~6\ : std_logic;
SIGNAL \R1|Add1~9_sumout\ : std_logic;
SIGNAL \R1|Add2~6\ : std_logic;
SIGNAL \R1|Add2~9_sumout\ : std_logic;
SIGNAL \multiplier[3]~input_o\ : std_logic;
SIGNAL \R1|Add1~10\ : std_logic;
SIGNAL \R1|Add1~13_sumout\ : std_logic;
SIGNAL \R1|Add2~10\ : std_logic;
SIGNAL \R1|Add2~13_sumout\ : std_logic;
SIGNAL \multiplier[4]~input_o\ : std_logic;
SIGNAL \R1|Add1~14\ : std_logic;
SIGNAL \R1|Add1~17_sumout\ : std_logic;
SIGNAL \R1|Add2~14\ : std_logic;
SIGNAL \R1|Add2~17_sumout\ : std_logic;
SIGNAL \multiplier[5]~input_o\ : std_logic;
SIGNAL \R1|Add1~18\ : std_logic;
SIGNAL \R1|Add1~21_sumout\ : std_logic;
SIGNAL \R1|Add2~18\ : std_logic;
SIGNAL \R1|Add2~21_sumout\ : std_logic;
SIGNAL \multiplier[6]~input_o\ : std_logic;
SIGNAL \R1|Add1~22\ : std_logic;
SIGNAL \R1|Add1~25_sumout\ : std_logic;
SIGNAL \R1|Add2~22\ : std_logic;
SIGNAL \R1|Add2~25_sumout\ : std_logic;
SIGNAL \R1|Add1~26\ : std_logic;
SIGNAL \R1|Add1~29_sumout\ : std_logic;
SIGNAL \R1|Add2~26\ : std_logic;
SIGNAL \R1|Add2~29_sumout\ : std_logic;
SIGNAL \R1|Add2~30\ : std_logic;
SIGNAL \R1|Add2~33_sumout\ : std_logic;
SIGNAL \C1|state.q~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Selector3~0_combout\ : std_logic;
SIGNAL \C1|state.addS~DUPLICATE_q\ : std_logic;
SIGNAL \R1|regContents~9_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \C1|state.addS~q\ : std_logic;
SIGNAL \R1|regContents[15]~8_combout\ : std_logic;
SIGNAL \R1|regContents~7_combout\ : std_logic;
SIGNAL \C1|Selector4~0_combout\ : std_logic;
SIGNAL \C1|state.shiftS~q\ : std_logic;
SIGNAL \C1|state~8_combout\ : std_logic;
SIGNAL \C1|count~0_combout\ : std_logic;
SIGNAL \C1|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Selector0~1_combout\ : std_logic;
SIGNAL \C1|Selector0~0_combout\ : std_logic;
SIGNAL \C1|state.stop~q\ : std_logic;
SIGNAL \R1|Add3~1_sumout\ : std_logic;
SIGNAL \R1|Add3~2\ : std_logic;
SIGNAL \R1|Add3~5_sumout\ : std_logic;
SIGNAL \R1|Add3~6\ : std_logic;
SIGNAL \R1|Add3~9_sumout\ : std_logic;
SIGNAL \R1|Add3~10\ : std_logic;
SIGNAL \R1|Add3~13_sumout\ : std_logic;
SIGNAL \R1|Add3~14\ : std_logic;
SIGNAL \R1|Add3~17_sumout\ : std_logic;
SIGNAL \R1|Add3~18\ : std_logic;
SIGNAL \R1|Add3~21_sumout\ : std_logic;
SIGNAL \R1|Add3~22\ : std_logic;
SIGNAL \R1|Add3~25_sumout\ : std_logic;
SIGNAL \R1|Add3~26\ : std_logic;
SIGNAL \R1|Add3~29_sumout\ : std_logic;
SIGNAL \R1|Add3~30\ : std_logic;
SIGNAL \R1|Add3~33_sumout\ : std_logic;
SIGNAL \R1|Add3~34\ : std_logic;
SIGNAL \R1|Add3~37_sumout\ : std_logic;
SIGNAL \R1|Add3~38\ : std_logic;
SIGNAL \R1|Add3~41_sumout\ : std_logic;
SIGNAL \R1|Add3~42\ : std_logic;
SIGNAL \R1|Add3~45_sumout\ : std_logic;
SIGNAL \R1|Add3~46\ : std_logic;
SIGNAL \R1|Add3~49_sumout\ : std_logic;
SIGNAL \R1|Add3~50\ : std_logic;
SIGNAL \R1|Add3~53_sumout\ : std_logic;
SIGNAL \R1|Add3~54\ : std_logic;
SIGNAL \R1|Add3~57_sumout\ : std_logic;
SIGNAL \R1|Add3~58\ : std_logic;
SIGNAL \R1|Add3~61_sumout\ : std_logic;
SIGNAL \R1|Add3~62\ : std_logic;
SIGNAL \R1|Add3~65_sumout\ : std_logic;
SIGNAL \C1|counter[0]~0_combout\ : std_logic;
SIGNAL \C1|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Add0~1_sumout\ : std_logic;
SIGNAL \C1|Add0~2\ : std_logic;
SIGNAL \C1|Add0~25_sumout\ : std_logic;
SIGNAL \C1|Add0~26\ : std_logic;
SIGNAL \C1|Add0~21_sumout\ : std_logic;
SIGNAL \C1|Add0~22\ : std_logic;
SIGNAL \C1|Add0~17_sumout\ : std_logic;
SIGNAL \C1|Add0~18\ : std_logic;
SIGNAL \C1|Add0~13_sumout\ : std_logic;
SIGNAL \C1|Add0~14\ : std_logic;
SIGNAL \C1|Add0~9_sumout\ : std_logic;
SIGNAL \C1|Add0~10\ : std_logic;
SIGNAL \C1|Add0~5_sumout\ : std_logic;
SIGNAL \S5|output[7]~0_combout\ : std_logic;
SIGNAL \S5|output[6]~1_combout\ : std_logic;
SIGNAL \S5|output[5]~2_combout\ : std_logic;
SIGNAL \S5|output[4]~3_combout\ : std_logic;
SIGNAL \S5|output[3]~4_combout\ : std_logic;
SIGNAL \S5|output[2]~5_combout\ : std_logic;
SIGNAL \S5|output[1]~6_combout\ : std_logic;
SIGNAL \C1|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \S4|output[7]~0_combout\ : std_logic;
SIGNAL \S4|output[6]~1_combout\ : std_logic;
SIGNAL \S4|output[5]~2_combout\ : std_logic;
SIGNAL \S4|output[4]~3_combout\ : std_logic;
SIGNAL \S4|output[3]~4_combout\ : std_logic;
SIGNAL \S4|output[2]~5_combout\ : std_logic;
SIGNAL \S4|output[1]~6_combout\ : std_logic;
SIGNAL \S3|output[7]~0_combout\ : std_logic;
SIGNAL \S3|output[6]~1_combout\ : std_logic;
SIGNAL \S3|output[5]~2_combout\ : std_logic;
SIGNAL \S3|output[4]~3_combout\ : std_logic;
SIGNAL \S3|output[3]~4_combout\ : std_logic;
SIGNAL \S3|output[2]~5_combout\ : std_logic;
SIGNAL \S3|output[1]~6_combout\ : std_logic;
SIGNAL \S2|output[7]~0_combout\ : std_logic;
SIGNAL \S2|output[6]~1_combout\ : std_logic;
SIGNAL \S2|output[5]~2_combout\ : std_logic;
SIGNAL \S2|output[4]~3_combout\ : std_logic;
SIGNAL \S2|output[3]~4_combout\ : std_logic;
SIGNAL \S2|output[2]~5_combout\ : std_logic;
SIGNAL \S2|output[1]~6_combout\ : std_logic;
SIGNAL \S1|output[7]~0_combout\ : std_logic;
SIGNAL \S1|output[6]~1_combout\ : std_logic;
SIGNAL \S1|output[5]~2_combout\ : std_logic;
SIGNAL \S1|output[4]~3_combout\ : std_logic;
SIGNAL \S1|output[3]~4_combout\ : std_logic;
SIGNAL \S1|output[2]~5_combout\ : std_logic;
SIGNAL \S1|output[1]~6_combout\ : std_logic;
SIGNAL \S0|output[7]~0_combout\ : std_logic;
SIGNAL \S0|output[6]~1_combout\ : std_logic;
SIGNAL \S0|output[5]~2_combout\ : std_logic;
SIGNAL \S0|output[4]~3_combout\ : std_logic;
SIGNAL \S0|output[3]~4_combout\ : std_logic;
SIGNAL \S0|output[2]~5_combout\ : std_logic;
SIGNAL \S0|output[1]~6_combout\ : std_logic;
SIGNAL \C1|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R1|regContents\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \C1|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|ALT_INV_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \C1|ALT_INV_state.q~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_state.addS~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_multiplier[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplier[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \C1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \C1|ALT_INV_state.q~q\ : std_logic;
SIGNAL \C1|ALT_INV_state.addS~q\ : std_logic;
SIGNAL \C1|ALT_INV_state.startS~q\ : std_logic;
SIGNAL \R1|ALT_INV_regContents\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \C1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_state.shiftS~q\ : std_logic;
SIGNAL \S4|ALT_INV_output[3]~4_combout\ : std_logic;
SIGNAL \S4|ALT_INV_output[7]~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \S5|ALT_INV_output[3]~4_combout\ : std_logic;
SIGNAL \S5|ALT_INV_output[7]~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_state.stop~q\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \R1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_multiplier <= multiplier;
ww_multiplicand <= multiplicand;
ww_start <= start;
done <= ww_done;
product <= ww_product;
counter1 <= ww_counter1;
counter0 <= ww_counter0;
product3 <= ww_product3;
product2 <= ww_product2;
product1 <= ww_product1;
product0 <= ww_product0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C1|ALT_INV_count\(3) <= NOT \C1|count\(3);
\C1|ALT_INV_count\(4) <= NOT \C1|count\(4);
\C1|ALT_INV_count\(1) <= NOT \C1|count\(1);
\C1|ALT_INV_count\(2) <= NOT \C1|count\(2);
\C1|ALT_INV_Add0~1_sumout\ <= NOT \C1|Add0~1_sumout\;
\R1|ALT_INV_Add3~61_sumout\ <= NOT \R1|Add3~61_sumout\;
\R1|ALT_INV_Add3~57_sumout\ <= NOT \R1|Add3~57_sumout\;
\R1|ALT_INV_Add3~53_sumout\ <= NOT \R1|Add3~53_sumout\;
\R1|ALT_INV_Add3~49_sumout\ <= NOT \R1|Add3~49_sumout\;
\R1|ALT_INV_Add3~45_sumout\ <= NOT \R1|Add3~45_sumout\;
\R1|ALT_INV_Add3~41_sumout\ <= NOT \R1|Add3~41_sumout\;
\R1|ALT_INV_Add3~37_sumout\ <= NOT \R1|Add3~37_sumout\;
\R1|ALT_INV_Add3~33_sumout\ <= NOT \R1|Add3~33_sumout\;
\R1|ALT_INV_Add3~29_sumout\ <= NOT \R1|Add3~29_sumout\;
\R1|ALT_INV_Add3~25_sumout\ <= NOT \R1|Add3~25_sumout\;
\R1|ALT_INV_Add3~21_sumout\ <= NOT \R1|Add3~21_sumout\;
\R1|ALT_INV_Add3~17_sumout\ <= NOT \R1|Add3~17_sumout\;
\R1|ALT_INV_Add3~13_sumout\ <= NOT \R1|Add3~13_sumout\;
\R1|ALT_INV_Add3~9_sumout\ <= NOT \R1|Add3~9_sumout\;
\R1|ALT_INV_Add3~5_sumout\ <= NOT \R1|Add3~5_sumout\;
\R1|ALT_INV_Add3~1_sumout\ <= NOT \R1|Add3~1_sumout\;
\C1|ALT_INV_state.q~DUPLICATE_q\ <= NOT \C1|state.q~DUPLICATE_q\;
\C1|ALT_INV_state.addS~DUPLICATE_q\ <= NOT \C1|state.addS~DUPLICATE_q\;
\C1|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \C1|count[0]~DUPLICATE_q\;
\C1|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \C1|counter[0]~DUPLICATE_q\;
\C1|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \C1|counter[1]~DUPLICATE_q\;
\C1|ALT_INV_count[2]~DUPLICATE_q\ <= NOT \C1|count[2]~DUPLICATE_q\;
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
\ALT_INV_multiplier[6]~input_o\ <= NOT \multiplier[6]~input_o\;
\ALT_INV_multiplier[5]~input_o\ <= NOT \multiplier[5]~input_o\;
\ALT_INV_multiplier[4]~input_o\ <= NOT \multiplier[4]~input_o\;
\ALT_INV_multiplier[3]~input_o\ <= NOT \multiplier[3]~input_o\;
\ALT_INV_multiplier[2]~input_o\ <= NOT \multiplier[2]~input_o\;
\ALT_INV_multiplier[1]~input_o\ <= NOT \multiplier[1]~input_o\;
\ALT_INV_multiplier[0]~input_o\ <= NOT \multiplier[0]~input_o\;
\ALT_INV_multiplicand[6]~input_o\ <= NOT \multiplicand[6]~input_o\;
\ALT_INV_multiplicand[5]~input_o\ <= NOT \multiplicand[5]~input_o\;
\ALT_INV_multiplicand[4]~input_o\ <= NOT \multiplicand[4]~input_o\;
\ALT_INV_multiplicand[3]~input_o\ <= NOT \multiplicand[3]~input_o\;
\ALT_INV_multiplicand[2]~input_o\ <= NOT \multiplicand[2]~input_o\;
\ALT_INV_multiplicand[1]~input_o\ <= NOT \multiplicand[1]~input_o\;
\ALT_INV_multiplicand[0]~input_o\ <= NOT \multiplicand[0]~input_o\;
\ALT_INV_multiplicand[7]~input_o\ <= NOT \multiplicand[7]~input_o\;
\ALT_INV_multiplier[7]~input_o\ <= NOT \multiplier[7]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\C1|ALT_INV_Selector0~1_combout\ <= NOT \C1|Selector0~1_combout\;
\C1|ALT_INV_state.q~q\ <= NOT \C1|state.q~q\;
\C1|ALT_INV_state.addS~q\ <= NOT \C1|state.addS~q\;
\C1|ALT_INV_state.startS~q\ <= NOT \C1|state.startS~q\;
\R1|ALT_INV_regContents\(7) <= NOT \R1|regContents\(7);
\C1|ALT_INV_Equal0~0_combout\ <= NOT \C1|Equal0~0_combout\;
\C1|ALT_INV_state.shiftS~q\ <= NOT \C1|state.shiftS~q\;
\C1|ALT_INV_count\(0) <= NOT \C1|count\(0);
\S4|ALT_INV_output[3]~4_combout\ <= NOT \S4|output[3]~4_combout\;
\S4|ALT_INV_output[7]~0_combout\ <= NOT \S4|output[7]~0_combout\;
\C1|ALT_INV_counter\(0) <= NOT \C1|counter\(0);
\C1|ALT_INV_counter\(1) <= NOT \C1|counter\(1);
\C1|ALT_INV_counter\(2) <= NOT \C1|counter\(2);
\C1|ALT_INV_counter\(3) <= NOT \C1|counter\(3);
\S5|ALT_INV_output[3]~4_combout\ <= NOT \S5|output[3]~4_combout\;
\S5|ALT_INV_output[7]~0_combout\ <= NOT \S5|output[7]~0_combout\;
\C1|ALT_INV_counter\(4) <= NOT \C1|counter\(4);
\C1|ALT_INV_counter\(5) <= NOT \C1|counter\(5);
\C1|ALT_INV_counter\(6) <= NOT \C1|counter\(6);
\C1|ALT_INV_counter\(7) <= NOT \C1|counter\(7);
\C1|ALT_INV_state.stop~q\ <= NOT \C1|state.stop~q\;
\R1|ALT_INV_Add1~29_sumout\ <= NOT \R1|Add1~29_sumout\;
\R1|ALT_INV_Add1~25_sumout\ <= NOT \R1|Add1~25_sumout\;
\R1|ALT_INV_Add1~21_sumout\ <= NOT \R1|Add1~21_sumout\;
\R1|ALT_INV_Add1~17_sumout\ <= NOT \R1|Add1~17_sumout\;
\R1|ALT_INV_Add1~13_sumout\ <= NOT \R1|Add1~13_sumout\;
\R1|ALT_INV_Add1~9_sumout\ <= NOT \R1|Add1~9_sumout\;
\R1|ALT_INV_Add1~5_sumout\ <= NOT \R1|Add1~5_sumout\;
\R1|ALT_INV_Add1~1_sumout\ <= NOT \R1|Add1~1_sumout\;
\R1|ALT_INV_Add2~33_sumout\ <= NOT \R1|Add2~33_sumout\;
\R1|ALT_INV_Add0~29_sumout\ <= NOT \R1|Add0~29_sumout\;
\R1|ALT_INV_Add0~25_sumout\ <= NOT \R1|Add0~25_sumout\;
\R1|ALT_INV_Add0~21_sumout\ <= NOT \R1|Add0~21_sumout\;
\R1|ALT_INV_Add0~17_sumout\ <= NOT \R1|Add0~17_sumout\;
\R1|ALT_INV_Add0~13_sumout\ <= NOT \R1|Add0~13_sumout\;
\R1|ALT_INV_Add0~9_sumout\ <= NOT \R1|Add0~9_sumout\;
\R1|ALT_INV_Add0~5_sumout\ <= NOT \R1|Add0~5_sumout\;
\R1|ALT_INV_Add0~1_sumout\ <= NOT \R1|Add0~1_sumout\;
\R1|ALT_INV_regContents\(16) <= NOT \R1|regContents\(16);
\R1|ALT_INV_regContents\(15) <= NOT \R1|regContents\(15);
\R1|ALT_INV_regContents\(14) <= NOT \R1|regContents\(14);
\R1|ALT_INV_regContents\(13) <= NOT \R1|regContents\(13);
\R1|ALT_INV_regContents\(12) <= NOT \R1|regContents\(12);
\R1|ALT_INV_regContents\(11) <= NOT \R1|regContents\(11);
\R1|ALT_INV_regContents\(10) <= NOT \R1|regContents\(10);
\R1|ALT_INV_regContents\(9) <= NOT \R1|regContents\(9);
\R1|ALT_INV_regContents\(8) <= NOT \R1|regContents\(8);
\R1|ALT_INV_regContents\(6) <= NOT \R1|regContents\(6);
\R1|ALT_INV_regContents\(5) <= NOT \R1|regContents\(5);
\R1|ALT_INV_regContents\(4) <= NOT \R1|regContents\(4);
\R1|ALT_INV_regContents\(3) <= NOT \R1|regContents\(3);
\R1|ALT_INV_regContents\(2) <= NOT \R1|regContents\(2);
\R1|ALT_INV_regContents\(1) <= NOT \R1|regContents\(1);
\R1|ALT_INV_regContents\(0) <= NOT \R1|regContents\(0);

-- Location: IOOBUF_X52_Y0_N2
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|ALT_INV_state.stop~q\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOOBUF_X84_Y0_N2
\product[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~1_sumout\,
	devoe => ww_devoe,
	o => ww_product(0));

-- Location: IOOBUF_X82_Y0_N76
\product[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~5_sumout\,
	devoe => ww_devoe,
	o => ww_product(1));

-- Location: IOOBUF_X84_Y0_N36
\product[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~9_sumout\,
	devoe => ww_devoe,
	o => ww_product(2));

-- Location: IOOBUF_X84_Y0_N53
\product[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~13_sumout\,
	devoe => ww_devoe,
	o => ww_product(3));

-- Location: IOOBUF_X86_Y0_N36
\product[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~17_sumout\,
	devoe => ww_devoe,
	o => ww_product(4));

-- Location: IOOBUF_X88_Y0_N37
\product[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~21_sumout\,
	devoe => ww_devoe,
	o => ww_product(5));

-- Location: IOOBUF_X88_Y0_N3
\product[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~25_sumout\,
	devoe => ww_devoe,
	o => ww_product(6));

-- Location: IOOBUF_X88_Y0_N54
\product[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~29_sumout\,
	devoe => ww_devoe,
	o => ww_product(7));

-- Location: IOOBUF_X89_Y6_N5
\product[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~33_sumout\,
	devoe => ww_devoe,
	o => ww_product(8));

-- Location: IOOBUF_X89_Y21_N22
\product[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~37_sumout\,
	devoe => ww_devoe,
	o => ww_product(9));

-- Location: IOOBUF_X89_Y8_N5
\product[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~41_sumout\,
	devoe => ww_devoe,
	o => ww_product(10));

-- Location: IOOBUF_X89_Y6_N22
\product[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~45_sumout\,
	devoe => ww_devoe,
	o => ww_product(11));

-- Location: IOOBUF_X86_Y0_N53
\product[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~49_sumout\,
	devoe => ww_devoe,
	o => ww_product(12));

-- Location: IOOBUF_X86_Y0_N19
\product[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~53_sumout\,
	devoe => ww_devoe,
	o => ww_product(13));

-- Location: IOOBUF_X86_Y0_N2
\product[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~57_sumout\,
	devoe => ww_devoe,
	o => ww_product(14));

-- Location: IOOBUF_X88_Y0_N20
\product[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~61_sumout\,
	devoe => ww_devoe,
	o => ww_product(15));

-- Location: IOOBUF_X84_Y0_N19
\product[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Add3~65_sumout\,
	devoe => ww_devoe,
	o => ww_product(16));

-- Location: IOOBUF_X89_Y9_N39
\counter1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S5|ALT_INV_output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_counter1(7));

-- Location: IOOBUF_X89_Y23_N5
\counter1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S5|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_counter1(6));

-- Location: IOOBUF_X89_Y9_N56
\counter1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S5|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_counter1(5));

-- Location: IOOBUF_X89_Y23_N22
\counter1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S5|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_counter1(4));

-- Location: IOOBUF_X89_Y25_N22
\counter1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S5|ALT_INV_output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_counter1(3));

-- Location: IOOBUF_X89_Y21_N56
\counter1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S5|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_counter1(2));

-- Location: IOOBUF_X89_Y20_N62
\counter1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S5|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_counter1(1));

-- Location: IOOBUF_X89_Y20_N45
\counter0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|ALT_INV_output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_counter0(7));

-- Location: IOOBUF_X89_Y15_N5
\counter0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_counter0(6));

-- Location: IOOBUF_X89_Y15_N22
\counter0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_counter0(5));

-- Location: IOOBUF_X89_Y8_N22
\counter0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_counter0(4));

-- Location: IOOBUF_X89_Y13_N22
\counter0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|ALT_INV_output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_counter0(3));

-- Location: IOOBUF_X89_Y13_N5
\counter0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_counter0(2));

-- Location: IOOBUF_X89_Y11_N45
\counter0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S4|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_counter0(1));

-- Location: IOOBUF_X89_Y9_N5
\product3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_product3(7));

-- Location: IOOBUF_X89_Y11_N62
\product3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_product3(6));

-- Location: IOOBUF_X89_Y21_N39
\product3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_product3(5));

-- Location: IOOBUF_X89_Y4_N62
\product3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_product3(4));

-- Location: IOOBUF_X89_Y4_N45
\product3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_product3(3));

-- Location: IOOBUF_X89_Y16_N22
\product3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_product3(2));

-- Location: IOOBUF_X89_Y16_N5
\product3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S3|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_product3(1));

-- Location: IOOBUF_X89_Y25_N56
\product2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_product2(7));

-- Location: IOOBUF_X89_Y20_N96
\product2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_product2(6));

-- Location: IOOBUF_X89_Y25_N39
\product2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_product2(5));

-- Location: IOOBUF_X89_Y20_N79
\product2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_product2(4));

-- Location: IOOBUF_X89_Y23_N56
\product2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_product2(3));

-- Location: IOOBUF_X89_Y23_N39
\product2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_product2(2));

-- Location: IOOBUF_X89_Y9_N22
\product2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_product2(1));

-- Location: IOOBUF_X89_Y8_N56
\product1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_product1(7));

-- Location: IOOBUF_X89_Y15_N56
\product1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_product1(6));

-- Location: IOOBUF_X89_Y15_N39
\product1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_product1(5));

-- Location: IOOBUF_X89_Y16_N56
\product1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_product1(4));

-- Location: IOOBUF_X89_Y16_N39
\product1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_product1(3));

-- Location: IOOBUF_X89_Y6_N56
\product1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_product1(2));

-- Location: IOOBUF_X89_Y6_N39
\product1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_product1(1));

-- Location: IOOBUF_X89_Y4_N96
\product0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|output[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_product0(7));

-- Location: IOOBUF_X89_Y13_N39
\product0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|output[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_product0(6));

-- Location: IOOBUF_X89_Y13_N56
\product0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|output[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_product0(5));

-- Location: IOOBUF_X89_Y4_N79
\product0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|output[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_product0(4));

-- Location: IOOBUF_X89_Y11_N96
\product0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|output[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_product0(3));

-- Location: IOOBUF_X89_Y11_N79
\product0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|output[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_product0(2));

-- Location: IOOBUF_X89_Y8_N39
\product0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|output[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_product0(1));

-- Location: IOIBUF_X36_Y0_N1
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

-- Location: LABCELL_X83_Y2_N33
\C1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add1~1_combout\ = ( \C1|count\(0) & ( !\C1|count\(1) ) ) # ( !\C1|count\(0) & ( \C1|count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_count\(1),
	dataf => \C1|ALT_INV_count\(0),
	combout => \C1|Add1~1_combout\);

-- Location: IOIBUF_X12_Y0_N18
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: MLABCELL_X82_Y2_N21
\C1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector1~0_combout\ = ( !\C1|state.stop~q\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	dataf => \C1|ALT_INV_state.stop~q\,
	combout => \C1|Selector1~0_combout\);

-- Location: FF_X82_Y2_N17
\C1|state.startS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|state.startS~q\);

-- Location: FF_X83_Y2_N35
\C1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add1~1_combout\,
	sclr => \C1|state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|count\(1));

-- Location: FF_X83_Y2_N26
\C1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add1~0_combout\,
	sclr => \C1|state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|count\(2));

-- Location: LABCELL_X83_Y2_N24
\C1|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = ( \C1|count\(0) & ( !\C1|count\(1) $ (!\C1|count\(2)) ) ) # ( !\C1|count\(0) & ( \C1|count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_count\(1),
	datad => \C1|ALT_INV_count\(2),
	dataf => \C1|ALT_INV_count\(0),
	combout => \C1|Add1~0_combout\);

-- Location: FF_X83_Y2_N25
\C1|count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add1~0_combout\,
	sclr => \C1|state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|count[2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y2_N30
\C1|Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add1~3_combout\ = ( \C1|count[2]~DUPLICATE_q\ & ( !\C1|count\(3) $ (((!\C1|count[0]~DUPLICATE_q\) # (!\C1|count\(1)))) ) ) # ( !\C1|count[2]~DUPLICATE_q\ & ( \C1|count\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_count[0]~DUPLICATE_q\,
	datac => \C1|ALT_INV_count\(1),
	datad => \C1|ALT_INV_count\(3),
	dataf => \C1|ALT_INV_count[2]~DUPLICATE_q\,
	combout => \C1|Add1~3_combout\);

-- Location: FF_X83_Y2_N32
\C1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add1~3_combout\,
	sclr => \C1|state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|count\(3));

-- Location: LABCELL_X83_Y2_N27
\C1|Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = ( \C1|count[2]~DUPLICATE_q\ & ( !\C1|count\(4) $ (((!\C1|count\(1)) # ((!\C1|count[0]~DUPLICATE_q\) # (!\C1|count\(3))))) ) ) # ( !\C1|count[2]~DUPLICATE_q\ & ( \C1|count\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_count\(1),
	datab => \C1|ALT_INV_count[0]~DUPLICATE_q\,
	datac => \C1|ALT_INV_count\(3),
	datad => \C1|ALT_INV_count\(4),
	dataf => \C1|ALT_INV_count[2]~DUPLICATE_q\,
	combout => \C1|Add1~2_combout\);

-- Location: FF_X83_Y2_N29
\C1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add1~2_combout\,
	sclr => \C1|state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|count\(4));

-- Location: LABCELL_X83_Y2_N45
\C1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = (!\C1|count\(4) & !\C1|count\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_count\(4),
	datac => \C1|ALT_INV_count\(3),
	combout => \C1|Equal0~0_combout\);

-- Location: MLABCELL_X82_Y2_N24
\C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector2~0_combout\ = ( \C1|count[0]~DUPLICATE_q\ & ( \C1|count\(1) & ( ((\C1|state.shiftS~q\ & ((!\C1|Equal0~0_combout\) # (!\C1|count\(2))))) # (\C1|state.startS~q\) ) ) ) # ( !\C1|count[0]~DUPLICATE_q\ & ( \C1|count\(1) & ( (\C1|state.shiftS~q\) # 
-- (\C1|state.startS~q\) ) ) ) # ( \C1|count[0]~DUPLICATE_q\ & ( !\C1|count\(1) & ( (\C1|state.shiftS~q\) # (\C1|state.startS~q\) ) ) ) # ( !\C1|count[0]~DUPLICATE_q\ & ( !\C1|count\(1) & ( (\C1|state.shiftS~q\) # (\C1|state.startS~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Equal0~0_combout\,
	datab => \C1|ALT_INV_state.startS~q\,
	datac => \C1|ALT_INV_state.shiftS~q\,
	datad => \C1|ALT_INV_count\(2),
	datae => \C1|ALT_INV_count[0]~DUPLICATE_q\,
	dataf => \C1|ALT_INV_count\(1),
	combout => \C1|Selector2~0_combout\);

-- Location: FF_X82_Y2_N26
\C1|state.q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|state.q~q\);

-- Location: IOIBUF_X2_Y0_N58
\multiplicand[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(7),
	o => \multiplicand[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\multiplicand[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(0),
	o => \multiplicand[0]~input_o\);

-- Location: LABCELL_X81_Y2_N0
\R1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~1_sumout\ = SUM(( !\multiplicand[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \R1|Add0~2\ = CARRY(( !\multiplicand[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[0]~input_o\,
	cin => GND,
	sumout => \R1|Add0~1_sumout\,
	cout => \R1|Add0~2\);

-- Location: LABCELL_X81_Y2_N24
\R1|regContents~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~0_combout\ = ( \multiplicand[0]~input_o\ & ( (!\multiplicand[7]~input_o\) # (\R1|Add0~1_sumout\) ) ) # ( !\multiplicand[0]~input_o\ & ( (\multiplicand[7]~input_o\ & \R1|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \R1|ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_multiplicand[0]~input_o\,
	combout => \R1|regContents~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\multiplicand[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(1),
	o => \multiplicand[1]~input_o\);

-- Location: LABCELL_X81_Y2_N3
\R1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~5_sumout\ = SUM(( !\multiplicand[1]~input_o\ ) + ( GND ) + ( \R1|Add0~2\ ))
-- \R1|Add0~6\ = CARRY(( !\multiplicand[1]~input_o\ ) + ( GND ) + ( \R1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[1]~input_o\,
	cin => \R1|Add0~2\,
	sumout => \R1|Add0~5_sumout\,
	cout => \R1|Add0~6\);

-- Location: LABCELL_X81_Y2_N27
\R1|regContents~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~1_combout\ = (!\multiplicand[7]~input_o\ & ((\multiplicand[1]~input_o\))) # (\multiplicand[7]~input_o\ & (\R1|Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \ALT_INV_multiplicand[1]~input_o\,
	combout => \R1|regContents~1_combout\);

-- Location: IOIBUF_X2_Y0_N41
\multiplicand[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(2),
	o => \multiplicand[2]~input_o\);

-- Location: LABCELL_X81_Y2_N6
\R1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~9_sumout\ = SUM(( !\multiplicand[2]~input_o\ ) + ( GND ) + ( \R1|Add0~6\ ))
-- \R1|Add0~10\ = CARRY(( !\multiplicand[2]~input_o\ ) + ( GND ) + ( \R1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[2]~input_o\,
	cin => \R1|Add0~6\,
	sumout => \R1|Add0~9_sumout\,
	cout => \R1|Add0~10\);

-- Location: LABCELL_X81_Y2_N54
\R1|regContents~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~2_combout\ = ( \R1|Add0~9_sumout\ & ( (\multiplicand[2]~input_o\) # (\multiplicand[7]~input_o\) ) ) # ( !\R1|Add0~9_sumout\ & ( (!\multiplicand[7]~input_o\ & \multiplicand[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \ALT_INV_multiplicand[2]~input_o\,
	dataf => \R1|ALT_INV_Add0~9_sumout\,
	combout => \R1|regContents~2_combout\);

-- Location: IOIBUF_X16_Y0_N18
\multiplicand[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(3),
	o => \multiplicand[3]~input_o\);

-- Location: LABCELL_X81_Y2_N9
\R1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~13_sumout\ = SUM(( !\multiplicand[3]~input_o\ ) + ( GND ) + ( \R1|Add0~10\ ))
-- \R1|Add0~14\ = CARRY(( !\multiplicand[3]~input_o\ ) + ( GND ) + ( \R1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[3]~input_o\,
	cin => \R1|Add0~10\,
	sumout => \R1|Add0~13_sumout\,
	cout => \R1|Add0~14\);

-- Location: LABCELL_X81_Y2_N39
\R1|regContents~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~3_combout\ = (!\multiplicand[7]~input_o\ & (\multiplicand[3]~input_o\)) # (\multiplicand[7]~input_o\ & ((\R1|Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[3]~input_o\,
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \R1|ALT_INV_Add0~13_sumout\,
	combout => \R1|regContents~3_combout\);

-- Location: IOIBUF_X4_Y0_N35
\multiplicand[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(4),
	o => \multiplicand[4]~input_o\);

-- Location: LABCELL_X81_Y2_N12
\R1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~17_sumout\ = SUM(( !\multiplicand[4]~input_o\ ) + ( GND ) + ( \R1|Add0~14\ ))
-- \R1|Add0~18\ = CARRY(( !\multiplicand[4]~input_o\ ) + ( GND ) + ( \R1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[4]~input_o\,
	cin => \R1|Add0~14\,
	sumout => \R1|Add0~17_sumout\,
	cout => \R1|Add0~18\);

-- Location: LABCELL_X81_Y2_N36
\R1|regContents~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~4_combout\ = (!\multiplicand[7]~input_o\ & (\multiplicand[4]~input_o\)) # (\multiplicand[7]~input_o\ & ((\R1|Add0~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \ALT_INV_multiplicand[4]~input_o\,
	datad => \R1|ALT_INV_Add0~17_sumout\,
	combout => \R1|regContents~4_combout\);

-- Location: IOIBUF_X4_Y0_N1
\multiplicand[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(5),
	o => \multiplicand[5]~input_o\);

-- Location: LABCELL_X81_Y2_N15
\R1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~21_sumout\ = SUM(( !\multiplicand[5]~input_o\ ) + ( GND ) + ( \R1|Add0~18\ ))
-- \R1|Add0~22\ = CARRY(( !\multiplicand[5]~input_o\ ) + ( GND ) + ( \R1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[5]~input_o\,
	cin => \R1|Add0~18\,
	sumout => \R1|Add0~21_sumout\,
	cout => \R1|Add0~22\);

-- Location: LABCELL_X81_Y2_N33
\R1|regContents~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~5_combout\ = (!\multiplicand[7]~input_o\ & ((\multiplicand[5]~input_o\))) # (\multiplicand[7]~input_o\ & (\R1|Add0~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \R1|ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_multiplicand[5]~input_o\,
	combout => \R1|regContents~5_combout\);

-- Location: IOIBUF_X4_Y0_N18
\multiplicand[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(6),
	o => \multiplicand[6]~input_o\);

-- Location: LABCELL_X81_Y2_N18
\R1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~25_sumout\ = SUM(( !\multiplicand[6]~input_o\ ) + ( GND ) + ( \R1|Add0~22\ ))
-- \R1|Add0~26\ = CARRY(( !\multiplicand[6]~input_o\ ) + ( GND ) + ( \R1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[6]~input_o\,
	cin => \R1|Add0~22\,
	sumout => \R1|Add0~25_sumout\,
	cout => \R1|Add0~26\);

-- Location: LABCELL_X81_Y2_N30
\R1|regContents~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~6_combout\ = (!\multiplicand[7]~input_o\ & ((\multiplicand[6]~input_o\))) # (\multiplicand[7]~input_o\ & (\R1|Add0~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \R1|ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_multiplicand[6]~input_o\,
	combout => \R1|regContents~6_combout\);

-- Location: LABCELL_X81_Y2_N21
\R1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add0~29_sumout\ = SUM(( !\multiplicand[7]~input_o\ ) + ( GND ) + ( \R1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplicand[7]~input_o\,
	cin => \R1|Add0~26\,
	sumout => \R1|Add0~29_sumout\);

-- Location: IOIBUF_X64_Y0_N1
\multiplier[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(7),
	o => \multiplier[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\multiplier[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(0),
	o => \multiplier[0]~input_o\);

-- Location: LABCELL_X83_Y2_N0
\R1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~1_sumout\ = SUM(( !\multiplier[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \R1|Add1~2\ = CARRY(( !\multiplier[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplier[0]~input_o\,
	cin => GND,
	sumout => \R1|Add1~1_sumout\,
	cout => \R1|Add1~2\);

-- Location: MLABCELL_X82_Y2_N30
\R1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~1_sumout\ = SUM(( \R1|regContents\(8) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[0]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~1_sumout\))) ) + ( !VCC ))
-- \R1|Add2~2\ = CARRY(( \R1|regContents\(8) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[0]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~1_sumout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datab => \ALT_INV_multiplier[0]~input_o\,
	datac => \R1|ALT_INV_Add1~1_sumout\,
	datad => \R1|ALT_INV_regContents\(8),
	cin => GND,
	sumout => \R1|Add2~1_sumout\,
	cout => \R1|Add2~2\);

-- Location: IOIBUF_X60_Y0_N52
\multiplier[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(1),
	o => \multiplier[1]~input_o\);

-- Location: LABCELL_X83_Y2_N3
\R1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~5_sumout\ = SUM(( !\multiplier[1]~input_o\ ) + ( GND ) + ( \R1|Add1~2\ ))
-- \R1|Add1~6\ = CARRY(( !\multiplier[1]~input_o\ ) + ( GND ) + ( \R1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplier[1]~input_o\,
	cin => \R1|Add1~2\,
	sumout => \R1|Add1~5_sumout\,
	cout => \R1|Add1~6\);

-- Location: MLABCELL_X82_Y2_N33
\R1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~5_sumout\ = SUM(( \R1|regContents\(9) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[1]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~5_sumout\))) ) + ( \R1|Add2~2\ ))
-- \R1|Add2~6\ = CARRY(( \R1|regContents\(9) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[1]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~5_sumout\))) ) + ( \R1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datac => \ALT_INV_multiplier[1]~input_o\,
	datad => \R1|ALT_INV_regContents\(9),
	dataf => \R1|ALT_INV_Add1~5_sumout\,
	cin => \R1|Add2~2\,
	sumout => \R1|Add2~5_sumout\,
	cout => \R1|Add2~6\);

-- Location: IOIBUF_X58_Y0_N58
\multiplier[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(2),
	o => \multiplier[2]~input_o\);

-- Location: LABCELL_X83_Y2_N6
\R1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~9_sumout\ = SUM(( !\multiplier[2]~input_o\ ) + ( GND ) + ( \R1|Add1~6\ ))
-- \R1|Add1~10\ = CARRY(( !\multiplier[2]~input_o\ ) + ( GND ) + ( \R1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplier[2]~input_o\,
	cin => \R1|Add1~6\,
	sumout => \R1|Add1~9_sumout\,
	cout => \R1|Add1~10\);

-- Location: MLABCELL_X82_Y2_N36
\R1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~9_sumout\ = SUM(( \R1|regContents\(10) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[2]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~9_sumout\))) ) + ( \R1|Add2~6\ ))
-- \R1|Add2~10\ = CARRY(( \R1|regContents\(10) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[2]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~9_sumout\))) ) + ( \R1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datab => \ALT_INV_multiplier[2]~input_o\,
	datac => \R1|ALT_INV_Add1~9_sumout\,
	datad => \R1|ALT_INV_regContents\(10),
	cin => \R1|Add2~6\,
	sumout => \R1|Add2~9_sumout\,
	cout => \R1|Add2~10\);

-- Location: IOIBUF_X54_Y0_N52
\multiplier[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(3),
	o => \multiplier[3]~input_o\);

-- Location: LABCELL_X83_Y2_N9
\R1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~13_sumout\ = SUM(( !\multiplier[3]~input_o\ ) + ( GND ) + ( \R1|Add1~10\ ))
-- \R1|Add1~14\ = CARRY(( !\multiplier[3]~input_o\ ) + ( GND ) + ( \R1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_multiplier[3]~input_o\,
	cin => \R1|Add1~10\,
	sumout => \R1|Add1~13_sumout\,
	cout => \R1|Add1~14\);

-- Location: MLABCELL_X82_Y2_N39
\R1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~13_sumout\ = SUM(( \R1|regContents\(11) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[3]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~13_sumout\))) ) + ( \R1|Add2~10\ ))
-- \R1|Add2~14\ = CARRY(( \R1|regContents\(11) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[3]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~13_sumout\))) ) + ( \R1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datac => \ALT_INV_multiplier[3]~input_o\,
	datad => \R1|ALT_INV_regContents\(11),
	dataf => \R1|ALT_INV_Add1~13_sumout\,
	cin => \R1|Add2~10\,
	sumout => \R1|Add2~13_sumout\,
	cout => \R1|Add2~14\);

-- Location: IOIBUF_X72_Y0_N1
\multiplier[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(4),
	o => \multiplier[4]~input_o\);

-- Location: LABCELL_X83_Y2_N12
\R1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~17_sumout\ = SUM(( !\multiplier[4]~input_o\ ) + ( GND ) + ( \R1|Add1~14\ ))
-- \R1|Add1~18\ = CARRY(( !\multiplier[4]~input_o\ ) + ( GND ) + ( \R1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplier[4]~input_o\,
	cin => \R1|Add1~14\,
	sumout => \R1|Add1~17_sumout\,
	cout => \R1|Add1~18\);

-- Location: MLABCELL_X82_Y2_N42
\R1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~17_sumout\ = SUM(( \R1|regContents\(12) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[4]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~17_sumout\))) ) + ( \R1|Add2~14\ ))
-- \R1|Add2~18\ = CARRY(( \R1|regContents\(12) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[4]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~17_sumout\))) ) + ( \R1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datac => \ALT_INV_multiplier[4]~input_o\,
	datad => \R1|ALT_INV_regContents\(12),
	dataf => \R1|ALT_INV_Add1~17_sumout\,
	cin => \R1|Add2~14\,
	sumout => \R1|Add2~17_sumout\,
	cout => \R1|Add2~18\);

-- Location: IOIBUF_X64_Y0_N18
\multiplier[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(5),
	o => \multiplier[5]~input_o\);

-- Location: LABCELL_X83_Y2_N15
\R1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~21_sumout\ = SUM(( !\multiplier[5]~input_o\ ) + ( GND ) + ( \R1|Add1~18\ ))
-- \R1|Add1~22\ = CARRY(( !\multiplier[5]~input_o\ ) + ( GND ) + ( \R1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[5]~input_o\,
	cin => \R1|Add1~18\,
	sumout => \R1|Add1~21_sumout\,
	cout => \R1|Add1~22\);

-- Location: MLABCELL_X82_Y2_N45
\R1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~21_sumout\ = SUM(( \R1|regContents\(13) ) + ( (!\multiplier[7]~input_o\ & ((\multiplier[5]~input_o\))) # (\multiplier[7]~input_o\ & (\R1|Add1~21_sumout\)) ) + ( \R1|Add2~18\ ))
-- \R1|Add2~22\ = CARRY(( \R1|regContents\(13) ) + ( (!\multiplier[7]~input_o\ & ((\multiplier[5]~input_o\))) # (\multiplier[7]~input_o\ & (\R1|Add1~21_sumout\)) ) + ( \R1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datab => \R1|ALT_INV_Add1~21_sumout\,
	datac => \ALT_INV_multiplier[5]~input_o\,
	datad => \R1|ALT_INV_regContents\(13),
	cin => \R1|Add2~18\,
	sumout => \R1|Add2~21_sumout\,
	cout => \R1|Add2~22\);

-- Location: IOIBUF_X68_Y0_N1
\multiplier[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(6),
	o => \multiplier[6]~input_o\);

-- Location: LABCELL_X83_Y2_N18
\R1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~25_sumout\ = SUM(( !\multiplier[6]~input_o\ ) + ( GND ) + ( \R1|Add1~22\ ))
-- \R1|Add1~26\ = CARRY(( !\multiplier[6]~input_o\ ) + ( GND ) + ( \R1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_multiplier[6]~input_o\,
	cin => \R1|Add1~22\,
	sumout => \R1|Add1~25_sumout\,
	cout => \R1|Add1~26\);

-- Location: MLABCELL_X82_Y2_N48
\R1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~25_sumout\ = SUM(( \R1|regContents\(14) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[6]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~25_sumout\))) ) + ( \R1|Add2~22\ ))
-- \R1|Add2~26\ = CARRY(( \R1|regContents\(14) ) + ( (!\multiplier[7]~input_o\ & (\multiplier[6]~input_o\)) # (\multiplier[7]~input_o\ & ((\R1|Add1~25_sumout\))) ) + ( \R1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datab => \ALT_INV_multiplier[6]~input_o\,
	datac => \R1|ALT_INV_Add1~25_sumout\,
	datad => \R1|ALT_INV_regContents\(14),
	cin => \R1|Add2~22\,
	sumout => \R1|Add2~25_sumout\,
	cout => \R1|Add2~26\);

-- Location: LABCELL_X83_Y2_N21
\R1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add1~29_sumout\ = SUM(( !\multiplier[7]~input_o\ ) + ( GND ) + ( \R1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	cin => \R1|Add1~26\,
	sumout => \R1|Add1~29_sumout\);

-- Location: MLABCELL_X82_Y2_N51
\R1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~29_sumout\ = SUM(( \R1|regContents\(15) ) + ( (\multiplier[7]~input_o\ & \R1|Add1~29_sumout\) ) + ( \R1|Add2~26\ ))
-- \R1|Add2~30\ = CARRY(( \R1|regContents\(15) ) + ( (\multiplier[7]~input_o\ & \R1|Add1~29_sumout\) ) + ( \R1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplier[7]~input_o\,
	datad => \R1|ALT_INV_regContents\(15),
	dataf => \R1|ALT_INV_Add1~29_sumout\,
	cin => \R1|Add2~26\,
	sumout => \R1|Add2~29_sumout\,
	cout => \R1|Add2~30\);

-- Location: MLABCELL_X82_Y2_N54
\R1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add2~33_sumout\ = SUM(( \R1|regContents\(16) ) + ( GND ) + ( \R1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \R1|ALT_INV_regContents\(16),
	cin => \R1|Add2~30\,
	sumout => \R1|Add2~33_sumout\);

-- Location: FF_X82_Y2_N25
\C1|state.q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|state.q~DUPLICATE_q\);

-- Location: LABCELL_X81_Y2_N57
\C1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector3~0_combout\ = ( \R1|regContents\(0) & ( \C1|state.q~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_state.q~DUPLICATE_q\,
	dataf => \R1|ALT_INV_regContents\(0),
	combout => \C1|Selector3~0_combout\);

-- Location: FF_X82_Y2_N28
\C1|state.addS~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|state.addS~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y2_N0
\R1|regContents~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~9_combout\ = ( \C1|state.addS~DUPLICATE_q\ & ( \R1|Add2~33_sumout\ ) ) # ( !\C1|state.addS~DUPLICATE_q\ & ( \R1|regContents\(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \R1|ALT_INV_Add2~33_sumout\,
	datad => \R1|ALT_INV_regContents\(16),
	dataf => \C1|ALT_INV_state.addS~DUPLICATE_q\,
	combout => \R1|regContents~9_combout\);

-- Location: LABCELL_X81_Y2_N42
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X82_Y2_N2
\R1|regContents[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~9_combout\,
	asdata => \~GND~combout\,
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(16));

-- Location: FF_X82_Y2_N29
\C1|state.addS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|state.addS~q\);

-- Location: MLABCELL_X82_Y2_N3
\R1|regContents[15]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents[15]~8_combout\ = ( \C1|state.shiftS~q\ ) # ( !\C1|state.shiftS~q\ & ( (\C1|state.addS~q\) # (\C1|state.startS~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_state.startS~q\,
	datad => \C1|ALT_INV_state.addS~q\,
	dataf => \C1|ALT_INV_state.shiftS~q\,
	combout => \R1|regContents[15]~8_combout\);

-- Location: FF_X82_Y2_N53
\R1|regContents[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~29_sumout\,
	asdata => \R1|regContents\(16),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(15));

-- Location: FF_X82_Y2_N50
\R1|regContents[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~25_sumout\,
	asdata => \R1|regContents\(15),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(14));

-- Location: FF_X82_Y2_N47
\R1|regContents[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~21_sumout\,
	asdata => \R1|regContents\(14),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(13));

-- Location: FF_X82_Y2_N44
\R1|regContents[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~17_sumout\,
	asdata => \R1|regContents\(13),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(12));

-- Location: FF_X82_Y2_N41
\R1|regContents[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~13_sumout\,
	asdata => \R1|regContents\(12),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(11));

-- Location: FF_X82_Y2_N38
\R1|regContents[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~9_sumout\,
	asdata => \R1|regContents\(11),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(10));

-- Location: FF_X82_Y2_N35
\R1|regContents[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~5_sumout\,
	asdata => \R1|regContents\(10),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(9));

-- Location: FF_X82_Y2_N32
\R1|regContents[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|Add2~1_sumout\,
	asdata => \R1|regContents\(9),
	sclr => \C1|state.startS~q\,
	sload => \C1|state.shiftS~q\,
	ena => \R1|regContents[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(8));

-- Location: LABCELL_X81_Y2_N48
\R1|regContents~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|regContents~7_combout\ = ( \R1|regContents\(7) & ( \R1|regContents\(8) & ( (!\C1|state.startS~q\) # ((\multiplicand[7]~input_o\ & \R1|Add0~29_sumout\)) ) ) ) # ( !\R1|regContents\(7) & ( \R1|regContents\(8) & ( (!\C1|state.startS~q\ & 
-- (\C1|state.shiftS~q\)) # (\C1|state.startS~q\ & (((\multiplicand[7]~input_o\ & \R1|Add0~29_sumout\)))) ) ) ) # ( \R1|regContents\(7) & ( !\R1|regContents\(8) & ( (!\C1|state.startS~q\ & (!\C1|state.shiftS~q\)) # (\C1|state.startS~q\ & 
-- (((\multiplicand[7]~input_o\ & \R1|Add0~29_sumout\)))) ) ) ) # ( !\R1|regContents\(7) & ( !\R1|regContents\(8) & ( (\multiplicand[7]~input_o\ & (\C1|state.startS~q\ & \R1|Add0~29_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011101000001010001101010000010100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_state.shiftS~q\,
	datab => \ALT_INV_multiplicand[7]~input_o\,
	datac => \C1|ALT_INV_state.startS~q\,
	datad => \R1|ALT_INV_Add0~29_sumout\,
	datae => \R1|ALT_INV_regContents\(7),
	dataf => \R1|ALT_INV_regContents\(8),
	combout => \R1|regContents~7_combout\);

-- Location: FF_X81_Y2_N50
\R1|regContents[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(7));

-- Location: FF_X81_Y2_N32
\R1|regContents[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~6_combout\,
	asdata => \R1|regContents\(7),
	sload => \C1|ALT_INV_state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(6));

-- Location: FF_X81_Y2_N35
\R1|regContents[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~5_combout\,
	asdata => \R1|regContents\(6),
	sload => \C1|ALT_INV_state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(5));

-- Location: FF_X81_Y2_N38
\R1|regContents[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~4_combout\,
	asdata => \R1|regContents\(5),
	sload => \C1|ALT_INV_state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(4));

-- Location: FF_X81_Y2_N41
\R1|regContents[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~3_combout\,
	asdata => \R1|regContents\(4),
	sload => \C1|ALT_INV_state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(3));

-- Location: FF_X81_Y2_N56
\R1|regContents[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~2_combout\,
	asdata => \R1|regContents\(3),
	sload => \C1|ALT_INV_state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(2));

-- Location: FF_X81_Y2_N29
\R1|regContents[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~1_combout\,
	asdata => \R1|regContents\(2),
	sload => \C1|ALT_INV_state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(1));

-- Location: FF_X81_Y2_N26
\R1|regContents[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \R1|regContents~0_combout\,
	asdata => \R1|regContents\(1),
	sload => \C1|ALT_INV_state.startS~q\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|regContents\(0));

-- Location: MLABCELL_X82_Y2_N9
\C1|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector4~0_combout\ = ( \C1|state.addS~DUPLICATE_q\ ) # ( !\C1|state.addS~DUPLICATE_q\ & ( (\C1|state.q~q\ & !\R1|regContents\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_state.q~q\,
	datac => \R1|ALT_INV_regContents\(0),
	dataf => \C1|ALT_INV_state.addS~DUPLICATE_q\,
	combout => \C1|Selector4~0_combout\);

-- Location: FF_X82_Y2_N11
\C1|state.shiftS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|state.shiftS~q\);

-- Location: MLABCELL_X82_Y2_N18
\C1|state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|state~8_combout\ = ( \C1|state.startS~q\ ) # ( !\C1|state.startS~q\ & ( \C1|state.shiftS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_state.shiftS~q\,
	dataf => \C1|ALT_INV_state.startS~q\,
	combout => \C1|state~8_combout\);

-- Location: FF_X83_Y2_N43
\C1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|count~0_combout\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|count\(0));

-- Location: LABCELL_X83_Y2_N42
\C1|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|count~0_combout\ = ( !\C1|state.startS~q\ & ( !\C1|count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_count\(0),
	dataf => \C1|ALT_INV_state.startS~q\,
	combout => \C1|count~0_combout\);

-- Location: FF_X83_Y2_N44
\C1|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|count~0_combout\,
	ena => \C1|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|count[0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y2_N6
\C1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector0~1_combout\ = ( !\C1|count\(3) & ( (\C1|count\(1) & !\C1|count\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_count\(1),
	datad => \C1|ALT_INV_count\(4),
	dataf => \C1|ALT_INV_count\(3),
	combout => \C1|Selector0~1_combout\);

-- Location: MLABCELL_X82_Y2_N12
\C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector0~0_combout\ = ( \C1|state.stop~q\ & ( \C1|count\(2) & ( (!\C1|count[0]~DUPLICATE_q\) # ((!\C1|Selector0~1_combout\) # (!\C1|state.shiftS~q\)) ) ) ) # ( !\C1|state.stop~q\ & ( \C1|count\(2) & ( (\start~input_o\ & ((!\C1|count[0]~DUPLICATE_q\) 
-- # ((!\C1|Selector0~1_combout\) # (!\C1|state.shiftS~q\)))) ) ) ) # ( \C1|state.stop~q\ & ( !\C1|count\(2) ) ) # ( !\C1|state.stop~q\ & ( !\C1|count\(2) & ( \start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_count[0]~DUPLICATE_q\,
	datab => \C1|ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_start~input_o\,
	datad => \C1|ALT_INV_state.shiftS~q\,
	datae => \C1|ALT_INV_state.stop~q\,
	dataf => \C1|ALT_INV_count\(2),
	combout => \C1|Selector0~0_combout\);

-- Location: FF_X82_Y2_N14
\C1|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|state.stop~q\);

-- Location: LABCELL_X85_Y2_N0
\R1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~1_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\) ) + ( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(0))) ) + ( !VCC ))
-- \R1|Add3~2\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\) ) + ( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(0))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110010110011000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	dataf => \R1|ALT_INV_regContents\(0),
	cin => GND,
	sumout => \R1|Add3~1_sumout\,
	cout => \R1|Add3~2\);

-- Location: LABCELL_X85_Y2_N3
\R1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~5_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(1))) ) + ( GND ) + ( \R1|Add3~2\ ))
-- \R1|Add3~6\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(1))) ) + ( GND ) + ( \R1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(1),
	cin => \R1|Add3~2\,
	sumout => \R1|Add3~5_sumout\,
	cout => \R1|Add3~6\);

-- Location: LABCELL_X85_Y2_N6
\R1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~9_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(2))) ) + ( GND ) + ( \R1|Add3~6\ ))
-- \R1|Add3~10\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(2))) ) + ( GND ) + ( \R1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(2),
	cin => \R1|Add3~6\,
	sumout => \R1|Add3~9_sumout\,
	cout => \R1|Add3~10\);

-- Location: LABCELL_X85_Y2_N9
\R1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~13_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(3))) ) + ( GND ) + ( \R1|Add3~10\ ))
-- \R1|Add3~14\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(3))) ) + ( GND ) + ( \R1|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(3),
	cin => \R1|Add3~10\,
	sumout => \R1|Add3~13_sumout\,
	cout => \R1|Add3~14\);

-- Location: LABCELL_X85_Y2_N12
\R1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~17_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(4))) ) + ( GND ) + ( \R1|Add3~14\ ))
-- \R1|Add3~18\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(4))) ) + ( GND ) + ( \R1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(4),
	cin => \R1|Add3~14\,
	sumout => \R1|Add3~17_sumout\,
	cout => \R1|Add3~18\);

-- Location: LABCELL_X85_Y2_N15
\R1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~21_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(5))) ) + ( GND ) + ( \R1|Add3~18\ ))
-- \R1|Add3~22\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(5))) ) + ( GND ) + ( \R1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(5),
	cin => \R1|Add3~18\,
	sumout => \R1|Add3~21_sumout\,
	cout => \R1|Add3~22\);

-- Location: LABCELL_X85_Y2_N18
\R1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~25_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(6))) ) + ( GND ) + ( \R1|Add3~22\ ))
-- \R1|Add3~26\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(6))) ) + ( GND ) + ( \R1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(6),
	cin => \R1|Add3~22\,
	sumout => \R1|Add3~25_sumout\,
	cout => \R1|Add3~26\);

-- Location: LABCELL_X85_Y2_N21
\R1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~29_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(7))) ) + ( GND ) + ( \R1|Add3~26\ ))
-- \R1|Add3~30\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(7))) ) + ( GND ) + ( \R1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datad => \R1|ALT_INV_regContents\(7),
	cin => \R1|Add3~26\,
	sumout => \R1|Add3~29_sumout\,
	cout => \R1|Add3~30\);

-- Location: LABCELL_X85_Y2_N24
\R1|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~33_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(8))) ) + ( GND ) + ( \R1|Add3~30\ ))
-- \R1|Add3~34\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(8))) ) + ( GND ) + ( \R1|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(8),
	cin => \R1|Add3~30\,
	sumout => \R1|Add3~33_sumout\,
	cout => \R1|Add3~34\);

-- Location: LABCELL_X85_Y2_N27
\R1|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~37_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(9))) ) + ( GND ) + ( \R1|Add3~34\ ))
-- \R1|Add3~38\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(9))) ) + ( GND ) + ( \R1|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(9),
	cin => \R1|Add3~34\,
	sumout => \R1|Add3~37_sumout\,
	cout => \R1|Add3~38\);

-- Location: LABCELL_X85_Y2_N30
\R1|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~41_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(10))) ) + ( GND ) + ( \R1|Add3~38\ ))
-- \R1|Add3~42\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(10))) ) + ( GND ) + ( \R1|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(10),
	cin => \R1|Add3~38\,
	sumout => \R1|Add3~41_sumout\,
	cout => \R1|Add3~42\);

-- Location: LABCELL_X85_Y2_N33
\R1|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~45_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(11))) ) + ( GND ) + ( \R1|Add3~42\ ))
-- \R1|Add3~46\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(11))) ) + ( GND ) + ( \R1|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(11),
	cin => \R1|Add3~42\,
	sumout => \R1|Add3~45_sumout\,
	cout => \R1|Add3~46\);

-- Location: LABCELL_X85_Y2_N36
\R1|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~49_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(12))) ) + ( GND ) + ( \R1|Add3~46\ ))
-- \R1|Add3~50\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(12))) ) + ( GND ) + ( \R1|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(12),
	cin => \R1|Add3~46\,
	sumout => \R1|Add3~49_sumout\,
	cout => \R1|Add3~50\);

-- Location: LABCELL_X85_Y2_N39
\R1|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~53_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(13))) ) + ( GND ) + ( \R1|Add3~50\ ))
-- \R1|Add3~54\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(13))) ) + ( GND ) + ( \R1|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(13),
	cin => \R1|Add3~50\,
	sumout => \R1|Add3~53_sumout\,
	cout => \R1|Add3~54\);

-- Location: LABCELL_X85_Y2_N42
\R1|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~57_sumout\ = SUM(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(14))) ) + ( GND ) + ( \R1|Add3~54\ ))
-- \R1|Add3~58\ = CARRY(( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(14))) ) + ( GND ) + ( \R1|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \R1|ALT_INV_regContents\(14),
	cin => \R1|Add3~54\,
	sumout => \R1|Add3~57_sumout\,
	cout => \R1|Add3~58\);

-- Location: LABCELL_X85_Y2_N45
\R1|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~61_sumout\ = SUM(( GND ) + ( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(15))) ) + ( \R1|Add3~58\ ))
-- \R1|Add3~62\ = CARRY(( GND ) + ( !\multiplicand[7]~input_o\ $ (!\multiplier[7]~input_o\ $ (\R1|regContents\(15))) ) + ( \R1|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110010110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[7]~input_o\,
	datab => \ALT_INV_multiplier[7]~input_o\,
	dataf => \R1|ALT_INV_regContents\(15),
	cin => \R1|Add3~58\,
	sumout => \R1|Add3~61_sumout\,
	cout => \R1|Add3~62\);

-- Location: LABCELL_X85_Y2_N48
\R1|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Add3~65_sumout\ = SUM(( !\R1|regContents\(16) $ (!\multiplier[7]~input_o\ $ (\multiplicand[7]~input_o\)) ) + ( GND ) + ( \R1|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_regContents\(16),
	datab => \ALT_INV_multiplier[7]~input_o\,
	datac => \ALT_INV_multiplicand[7]~input_o\,
	cin => \R1|Add3~62\,
	sumout => \R1|Add3~65_sumout\);

-- Location: FF_X87_Y16_N55
\C1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(0));

-- Location: MLABCELL_X87_Y16_N54
\C1|counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|counter[0]~0_combout\ = ( !\C1|counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \C1|ALT_INV_counter\(0),
	combout => \C1|counter[0]~0_combout\);

-- Location: FF_X87_Y16_N56
\C1|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y16_N30
\C1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~1_sumout\ = SUM(( \C1|counter\(1) ) + ( \C1|counter[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \C1|Add0~2\ = CARRY(( \C1|counter\(1) ) + ( \C1|counter[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \C1|ALT_INV_counter\(1),
	cin => GND,
	sumout => \C1|Add0~1_sumout\,
	cout => \C1|Add0~2\);

-- Location: FF_X87_Y16_N2
\C1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(1));

-- Location: MLABCELL_X87_Y16_N33
\C1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~25_sumout\ = SUM(( \C1|counter\(2) ) + ( GND ) + ( \C1|Add0~2\ ))
-- \C1|Add0~26\ = CARRY(( \C1|counter\(2) ) + ( GND ) + ( \C1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_counter\(2),
	cin => \C1|Add0~2\,
	sumout => \C1|Add0~25_sumout\,
	cout => \C1|Add0~26\);

-- Location: FF_X87_Y16_N35
\C1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(2));

-- Location: MLABCELL_X87_Y16_N36
\C1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~21_sumout\ = SUM(( \C1|counter\(3) ) + ( GND ) + ( \C1|Add0~26\ ))
-- \C1|Add0~22\ = CARRY(( \C1|counter\(3) ) + ( GND ) + ( \C1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_counter\(3),
	cin => \C1|Add0~26\,
	sumout => \C1|Add0~21_sumout\,
	cout => \C1|Add0~22\);

-- Location: FF_X87_Y16_N37
\C1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(3));

-- Location: MLABCELL_X87_Y16_N39
\C1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~17_sumout\ = SUM(( \C1|counter\(4) ) + ( GND ) + ( \C1|Add0~22\ ))
-- \C1|Add0~18\ = CARRY(( \C1|counter\(4) ) + ( GND ) + ( \C1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_counter\(4),
	cin => \C1|Add0~22\,
	sumout => \C1|Add0~17_sumout\,
	cout => \C1|Add0~18\);

-- Location: FF_X87_Y16_N40
\C1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(4));

-- Location: MLABCELL_X87_Y16_N42
\C1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~13_sumout\ = SUM(( \C1|counter\(5) ) + ( GND ) + ( \C1|Add0~18\ ))
-- \C1|Add0~14\ = CARRY(( \C1|counter\(5) ) + ( GND ) + ( \C1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_counter\(5),
	cin => \C1|Add0~18\,
	sumout => \C1|Add0~13_sumout\,
	cout => \C1|Add0~14\);

-- Location: FF_X87_Y16_N43
\C1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(5));

-- Location: MLABCELL_X87_Y16_N45
\C1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~9_sumout\ = SUM(( \C1|counter\(6) ) + ( GND ) + ( \C1|Add0~14\ ))
-- \C1|Add0~10\ = CARRY(( \C1|counter\(6) ) + ( GND ) + ( \C1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_counter\(6),
	cin => \C1|Add0~14\,
	sumout => \C1|Add0~9_sumout\,
	cout => \C1|Add0~10\);

-- Location: FF_X87_Y16_N46
\C1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(6));

-- Location: MLABCELL_X87_Y16_N48
\C1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~5_sumout\ = SUM(( \C1|counter\(7) ) + ( GND ) + ( \C1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_counter\(7),
	cin => \C1|Add0~10\,
	sumout => \C1|Add0~5_sumout\);

-- Location: FF_X87_Y16_N49
\C1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter\(7));

-- Location: LABCELL_X88_Y16_N48
\S5|output[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S5|output[7]~0_combout\ = ( \C1|counter\(5) & ( \C1|counter\(4) & ( (!\C1|counter\(6)) # (\C1|counter\(7)) ) ) ) # ( !\C1|counter\(5) & ( \C1|counter\(4) & ( (\C1|counter\(6)) # (\C1|counter\(7)) ) ) ) # ( \C1|counter\(5) & ( !\C1|counter\(4) ) ) # ( 
-- !\C1|counter\(5) & ( !\C1|counter\(4) & ( !\C1|counter\(7) $ (!\C1|counter\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100111111111111111100111111001111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_counter\(7),
	datac => \C1|ALT_INV_counter\(6),
	datae => \C1|ALT_INV_counter\(5),
	dataf => \C1|ALT_INV_counter\(4),
	combout => \S5|output[7]~0_combout\);

-- Location: LABCELL_X88_Y16_N45
\S5|output[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S5|output[6]~1_combout\ = ( \C1|counter\(5) & ( \C1|counter\(6) & ( (\C1|counter\(4) & !\C1|counter\(7)) ) ) ) # ( !\C1|counter\(5) & ( \C1|counter\(6) & ( (\C1|counter\(4) & \C1|counter\(7)) ) ) ) # ( \C1|counter\(5) & ( !\C1|counter\(6) & ( 
-- !\C1|counter\(7) ) ) ) # ( !\C1|counter\(5) & ( !\C1|counter\(6) & ( (\C1|counter\(4) & !\C1|counter\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter\(4),
	datac => \C1|ALT_INV_counter\(7),
	datae => \C1|ALT_INV_counter\(5),
	dataf => \C1|ALT_INV_counter\(6),
	combout => \S5|output[6]~1_combout\);

-- Location: LABCELL_X88_Y16_N24
\S5|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S5|output[5]~2_combout\ = ( \C1|counter\(5) & ( \C1|counter\(4) & ( !\C1|counter\(7) ) ) ) # ( !\C1|counter\(5) & ( \C1|counter\(4) & ( (!\C1|counter\(7)) # (!\C1|counter\(6)) ) ) ) # ( !\C1|counter\(5) & ( !\C1|counter\(4) & ( (!\C1|counter\(7) & 
-- \C1|counter\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_counter\(7),
	datac => \C1|ALT_INV_counter\(6),
	datae => \C1|ALT_INV_counter\(5),
	dataf => \C1|ALT_INV_counter\(4),
	combout => \S5|output[5]~2_combout\);

-- Location: LABCELL_X88_Y16_N9
\S5|output[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S5|output[4]~3_combout\ = ( \C1|counter\(5) & ( \C1|counter\(6) & ( \C1|counter\(4) ) ) ) # ( !\C1|counter\(5) & ( \C1|counter\(6) & ( (!\C1|counter\(4) & !\C1|counter\(7)) ) ) ) # ( \C1|counter\(5) & ( !\C1|counter\(6) & ( (!\C1|counter\(4) & 
-- \C1|counter\(7)) ) ) ) # ( !\C1|counter\(5) & ( !\C1|counter\(6) & ( \C1|counter\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000010100000101010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter\(4),
	datac => \C1|ALT_INV_counter\(7),
	datae => \C1|ALT_INV_counter\(5),
	dataf => \C1|ALT_INV_counter\(6),
	combout => \S5|output[4]~3_combout\);

-- Location: LABCELL_X88_Y16_N15
\S5|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S5|output[3]~4_combout\ = ( \C1|counter\(5) & ( \C1|counter\(6) & ( !\C1|counter\(7) ) ) ) # ( !\C1|counter\(5) & ( \C1|counter\(6) & ( (!\C1|counter\(7)) # (\C1|counter\(4)) ) ) ) # ( \C1|counter\(5) & ( !\C1|counter\(6) & ( (\C1|counter\(7)) # 
-- (\C1|counter\(4)) ) ) ) # ( !\C1|counter\(5) & ( !\C1|counter\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010111110101111111110101111101011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter\(4),
	datac => \C1|ALT_INV_counter\(7),
	datae => \C1|ALT_INV_counter\(5),
	dataf => \C1|ALT_INV_counter\(6),
	combout => \S5|output[3]~4_combout\);

-- Location: LABCELL_X88_Y16_N30
\S5|output[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S5|output[2]~5_combout\ = ( \C1|counter\(5) & ( \C1|counter\(4) & ( \C1|counter\(7) ) ) ) # ( !\C1|counter\(5) & ( \C1|counter\(4) & ( (!\C1|counter\(7) & \C1|counter\(6)) ) ) ) # ( \C1|counter\(5) & ( !\C1|counter\(4) & ( \C1|counter\(6) ) ) ) # ( 
-- !\C1|counter\(5) & ( !\C1|counter\(4) & ( (\C1|counter\(7) & \C1|counter\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_counter\(7),
	datac => \C1|ALT_INV_counter\(6),
	datae => \C1|ALT_INV_counter\(5),
	dataf => \C1|ALT_INV_counter\(4),
	combout => \S5|output[2]~5_combout\);

-- Location: LABCELL_X88_Y16_N36
\S5|output[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S5|output[1]~6_combout\ = ( \C1|counter\(5) & ( \C1|counter\(4) & ( (\C1|counter\(7) & !\C1|counter\(6)) ) ) ) # ( !\C1|counter\(5) & ( \C1|counter\(4) & ( !\C1|counter\(7) $ (\C1|counter\(6)) ) ) ) # ( !\C1|counter\(5) & ( !\C1|counter\(4) & ( 
-- (!\C1|counter\(7) & \C1|counter\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000011110000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_counter\(7),
	datac => \C1|ALT_INV_counter\(6),
	datae => \C1|ALT_INV_counter\(5),
	dataf => \C1|ALT_INV_counter\(4),
	combout => \S5|output[1]~6_combout\);

-- Location: FF_X87_Y16_N1
\C1|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|counter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y16_N12
\S4|output[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|output[7]~0_combout\ = ( \C1|counter\(3) & ( \C1|counter\(2) & ( (\C1|counter[1]~DUPLICATE_q\) # (\C1|counter\(0)) ) ) ) # ( !\C1|counter\(3) & ( \C1|counter\(2) & ( (!\C1|counter\(0)) # (!\C1|counter[1]~DUPLICATE_q\) ) ) ) # ( \C1|counter\(3) & ( 
-- !\C1|counter\(2) ) ) # ( !\C1|counter\(3) & ( !\C1|counter\(2) & ( \C1|counter[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111100111111000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_counter\(0),
	datac => \C1|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \C1|ALT_INV_counter\(3),
	dataf => \C1|ALT_INV_counter\(2),
	combout => \S4|output[7]~0_combout\);

-- Location: MLABCELL_X87_Y16_N21
\S4|output[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|output[6]~1_combout\ = ( \C1|counter\(2) & ( (\C1|counter\(0) & (!\C1|counter[1]~DUPLICATE_q\ $ (!\C1|counter\(3)))) ) ) # ( !\C1|counter\(2) & ( (!\C1|counter\(3) & ((\C1|counter\(0)) # (\C1|counter[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter[1]~DUPLICATE_q\,
	datab => \C1|ALT_INV_counter\(3),
	datac => \C1|ALT_INV_counter\(0),
	dataf => \C1|ALT_INV_counter\(2),
	combout => \S4|output[6]~1_combout\);

-- Location: MLABCELL_X87_Y16_N24
\S4|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|output[5]~2_combout\ = ( \C1|counter\(2) & ( (!\C1|counter\(3) & ((!\C1|counter[1]~DUPLICATE_q\) # (\C1|counter\(0)))) ) ) # ( !\C1|counter\(2) & ( (\C1|counter\(0) & ((!\C1|counter[1]~DUPLICATE_q\) # (!\C1|counter\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter[1]~DUPLICATE_q\,
	datab => \C1|ALT_INV_counter\(3),
	datad => \C1|ALT_INV_counter\(0),
	dataf => \C1|ALT_INV_counter\(2),
	combout => \S4|output[5]~2_combout\);

-- Location: MLABCELL_X87_Y16_N27
\S4|output[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|output[4]~3_combout\ = ( \C1|counter\(2) & ( (!\C1|counter[1]~DUPLICATE_q\ & (!\C1|counter\(3) & !\C1|counter\(0))) # (\C1|counter[1]~DUPLICATE_q\ & ((\C1|counter\(0)))) ) ) # ( !\C1|counter\(2) & ( (!\C1|counter[1]~DUPLICATE_q\ & ((\C1|counter\(0)))) 
-- # (\C1|counter[1]~DUPLICATE_q\ & (\C1|counter\(3) & !\C1|counter\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000011010000110100001101010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter[1]~DUPLICATE_q\,
	datab => \C1|ALT_INV_counter\(3),
	datac => \C1|ALT_INV_counter\(0),
	dataf => \C1|ALT_INV_counter\(2),
	combout => \S4|output[4]~3_combout\);

-- Location: MLABCELL_X87_Y16_N6
\S4|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|output[3]~4_combout\ = ( \C1|counter\(2) & ( (!\C1|counter\(3)) # ((!\C1|counter[1]~DUPLICATE_q\ & \C1|counter\(0))) ) ) # ( !\C1|counter\(2) & ( ((!\C1|counter[1]~DUPLICATE_q\) # (\C1|counter\(0))) # (\C1|counter\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_counter\(3),
	datac => \C1|ALT_INV_counter[1]~DUPLICATE_q\,
	datad => \C1|ALT_INV_counter\(0),
	dataf => \C1|ALT_INV_counter\(2),
	combout => \S4|output[3]~4_combout\);

-- Location: MLABCELL_X87_Y16_N3
\S4|output[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|output[2]~5_combout\ = ( \C1|counter[1]~DUPLICATE_q\ & ( \C1|Add0~1_sumout\ & ( ((\C1|counter\(3) & \C1|counter\(0))) # (\C1|counter\(2)) ) ) ) # ( !\C1|counter[1]~DUPLICATE_q\ & ( \C1|Add0~1_sumout\ & ( (\C1|counter\(2) & ((!\C1|counter\(3)) # 
-- (!\C1|counter\(0)))) ) ) ) # ( \C1|counter[1]~DUPLICATE_q\ & ( !\C1|Add0~1_sumout\ & ( (\C1|counter\(3) & ((\C1|counter\(0)) # (\C1|counter\(2)))) ) ) ) # ( !\C1|counter[1]~DUPLICATE_q\ & ( !\C1|Add0~1_sumout\ & ( (\C1|counter\(2) & (\C1|counter\(3) & 
-- !\C1|counter\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100110001001101010100010101000101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter\(2),
	datab => \C1|ALT_INV_counter\(3),
	datac => \C1|ALT_INV_counter\(0),
	datae => \C1|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \C1|ALT_INV_Add0~1_sumout\,
	combout => \S4|output[2]~5_combout\);

-- Location: MLABCELL_X87_Y16_N9
\S4|output[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S4|output[1]~6_combout\ = ( \C1|counter\(2) & ( (!\C1|counter[1]~DUPLICATE_q\ & (!\C1|counter\(3) $ (\C1|counter\(0)))) ) ) # ( !\C1|counter\(2) & ( (\C1|counter\(0) & (!\C1|counter[1]~DUPLICATE_q\ $ (\C1|counter\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_counter[1]~DUPLICATE_q\,
	datab => \C1|ALT_INV_counter\(3),
	datac => \C1|ALT_INV_counter\(0),
	dataf => \C1|ALT_INV_counter\(2),
	combout => \S4|output[1]~6_combout\);

-- Location: LABCELL_X88_Y4_N51
\S3|output[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|output[7]~0_combout\ = ( \R1|Add3~53_sumout\ & ( \R1|Add3~49_sumout\ & ( (\R1|Add3~57_sumout\ & !\R1|Add3~61_sumout\) ) ) ) # ( !\R1|Add3~53_sumout\ & ( \R1|Add3~49_sumout\ & ( (!\R1|Add3~57_sumout\ & !\R1|Add3~61_sumout\) ) ) ) # ( 
-- !\R1|Add3~53_sumout\ & ( !\R1|Add3~49_sumout\ & ( !\R1|Add3~57_sumout\ $ (\R1|Add3~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000000000010100000101000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~57_sumout\,
	datac => \R1|ALT_INV_Add3~61_sumout\,
	datae => \R1|ALT_INV_Add3~53_sumout\,
	dataf => \R1|ALT_INV_Add3~49_sumout\,
	combout => \S3|output[7]~0_combout\);

-- Location: LABCELL_X88_Y4_N45
\S3|output[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|output[6]~1_combout\ = ( \R1|Add3~53_sumout\ & ( \R1|Add3~49_sumout\ & ( !\R1|Add3~61_sumout\ ) ) ) # ( !\R1|Add3~53_sumout\ & ( \R1|Add3~49_sumout\ & ( !\R1|Add3~57_sumout\ $ (\R1|Add3~61_sumout\) ) ) ) # ( \R1|Add3~53_sumout\ & ( 
-- !\R1|Add3~49_sumout\ & ( (!\R1|Add3~57_sumout\ & !\R1|Add3~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~57_sumout\,
	datac => \R1|ALT_INV_Add3~61_sumout\,
	datae => \R1|ALT_INV_Add3~53_sumout\,
	dataf => \R1|ALT_INV_Add3~49_sumout\,
	combout => \S3|output[6]~1_combout\);

-- Location: LABCELL_X88_Y4_N0
\S3|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|output[5]~2_combout\ = ( \R1|Add3~53_sumout\ & ( \R1|Add3~57_sumout\ & ( (\R1|Add3~49_sumout\ & !\R1|Add3~61_sumout\) ) ) ) # ( !\R1|Add3~53_sumout\ & ( \R1|Add3~57_sumout\ & ( !\R1|Add3~61_sumout\ ) ) ) # ( \R1|Add3~53_sumout\ & ( 
-- !\R1|Add3~57_sumout\ & ( (\R1|Add3~49_sumout\ & !\R1|Add3~61_sumout\) ) ) ) # ( !\R1|Add3~53_sumout\ & ( !\R1|Add3~57_sumout\ & ( \R1|Add3~49_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010001000100010011001100110011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~49_sumout\,
	datab => \R1|ALT_INV_Add3~61_sumout\,
	datae => \R1|ALT_INV_Add3~53_sumout\,
	dataf => \R1|ALT_INV_Add3~57_sumout\,
	combout => \S3|output[5]~2_combout\);

-- Location: LABCELL_X85_Y2_N57
\S3|output[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|output[4]~3_combout\ = ( \R1|Add3~53_sumout\ & ( (!\R1|Add3~49_sumout\ & (\R1|Add3~61_sumout\ & !\R1|Add3~57_sumout\)) # (\R1|Add3~49_sumout\ & ((\R1|Add3~57_sumout\))) ) ) # ( !\R1|Add3~53_sumout\ & ( (!\R1|Add3~49_sumout\ & (!\R1|Add3~61_sumout\ & 
-- \R1|Add3~57_sumout\)) # (\R1|Add3~49_sumout\ & ((!\R1|Add3~57_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100000010101011010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~49_sumout\,
	datac => \R1|ALT_INV_Add3~61_sumout\,
	datad => \R1|ALT_INV_Add3~57_sumout\,
	dataf => \R1|ALT_INV_Add3~53_sumout\,
	combout => \S3|output[4]~3_combout\);

-- Location: LABCELL_X88_Y4_N9
\S3|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|output[3]~4_combout\ = ( \R1|Add3~53_sumout\ & ( \R1|Add3~49_sumout\ & ( (\R1|Add3~57_sumout\ & \R1|Add3~61_sumout\) ) ) ) # ( \R1|Add3~53_sumout\ & ( !\R1|Add3~49_sumout\ & ( !\R1|Add3~57_sumout\ $ (\R1|Add3~61_sumout\) ) ) ) # ( !\R1|Add3~53_sumout\ 
-- & ( !\R1|Add3~49_sumout\ & ( (\R1|Add3~57_sumout\ & \R1|Add3~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101001011010010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~57_sumout\,
	datac => \R1|ALT_INV_Add3~61_sumout\,
	datae => \R1|ALT_INV_Add3~53_sumout\,
	dataf => \R1|ALT_INV_Add3~49_sumout\,
	combout => \S3|output[3]~4_combout\);

-- Location: LABCELL_X88_Y4_N36
\S3|output[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|output[2]~5_combout\ = ( \R1|Add3~53_sumout\ & ( \R1|Add3~57_sumout\ & ( (!\R1|Add3~49_sumout\) # (\R1|Add3~61_sumout\) ) ) ) # ( !\R1|Add3~53_sumout\ & ( \R1|Add3~57_sumout\ & ( !\R1|Add3~49_sumout\ $ (!\R1|Add3~61_sumout\) ) ) ) # ( 
-- \R1|Add3~53_sumout\ & ( !\R1|Add3~57_sumout\ & ( (\R1|Add3~49_sumout\ & \R1|Add3~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000101100110011001101011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~49_sumout\,
	datab => \R1|ALT_INV_Add3~61_sumout\,
	datae => \R1|ALT_INV_Add3~53_sumout\,
	dataf => \R1|ALT_INV_Add3~57_sumout\,
	combout => \S3|output[2]~5_combout\);

-- Location: LABCELL_X88_Y4_N54
\S3|output[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S3|output[1]~6_combout\ = ( !\R1|Add3~53_sumout\ & ( \R1|Add3~57_sumout\ & ( !\R1|Add3~49_sumout\ $ (\R1|Add3~61_sumout\) ) ) ) # ( \R1|Add3~53_sumout\ & ( !\R1|Add3~57_sumout\ & ( (\R1|Add3~49_sumout\ & \R1|Add3~61_sumout\) ) ) ) # ( 
-- !\R1|Add3~53_sumout\ & ( !\R1|Add3~57_sumout\ & ( (\R1|Add3~49_sumout\ & !\R1|Add3~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000100010001000110011001100110010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~49_sumout\,
	datab => \R1|ALT_INV_Add3~61_sumout\,
	datae => \R1|ALT_INV_Add3~53_sumout\,
	dataf => \R1|ALT_INV_Add3~57_sumout\,
	combout => \S3|output[1]~6_combout\);

-- Location: LABCELL_X88_Y20_N39
\S2|output[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|output[7]~0_combout\ = ( !\R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( !\R1|Add3~41_sumout\ $ (\R1|Add3~37_sumout\) ) ) ) # ( \R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( (\R1|Add3~41_sumout\ & !\R1|Add3~37_sumout\) ) ) ) # ( 
-- !\R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( (!\R1|Add3~41_sumout\ & !\R1|Add3~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~41_sumout\,
	datac => \R1|ALT_INV_Add3~37_sumout\,
	datae => \R1|ALT_INV_Add3~45_sumout\,
	dataf => \R1|ALT_INV_Add3~33_sumout\,
	combout => \S2|output[7]~0_combout\);

-- Location: LABCELL_X88_Y20_N42
\S2|output[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|output[6]~1_combout\ = ( \R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( (!\R1|Add3~37_sumout\ & \R1|Add3~41_sumout\) ) ) ) # ( !\R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( (!\R1|Add3~41_sumout\) # (\R1|Add3~37_sumout\) ) ) ) # ( 
-- !\R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( (\R1|Add3~37_sumout\ & !\R1|Add3~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110011111100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Add3~37_sumout\,
	datac => \R1|ALT_INV_Add3~41_sumout\,
	datae => \R1|ALT_INV_Add3~45_sumout\,
	dataf => \R1|ALT_INV_Add3~33_sumout\,
	combout => \S2|output[6]~1_combout\);

-- Location: LABCELL_X88_Y20_N27
\S2|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|output[5]~2_combout\ = ( \R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( (!\R1|Add3~41_sumout\ & !\R1|Add3~37_sumout\) ) ) ) # ( !\R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ ) ) # ( !\R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( 
-- (\R1|Add3~41_sumout\ & !\R1|Add3~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~41_sumout\,
	datac => \R1|ALT_INV_Add3~37_sumout\,
	datae => \R1|ALT_INV_Add3~45_sumout\,
	dataf => \R1|ALT_INV_Add3~33_sumout\,
	combout => \S2|output[5]~2_combout\);

-- Location: LABCELL_X88_Y20_N54
\S2|output[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|output[4]~3_combout\ = ( \R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( !\R1|Add3~37_sumout\ $ (\R1|Add3~41_sumout\) ) ) ) # ( !\R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( !\R1|Add3~37_sumout\ $ (\R1|Add3~41_sumout\) ) ) ) # ( \R1|Add3~45_sumout\ 
-- & ( !\R1|Add3~33_sumout\ & ( (\R1|Add3~37_sumout\ & !\R1|Add3~41_sumout\) ) ) ) # ( !\R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( (!\R1|Add3~37_sumout\ & \R1|Add3~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100000011000011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Add3~37_sumout\,
	datac => \R1|ALT_INV_Add3~41_sumout\,
	datae => \R1|ALT_INV_Add3~45_sumout\,
	dataf => \R1|ALT_INV_Add3~33_sumout\,
	combout => \S2|output[4]~3_combout\);

-- Location: LABCELL_X88_Y20_N15
\S2|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|output[3]~4_combout\ = ( \R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( (\R1|Add3~41_sumout\ & \R1|Add3~37_sumout\) ) ) ) # ( \R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( \R1|Add3~41_sumout\ ) ) ) # ( !\R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ 
-- & ( (!\R1|Add3~41_sumout\ & \R1|Add3~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~41_sumout\,
	datac => \R1|ALT_INV_Add3~37_sumout\,
	datae => \R1|ALT_INV_Add3~45_sumout\,
	dataf => \R1|ALT_INV_Add3~33_sumout\,
	combout => \S2|output[3]~4_combout\);

-- Location: LABCELL_X88_Y20_N30
\S2|output[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|output[2]~5_combout\ = ( \R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( \R1|Add3~37_sumout\ ) ) ) # ( !\R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( (!\R1|Add3~37_sumout\ & \R1|Add3~41_sumout\) ) ) ) # ( \R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ 
-- & ( \R1|Add3~41_sumout\ ) ) ) # ( !\R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( (\R1|Add3~37_sumout\ & \R1|Add3~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Add3~37_sumout\,
	datac => \R1|ALT_INV_Add3~41_sumout\,
	datae => \R1|ALT_INV_Add3~45_sumout\,
	dataf => \R1|ALT_INV_Add3~33_sumout\,
	combout => \S2|output[2]~5_combout\);

-- Location: LABCELL_X88_Y9_N0
\S2|output[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2|output[1]~6_combout\ = ( \R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( !\R1|Add3~37_sumout\ $ (!\R1|Add3~41_sumout\) ) ) ) # ( !\R1|Add3~45_sumout\ & ( \R1|Add3~33_sumout\ & ( (!\R1|Add3~37_sumout\ & !\R1|Add3~41_sumout\) ) ) ) # ( 
-- !\R1|Add3~45_sumout\ & ( !\R1|Add3~33_sumout\ & ( (!\R1|Add3~37_sumout\ & \R1|Add3~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000000110000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Add3~37_sumout\,
	datac => \R1|ALT_INV_Add3~41_sumout\,
	datae => \R1|ALT_INV_Add3~45_sumout\,
	dataf => \R1|ALT_INV_Add3~33_sumout\,
	combout => \S2|output[1]~6_combout\);

-- Location: LABCELL_X88_Y4_N27
\S1|output[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|output[7]~0_combout\ = ( \R1|Add3~29_sumout\ & ( (!\R1|Add3~17_sumout\ & (!\R1|Add3~21_sumout\ & \R1|Add3~25_sumout\)) ) ) # ( !\R1|Add3~29_sumout\ & ( (!\R1|Add3~21_sumout\ & ((!\R1|Add3~25_sumout\))) # (\R1|Add3~21_sumout\ & (\R1|Add3~17_sumout\ & 
-- \R1|Add3~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000101111100000000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~17_sumout\,
	datac => \R1|ALT_INV_Add3~21_sumout\,
	datad => \R1|ALT_INV_Add3~25_sumout\,
	dataf => \R1|ALT_INV_Add3~29_sumout\,
	combout => \S1|output[7]~0_combout\);

-- Location: LABCELL_X88_Y4_N30
\S1|output[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|output[6]~1_combout\ = ( \R1|Add3~29_sumout\ & ( (\R1|Add3~17_sumout\ & (!\R1|Add3~21_sumout\ & \R1|Add3~25_sumout\)) ) ) # ( !\R1|Add3~29_sumout\ & ( (!\R1|Add3~17_sumout\ & (\R1|Add3~21_sumout\ & !\R1|Add3~25_sumout\)) # (\R1|Add3~17_sumout\ & 
-- ((!\R1|Add3~25_sumout\) # (\R1|Add3~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~17_sumout\,
	datab => \R1|ALT_INV_Add3~21_sumout\,
	datac => \R1|ALT_INV_Add3~25_sumout\,
	dataf => \R1|ALT_INV_Add3~29_sumout\,
	combout => \S1|output[6]~1_combout\);

-- Location: LABCELL_X88_Y4_N33
\S1|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|output[5]~2_combout\ = ( \R1|Add3~29_sumout\ & ( (\R1|Add3~17_sumout\ & (!\R1|Add3~21_sumout\ & !\R1|Add3~25_sumout\)) ) ) # ( !\R1|Add3~29_sumout\ & ( ((!\R1|Add3~21_sumout\ & \R1|Add3~25_sumout\)) # (\R1|Add3~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010101011111010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~17_sumout\,
	datac => \R1|ALT_INV_Add3~21_sumout\,
	datad => \R1|ALT_INV_Add3~25_sumout\,
	dataf => \R1|ALT_INV_Add3~29_sumout\,
	combout => \S1|output[5]~2_combout\);

-- Location: LABCELL_X88_Y4_N12
\S1|output[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|output[4]~3_combout\ = ( \R1|Add3~29_sumout\ & ( (!\R1|Add3~17_sumout\ & (\R1|Add3~21_sumout\ & !\R1|Add3~25_sumout\)) # (\R1|Add3~17_sumout\ & (!\R1|Add3~21_sumout\ $ (\R1|Add3~25_sumout\))) ) ) # ( !\R1|Add3~29_sumout\ & ( (!\R1|Add3~17_sumout\ & 
-- (!\R1|Add3~21_sumout\ & \R1|Add3~25_sumout\)) # (\R1|Add3~17_sumout\ & (!\R1|Add3~21_sumout\ $ (\R1|Add3~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~17_sumout\,
	datab => \R1|ALT_INV_Add3~21_sumout\,
	datac => \R1|ALT_INV_Add3~25_sumout\,
	dataf => \R1|ALT_INV_Add3~29_sumout\,
	combout => \S1|output[4]~3_combout\);

-- Location: LABCELL_X88_Y4_N15
\S1|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|output[3]~4_combout\ = ( \R1|Add3~29_sumout\ & ( (\R1|Add3~25_sumout\ & ((!\R1|Add3~17_sumout\) # (\R1|Add3~21_sumout\))) ) ) # ( !\R1|Add3~29_sumout\ & ( (!\R1|Add3~17_sumout\ & (\R1|Add3~21_sumout\ & !\R1|Add3~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~17_sumout\,
	datab => \R1|ALT_INV_Add3~21_sumout\,
	datad => \R1|ALT_INV_Add3~25_sumout\,
	dataf => \R1|ALT_INV_Add3~29_sumout\,
	combout => \S1|output[3]~4_combout\);

-- Location: LABCELL_X88_Y4_N18
\S1|output[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|output[2]~5_combout\ = ( \R1|Add3~25_sumout\ & ( \R1|Add3~29_sumout\ & ( (!\R1|Add3~17_sumout\) # (\R1|Add3~21_sumout\) ) ) ) # ( !\R1|Add3~25_sumout\ & ( \R1|Add3~29_sumout\ & ( (\R1|Add3~21_sumout\ & \R1|Add3~17_sumout\) ) ) ) # ( 
-- \R1|Add3~25_sumout\ & ( !\R1|Add3~29_sumout\ & ( !\R1|Add3~21_sumout\ $ (!\R1|Add3~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Add3~21_sumout\,
	datac => \R1|ALT_INV_Add3~17_sumout\,
	datae => \R1|ALT_INV_Add3~25_sumout\,
	dataf => \R1|ALT_INV_Add3~29_sumout\,
	combout => \S1|output[2]~5_combout\);

-- Location: LABCELL_X88_Y4_N24
\S1|output[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|output[1]~6_combout\ = ( \R1|Add3~29_sumout\ & ( (\R1|Add3~17_sumout\ & (!\R1|Add3~21_sumout\ $ (!\R1|Add3~25_sumout\))) ) ) # ( !\R1|Add3~29_sumout\ & ( (!\R1|Add3~21_sumout\ & (!\R1|Add3~17_sumout\ $ (!\R1|Add3~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~17_sumout\,
	datab => \R1|ALT_INV_Add3~21_sumout\,
	datac => \R1|ALT_INV_Add3~25_sumout\,
	dataf => \R1|ALT_INV_Add3~29_sumout\,
	combout => \S1|output[1]~6_combout\);

-- Location: LABCELL_X83_Y2_N36
\S0|output[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|output[7]~0_combout\ = ( \R1|Add3~13_sumout\ & ( (\R1|Add3~9_sumout\ & (!\R1|Add3~5_sumout\ & !\R1|Add3~1_sumout\)) ) ) # ( !\R1|Add3~13_sumout\ & ( (!\R1|Add3~9_sumout\ & (!\R1|Add3~5_sumout\)) # (\R1|Add3~9_sumout\ & (\R1|Add3~5_sumout\ & 
-- \R1|Add3~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~9_sumout\,
	datab => \R1|ALT_INV_Add3~5_sumout\,
	datac => \R1|ALT_INV_Add3~1_sumout\,
	dataf => \R1|ALT_INV_Add3~13_sumout\,
	combout => \S0|output[7]~0_combout\);

-- Location: LABCELL_X83_Y2_N39
\S0|output[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|output[6]~1_combout\ = ( \R1|Add3~13_sumout\ & ( (\R1|Add3~9_sumout\ & (!\R1|Add3~5_sumout\ & \R1|Add3~1_sumout\)) ) ) # ( !\R1|Add3~13_sumout\ & ( (!\R1|Add3~9_sumout\ & ((\R1|Add3~1_sumout\) # (\R1|Add3~5_sumout\))) # (\R1|Add3~9_sumout\ & 
-- (\R1|Add3~5_sumout\ & \R1|Add3~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~9_sumout\,
	datab => \R1|ALT_INV_Add3~5_sumout\,
	datad => \R1|ALT_INV_Add3~1_sumout\,
	dataf => \R1|ALT_INV_Add3~13_sumout\,
	combout => \S0|output[6]~1_combout\);

-- Location: LABCELL_X83_Y2_N54
\S0|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|output[5]~2_combout\ = ( \R1|Add3~13_sumout\ & ( (!\R1|Add3~9_sumout\ & (!\R1|Add3~5_sumout\ & \R1|Add3~1_sumout\)) ) ) # ( !\R1|Add3~13_sumout\ & ( ((\R1|Add3~9_sumout\ & !\R1|Add3~5_sumout\)) # (\R1|Add3~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~9_sumout\,
	datab => \R1|ALT_INV_Add3~5_sumout\,
	datac => \R1|ALT_INV_Add3~1_sumout\,
	dataf => \R1|ALT_INV_Add3~13_sumout\,
	combout => \S0|output[5]~2_combout\);

-- Location: LABCELL_X83_Y2_N57
\S0|output[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|output[4]~3_combout\ = ( \R1|Add3~13_sumout\ & ( (!\R1|Add3~9_sumout\ & (!\R1|Add3~5_sumout\ $ (!\R1|Add3~1_sumout\))) # (\R1|Add3~9_sumout\ & (\R1|Add3~5_sumout\ & \R1|Add3~1_sumout\)) ) ) # ( !\R1|Add3~13_sumout\ & ( (!\R1|Add3~9_sumout\ & 
-- (!\R1|Add3~5_sumout\ & \R1|Add3~1_sumout\)) # (\R1|Add3~9_sumout\ & (!\R1|Add3~5_sumout\ $ (\R1|Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010100110010010001010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~9_sumout\,
	datab => \R1|ALT_INV_Add3~5_sumout\,
	datad => \R1|ALT_INV_Add3~1_sumout\,
	dataf => \R1|ALT_INV_Add3~13_sumout\,
	combout => \S0|output[4]~3_combout\);

-- Location: LABCELL_X85_Y2_N54
\S0|output[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|output[3]~4_combout\ = ( \R1|Add3~13_sumout\ & ( (\R1|Add3~9_sumout\ & ((!\R1|Add3~1_sumout\) # (\R1|Add3~5_sumout\))) ) ) # ( !\R1|Add3~13_sumout\ & ( (!\R1|Add3~9_sumout\ & (\R1|Add3~5_sumout\ & !\R1|Add3~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Add3~9_sumout\,
	datac => \R1|ALT_INV_Add3~5_sumout\,
	datad => \R1|ALT_INV_Add3~1_sumout\,
	dataf => \R1|ALT_INV_Add3~13_sumout\,
	combout => \S0|output[3]~4_combout\);

-- Location: LABCELL_X83_Y2_N51
\S0|output[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|output[2]~5_combout\ = ( \R1|Add3~13_sumout\ & ( (!\R1|Add3~1_sumout\ & (\R1|Add3~9_sumout\)) # (\R1|Add3~1_sumout\ & ((\R1|Add3~5_sumout\))) ) ) # ( !\R1|Add3~13_sumout\ & ( (\R1|Add3~9_sumout\ & (!\R1|Add3~5_sumout\ $ (!\R1|Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~9_sumout\,
	datab => \R1|ALT_INV_Add3~5_sumout\,
	datad => \R1|ALT_INV_Add3~1_sumout\,
	dataf => \R1|ALT_INV_Add3~13_sumout\,
	combout => \S0|output[2]~5_combout\);

-- Location: LABCELL_X83_Y2_N48
\S0|output[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|output[1]~6_combout\ = ( \R1|Add3~13_sumout\ & ( (\R1|Add3~1_sumout\ & (!\R1|Add3~9_sumout\ $ (!\R1|Add3~5_sumout\))) ) ) # ( !\R1|Add3~13_sumout\ & ( (!\R1|Add3~5_sumout\ & (!\R1|Add3~9_sumout\ $ (!\R1|Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Add3~9_sumout\,
	datab => \R1|ALT_INV_Add3~5_sumout\,
	datac => \R1|ALT_INV_Add3~1_sumout\,
	dataf => \R1|ALT_INV_Add3~13_sumout\,
	combout => \S0|output[1]~6_combout\);
END structure;


