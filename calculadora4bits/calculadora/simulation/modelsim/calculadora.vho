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

-- DATE "04/08/2019 19:34:33"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculadora IS
    PORT (
	x1 : IN std_logic_vector(3 DOWNTO 0);
	x2 : IN std_logic_vector(3 DOWNTO 0);
	chave : IN std_logic_vector(2 DOWNTO 0);
	saidaf : OUT std_logic_vector(3 DOWNTO 0);
	ctrl : OUT std_logic_vector(1 DOWNTO 0);
	c0 : OUT std_logic
	);
END calculadora;

-- Design Ports Information
-- saidaf[0]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaf[1]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaf[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaf[3]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl[0]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl[1]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c0	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x1[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- chave[2]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- chave[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- chave[1]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[1]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[2]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[3]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[3]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_saidaf : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_c0 : std_logic;
SIGNAL \multiplexador|gen:0:uut|saida~0_combout\ : std_logic;
SIGNAL \multiplexador|gen:0:uut|saida~1_combout\ : std_logic;
SIGNAL \multiplexador|gen:1:uut|saida~2_combout\ : std_logic;
SIGNAL \multiplexador|gen:1:uut|saida~3_combout\ : std_logic;
SIGNAL \instanciaSomador|gen:1:uut|cout~0_combout\ : std_logic;
SIGNAL \multiplexador|gen:2:uut|saida~0_combout\ : std_logic;
SIGNAL \instanciaSomador|gen:2:uut|cout~0_combout\ : std_logic;
SIGNAL \multiplexador|gen:3:uut|saida~0_combout\ : std_logic;
SIGNAL \instanciaSomador|gen:3:uut|cout~0_combout\ : std_logic;
SIGNAL \x2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \chave~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_x1 <= x1;
ww_x2 <= x2;
ww_chave <= chave;
saidaf <= ww_saidaf;
ctrl <= ww_ctrl;
c0 <= ww_c0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y13_N16
\multiplexador|gen:0:uut|saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador|gen:0:uut|saida~0_combout\ = (\chave~combout\(2) & ((\chave~combout\(1)) # (\chave~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave~combout\(1),
	datac => \chave~combout\(2),
	datad => \chave~combout\(0),
	combout => \multiplexador|gen:0:uut|saida~0_combout\);

-- Location: LCCOMB_X64_Y13_N18
\multiplexador|gen:0:uut|saida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador|gen:0:uut|saida~1_combout\ = (!\multiplexador|gen:0:uut|saida~0_combout\ & (\x2~combout\(0) $ (\x1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(0),
	datab => \x1~combout\(0),
	datac => \multiplexador|gen:0:uut|saida~0_combout\,
	combout => \multiplexador|gen:0:uut|saida~1_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y13_N28
\multiplexador|gen:1:uut|saida~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador|gen:1:uut|saida~2_combout\ = \x1~combout\(1) $ (\x2~combout\(1) $ (((\x2~combout\(0) & \x1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(0),
	datab => \x1~combout\(1),
	datac => \x1~combout\(0),
	datad => \x2~combout\(1),
	combout => \multiplexador|gen:1:uut|saida~2_combout\);

-- Location: LCCOMB_X64_Y13_N0
\multiplexador|gen:1:uut|saida~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador|gen:1:uut|saida~3_combout\ = (\multiplexador|gen:1:uut|saida~2_combout\ & (((!\chave~combout\(1) & !\chave~combout\(0))) # (!\chave~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave~combout\(1),
	datab => \multiplexador|gen:1:uut|saida~2_combout\,
	datac => \chave~combout\(2),
	datad => \chave~combout\(0),
	combout => \multiplexador|gen:1:uut|saida~3_combout\);

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y13_N6
\instanciaSomador|gen:1:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instanciaSomador|gen:1:uut|cout~0_combout\ = (\x1~combout\(1) & ((\x2~combout\(1)) # ((\x2~combout\(0) & \x1~combout\(0))))) # (!\x1~combout\(1) & (\x2~combout\(0) & (\x1~combout\(0) & \x2~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(0),
	datab => \x1~combout\(1),
	datac => \x1~combout\(0),
	datad => \x2~combout\(1),
	combout => \instanciaSomador|gen:1:uut|cout~0_combout\);

-- Location: LCCOMB_X64_Y13_N8
\multiplexador|gen:2:uut|saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador|gen:2:uut|saida~0_combout\ = (!\multiplexador|gen:0:uut|saida~0_combout\ & (\x1~combout\(2) $ (\x2~combout\(2) $ (\instanciaSomador|gen:1:uut|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador|gen:0:uut|saida~0_combout\,
	datab => \x1~combout\(2),
	datac => \x2~combout\(2),
	datad => \instanciaSomador|gen:1:uut|cout~0_combout\,
	combout => \multiplexador|gen:2:uut|saida~0_combout\);

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y13_N2
\instanciaSomador|gen:2:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instanciaSomador|gen:2:uut|cout~0_combout\ = (\instanciaSomador|gen:1:uut|cout~0_combout\ & ((\x2~combout\(2)) # (\x1~combout\(2)))) # (!\instanciaSomador|gen:1:uut|cout~0_combout\ & (\x2~combout\(2) & \x1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaSomador|gen:1:uut|cout~0_combout\,
	datab => \x2~combout\(2),
	datac => \x1~combout\(2),
	combout => \instanciaSomador|gen:2:uut|cout~0_combout\);

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y13_N4
\multiplexador|gen:3:uut|saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador|gen:3:uut|saida~0_combout\ = (!\multiplexador|gen:0:uut|saida~0_combout\ & (\x2~combout\(3) $ (\instanciaSomador|gen:2:uut|cout~0_combout\ $ (\x1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(3),
	datab => \instanciaSomador|gen:2:uut|cout~0_combout\,
	datac => \multiplexador|gen:0:uut|saida~0_combout\,
	datad => \x1~combout\(3),
	combout => \multiplexador|gen:3:uut|saida~0_combout\);

-- Location: LCCOMB_X64_Y13_N22
\instanciaSomador|gen:3:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instanciaSomador|gen:3:uut|cout~0_combout\ = (\x2~combout\(3) & ((\instanciaSomador|gen:2:uut|cout~0_combout\) # (\x1~combout\(3)))) # (!\x2~combout\(3) & (\instanciaSomador|gen:2:uut|cout~0_combout\ & \x1~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(3),
	datab => \instanciaSomador|gen:2:uut|cout~0_combout\,
	datad => \x1~combout\(3),
	combout => \instanciaSomador|gen:3:uut|cout~0_combout\);

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \multiplexador|gen:0:uut|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(0));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \multiplexador|gen:1:uut|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(1));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \multiplexador|gen:2:uut|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(2));

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \multiplexador|gen:3:uut|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaf(3));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instanciaSomador|gen:3:uut|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c0);
END structure;


