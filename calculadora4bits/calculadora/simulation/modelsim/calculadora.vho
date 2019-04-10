-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/09/2019 21:02:38"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	calculadora IS
    PORT (
	x1 : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	x2 : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	chave : IN STD.STANDARD.bit_vector(2 DOWNTO 0);
	saidaf : OUT STD.STANDARD.bit_vector(4 DOWNTO 0);
	ctrl : OUT STD.STANDARD.bit_vector(1 DOWNTO 0);
	c0 : OUT STD.STANDARD.bit
	);
END calculadora;

-- Design Ports Information
-- saidaf[0]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaf[1]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaf[2]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaf[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaf[4]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl[0]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl[1]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c0	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x1[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- chave[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- chave[0]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- chave[1]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[1]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[0]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[2]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_x2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_chave : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saidaf : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_c0 : std_logic;
SIGNAL \c0~0_combout\ : std_logic;
SIGNAL \c0~3_combout\ : std_logic;
SIGNAL \c0~4_combout\ : std_logic;
SIGNAL \instanciaMaiorQue|y~0_combout\ : std_logic;
SIGNAL \c0~5_combout\ : std_logic;
SIGNAL \instanciaSubtrator|gen:1:uut|c_out~0_combout\ : std_logic;
SIGNAL \c0~1_combout\ : std_logic;
SIGNAL \c0~2_combout\ : std_logic;
SIGNAL \c0~7_combout\ : std_logic;
SIGNAL \c0~6_combout\ : std_logic;
SIGNAL \c0~8_combout\ : std_logic;
SIGNAL \c0~9_combout\ : std_logic;
SIGNAL \c0~10_combout\ : std_logic;
SIGNAL \c0~13_combout\ : std_logic;
SIGNAL \instanciaSomador|gen:1:uut|cout~0_combout\ : std_logic;
SIGNAL \instanciaSomador|gen:2:uut|cout~0_combout\ : std_logic;
SIGNAL \c0~11_combout\ : std_logic;
SIGNAL \c0~12_combout\ : std_logic;
SIGNAL \c0~14_combout\ : std_logic;
SIGNAL \c0~15_combout\ : std_logic;
SIGNAL \x2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \chave~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_x1 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(x1);
ww_x2 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(x2);
ww_chave <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(chave);
saidaf <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_saidaf);
ctrl <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_ctrl);
c0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_c0);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X35_Y1_N24
\c0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~0_combout\ = (!\chave~combout\(2) & (!\x1~combout\(3) & (!\chave~combout\(0) & !\chave~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave~combout\(2),
	datab => \x1~combout\(3),
	datac => \chave~combout\(0),
	datad => \chave~combout\(1),
	combout => \c0~0_combout\);

-- Location: LCCOMB_X35_Y1_N14
\c0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~3_combout\ = (\x2~combout\(3) & (\x1~combout\(3) & (!\x2~combout\(2) & \x1~combout\(2)))) # (!\x2~combout\(3) & ((\x1~combout\(3)) # ((!\x2~combout\(2) & \x1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(3),
	datab => \x1~combout\(3),
	datac => \x2~combout\(2),
	datad => \x1~combout\(2),
	combout => \c0~3_combout\);

-- Location: LCCOMB_X36_Y1_N2
\c0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~4_combout\ = (\x2~combout\(1) & (((!\x2~combout\(0) & \x1~combout\(0))))) # (!\x2~combout\(1) & ((\x1~combout\(1)) # ((!\x2~combout\(0) & \x1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \x1~combout\(1),
	datac => \x2~combout\(0),
	datad => \x1~combout\(0),
	combout => \c0~4_combout\);

-- Location: LCCOMB_X35_Y1_N8
\instanciaMaiorQue|y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instanciaMaiorQue|y~0_combout\ = \x2~combout\(2) $ (\x1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x2~combout\(2),
	datad => \x1~combout\(2),
	combout => \instanciaMaiorQue|y~0_combout\);

-- Location: LCCOMB_X35_Y1_N2
\c0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~5_combout\ = (!\chave~combout\(2) & ((\c0~3_combout\) # ((!\instanciaMaiorQue|y~0_combout\ & \c0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave~combout\(2),
	datab => \instanciaMaiorQue|y~0_combout\,
	datac => \c0~3_combout\,
	datad => \c0~4_combout\,
	combout => \c0~5_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chave[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_chave(2),
	combout => \chave~combout\(2));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x1(1),
	combout => \x1~combout\(1));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x2(0),
	combout => \x2~combout\(0));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x1(0),
	combout => \x1~combout\(0));

-- Location: LCCOMB_X36_Y1_N24
\instanciaSubtrator|gen:1:uut|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instanciaSubtrator|gen:1:uut|c_out~0_combout\ = (\x2~combout\(1) & (((\x2~combout\(0) & !\x1~combout\(0))) # (!\x1~combout\(1)))) # (!\x2~combout\(1) & (!\x1~combout\(1) & (\x2~combout\(0) & !\x1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \x1~combout\(1),
	datac => \x2~combout\(0),
	datad => \x1~combout\(0),
	combout => \instanciaSubtrator|gen:1:uut|c_out~0_combout\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x2(2),
	combout => \x2~combout\(2));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x1(2),
	combout => \x1~combout\(2));

-- Location: LCCOMB_X35_Y1_N18
\c0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~1_combout\ = (\c0~0_combout\ & ((\instanciaSubtrator|gen:1:uut|c_out~0_combout\ & ((\x2~combout\(2)) # (!\x1~combout\(2)))) # (!\instanciaSubtrator|gen:1:uut|c_out~0_combout\ & (\x2~combout\(2) & !\x1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~0_combout\,
	datab => \instanciaSubtrator|gen:1:uut|c_out~0_combout\,
	datac => \x2~combout\(2),
	datad => \x1~combout\(2),
	combout => \c0~1_combout\);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chave[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_chave(0),
	combout => \chave~combout\(0));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chave[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_chave(1),
	combout => \chave~combout\(1));

-- Location: LCCOMB_X35_Y1_N4
\c0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~2_combout\ = (!\chave~combout\(0) & \chave~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \chave~combout\(0),
	datad => \chave~combout\(1),
	combout => \c0~2_combout\);

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x2(1),
	combout => \x2~combout\(1));

-- Location: LCCOMB_X35_Y1_N30
\c0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~7_combout\ = (!\x1~combout\(1) & (\x2~combout\(1) & (\x2~combout\(2) $ (!\x1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(1),
	datab => \x2~combout\(1),
	datac => \x2~combout\(2),
	datad => \x1~combout\(2),
	combout => \c0~7_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x1(3),
	combout => \x1~combout\(3));

-- Location: LCCOMB_X35_Y1_N20
\c0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~6_combout\ = (\x2~combout\(3) & (((\x2~combout\(2) & !\x1~combout\(2))) # (!\x1~combout\(3)))) # (!\x2~combout\(3) & (!\x1~combout\(3) & (\x2~combout\(2) & !\x1~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(3),
	datab => \x1~combout\(3),
	datac => \x2~combout\(2),
	datad => \x1~combout\(2),
	combout => \c0~6_combout\);

-- Location: LCCOMB_X36_Y1_N4
\c0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~8_combout\ = (\x2~combout\(0) & (!\x1~combout\(0) & (\x2~combout\(1) $ (!\x1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \x1~combout\(1),
	datac => \x2~combout\(0),
	datad => \x1~combout\(0),
	combout => \c0~8_combout\);

-- Location: LCCOMB_X35_Y1_N0
\c0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~9_combout\ = (\chave~combout\(2) & ((\c0~7_combout\) # ((\c0~6_combout\) # (\c0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave~combout\(2),
	datab => \c0~7_combout\,
	datac => \c0~6_combout\,
	datad => \c0~8_combout\,
	combout => \c0~9_combout\);

-- Location: LCCOMB_X35_Y1_N10
\c0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~10_combout\ = (\c0~1_combout\) # ((\c0~2_combout\ & ((\c0~5_combout\) # (\c0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~5_combout\,
	datab => \c0~1_combout\,
	datac => \c0~2_combout\,
	datad => \c0~9_combout\,
	combout => \c0~10_combout\);

-- Location: LCCOMB_X35_Y1_N26
\c0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~13_combout\ = ((\instanciaSubtrator|gen:1:uut|c_out~0_combout\ & ((\x2~combout\(2)) # (!\x1~combout\(2)))) # (!\instanciaSubtrator|gen:1:uut|c_out~0_combout\ & (\x2~combout\(2) & !\x1~combout\(2)))) # (!\x1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(3),
	datab => \instanciaSubtrator|gen:1:uut|c_out~0_combout\,
	datac => \x2~combout\(2),
	datad => \x1~combout\(2),
	combout => \c0~13_combout\);

-- Location: LCCOMB_X36_Y1_N30
\instanciaSomador|gen:1:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instanciaSomador|gen:1:uut|cout~0_combout\ = (\x2~combout\(1) & ((\x1~combout\(1)) # ((\x2~combout\(0) & \x1~combout\(0))))) # (!\x2~combout\(1) & (\x1~combout\(1) & (\x2~combout\(0) & \x1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \x1~combout\(1),
	datac => \x2~combout\(0),
	datad => \x1~combout\(0),
	combout => \instanciaSomador|gen:1:uut|cout~0_combout\);

-- Location: LCCOMB_X35_Y1_N22
\instanciaSomador|gen:2:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instanciaSomador|gen:2:uut|cout~0_combout\ = (\instanciaSomador|gen:1:uut|cout~0_combout\ & ((\x2~combout\(2)) # (\x1~combout\(2)))) # (!\instanciaSomador|gen:1:uut|cout~0_combout\ & (\x2~combout\(2) & \x1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instanciaSomador|gen:1:uut|cout~0_combout\,
	datac => \x2~combout\(2),
	datad => \x1~combout\(2),
	combout => \instanciaSomador|gen:2:uut|cout~0_combout\);

-- Location: LCCOMB_X35_Y1_N28
\c0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~11_combout\ = (\chave~combout\(2) & (!\chave~combout\(0) & !\chave~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave~combout\(2),
	datac => \chave~combout\(0),
	datad => \chave~combout\(1),
	combout => \c0~11_combout\);

-- Location: LCCOMB_X35_Y1_N16
\c0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~12_combout\ = (\c0~11_combout\ & ((\x2~combout\(3) & ((\instanciaSomador|gen:2:uut|cout~0_combout\) # (\x1~combout\(3)))) # (!\x2~combout\(3) & (\instanciaSomador|gen:2:uut|cout~0_combout\ & \x1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(3),
	datab => \instanciaSomador|gen:2:uut|cout~0_combout\,
	datac => \x1~combout\(3),
	datad => \c0~11_combout\,
	combout => \c0~12_combout\);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x2(3),
	combout => \x2~combout\(3));

-- Location: LCCOMB_X35_Y1_N12
\c0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~14_combout\ = (!\chave~combout\(2) & (!\chave~combout\(1) & (!\chave~combout\(0) & \x2~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave~combout\(2),
	datab => \chave~combout\(1),
	datac => \chave~combout\(0),
	datad => \x2~combout\(3),
	combout => \c0~14_combout\);

-- Location: LCCOMB_X35_Y1_N6
\c0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~15_combout\ = (\c0~10_combout\) # ((\c0~12_combout\) # ((\c0~13_combout\ & \c0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~10_combout\,
	datab => \c0~13_combout\,
	datac => \c0~12_combout\,
	datad => \c0~14_combout\,
	combout => \c0~15_combout\);

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaf[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(0));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaf[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(1));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaf[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaf[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(3));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaf[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(4));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl(0));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl(1));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c0);
END structure;


