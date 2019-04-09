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

-- DATE "04/08/2019 16:54:52"

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

ENTITY 	subtrator4bits IS
    PORT (
	cinsb : IN std_logic;
	asb : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	bsb : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	coutsb : OUT STD.STANDARD.bit;
	ssb : OUT STD.STANDARD.bit_vector(3 DOWNTO 0)
	);
END subtrator4bits;

-- Design Ports Information
-- coutsb	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssb[0]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssb[1]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssb[2]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssb[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bsb[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bsb[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- asb[2]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bsb[1]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bsb[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cinsb	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- asb[0]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- asb[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- asb[3]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF subtrator4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cinsb : std_logic;
SIGNAL ww_asb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bsb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_coutsb : std_logic;
SIGNAL ww_ssb : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen:2:uut|c_out~0_combout\ : std_logic;
SIGNAL \cinsb~combout\ : std_logic;
SIGNAL \gen:0:uut|c_out~0_combout\ : std_logic;
SIGNAL \gen:2:uut|c_out~1_combout\ : std_logic;
SIGNAL \gen:2:uut|c_out~2_combout\ : std_logic;
SIGNAL \gen:3:uut|c_out~0_combout\ : std_logic;
SIGNAL \gen:0:uut|S~0_combout\ : std_logic;
SIGNAL \gen:1:uut|S~combout\ : std_logic;
SIGNAL \gen:2:uut|S~0_combout\ : std_logic;
SIGNAL \gen:2:uut|S~combout\ : std_logic;
SIGNAL \gen:3:uut|S~combout\ : std_logic;
SIGNAL \bsb~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \asb~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_cinsb <= cinsb;
ww_asb <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(asb);
ww_bsb <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(bsb);
coutsb <= IEEE.STD_LOGIC_1164.TO_BIT(ww_coutsb);
ssb <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_ssb);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asb[3]~I\ : cycloneii_io
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
	padio => ww_asb(3),
	combout => \asb~combout\(3));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asb[2]~I\ : cycloneii_io
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
	padio => ww_asb(2),
	combout => \asb~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsb[2]~I\ : cycloneii_io
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
	padio => ww_bsb(2),
	combout => \bsb~combout\(2));

-- Location: LCCOMB_X64_Y33_N0
\gen:2:uut|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|c_out~0_combout\ = (!\asb~combout\(2) & \bsb~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asb~combout\(2),
	datac => \bsb~combout\(2),
	combout => \gen:2:uut|c_out~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsb[3]~I\ : cycloneii_io
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
	padio => ww_bsb(3),
	combout => \bsb~combout\(3));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asb[0]~I\ : cycloneii_io
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
	padio => ww_asb(0),
	combout => \asb~combout\(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cinsb~I\ : cycloneii_io
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
	padio => ww_cinsb,
	combout => \cinsb~combout\);

-- Location: LCCOMB_X64_Y33_N28
\gen:0:uut|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:0:uut|c_out~0_combout\ = (\bsb~combout\(0) & ((\cinsb~combout\) # (!\asb~combout\(0)))) # (!\bsb~combout\(0) & (!\asb~combout\(0) & \cinsb~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bsb~combout\(0),
	datab => \asb~combout\(0),
	datad => \cinsb~combout\,
	combout => \gen:0:uut|c_out~0_combout\);

-- Location: LCCOMB_X64_Y33_N26
\gen:2:uut|c_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|c_out~1_combout\ = (\bsb~combout\(2)) # (!\asb~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asb~combout\(2),
	datac => \bsb~combout\(2),
	combout => \gen:2:uut|c_out~1_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asb[1]~I\ : cycloneii_io
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
	padio => ww_asb(1),
	combout => \asb~combout\(1));

-- Location: LCCOMB_X64_Y33_N30
\gen:2:uut|c_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|c_out~2_combout\ = (\gen:2:uut|c_out~1_combout\ & ((\bsb~combout\(1) & ((\gen:0:uut|c_out~0_combout\) # (!\asb~combout\(1)))) # (!\bsb~combout\(1) & (\gen:0:uut|c_out~0_combout\ & !\asb~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bsb~combout\(1),
	datab => \gen:0:uut|c_out~0_combout\,
	datac => \gen:2:uut|c_out~1_combout\,
	datad => \asb~combout\(1),
	combout => \gen:2:uut|c_out~2_combout\);

-- Location: LCCOMB_X64_Y33_N16
\gen:3:uut|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:3:uut|c_out~0_combout\ = (\asb~combout\(3) & (\bsb~combout\(3) & ((\gen:2:uut|c_out~0_combout\) # (\gen:2:uut|c_out~2_combout\)))) # (!\asb~combout\(3) & ((\gen:2:uut|c_out~0_combout\) # ((\bsb~combout\(3)) # (\gen:2:uut|c_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asb~combout\(3),
	datab => \gen:2:uut|c_out~0_combout\,
	datac => \bsb~combout\(3),
	datad => \gen:2:uut|c_out~2_combout\,
	combout => \gen:3:uut|c_out~0_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsb[0]~I\ : cycloneii_io
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
	padio => ww_bsb(0),
	combout => \bsb~combout\(0));

-- Location: LCCOMB_X64_Y33_N2
\gen:0:uut|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:0:uut|S~0_combout\ = \bsb~combout\(0) $ (\asb~combout\(0) $ (\cinsb~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bsb~combout\(0),
	datab => \asb~combout\(0),
	datad => \cinsb~combout\,
	combout => \gen:0:uut|S~0_combout\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsb[1]~I\ : cycloneii_io
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
	padio => ww_bsb(1),
	combout => \bsb~combout\(1));

-- Location: LCCOMB_X64_Y33_N12
\gen:1:uut|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:1:uut|S~combout\ = \gen:0:uut|c_out~0_combout\ $ (\bsb~combout\(1) $ (\asb~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen:0:uut|c_out~0_combout\,
	datac => \bsb~combout\(1),
	datad => \asb~combout\(1),
	combout => \gen:1:uut|S~combout\);

-- Location: LCCOMB_X64_Y33_N6
\gen:2:uut|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|S~0_combout\ = \asb~combout\(2) $ (\bsb~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \asb~combout\(2),
	datac => \bsb~combout\(2),
	combout => \gen:2:uut|S~0_combout\);

-- Location: LCCOMB_X64_Y33_N24
\gen:2:uut|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|S~combout\ = \gen:2:uut|S~0_combout\ $ (((\gen:0:uut|c_out~0_combout\ & ((\bsb~combout\(1)) # (!\asb~combout\(1)))) # (!\gen:0:uut|c_out~0_combout\ & (\bsb~combout\(1) & !\asb~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:2:uut|S~0_combout\,
	datab => \gen:0:uut|c_out~0_combout\,
	datac => \bsb~combout\(1),
	datad => \asb~combout\(1),
	combout => \gen:2:uut|S~combout\);

-- Location: LCCOMB_X64_Y33_N18
\gen:3:uut|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:3:uut|S~combout\ = \asb~combout\(3) $ (\bsb~combout\(3) $ (((\gen:2:uut|c_out~0_combout\) # (\gen:2:uut|c_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asb~combout\(3),
	datab => \gen:2:uut|c_out~0_combout\,
	datac => \bsb~combout\(3),
	datad => \gen:2:uut|c_out~2_combout\,
	combout => \gen:3:uut|S~combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\coutsb~I\ : cycloneii_io
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
	datain => \gen:3:uut|c_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_coutsb);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssb[0]~I\ : cycloneii_io
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
	datain => \gen:0:uut|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssb(0));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssb[1]~I\ : cycloneii_io
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
	datain => \gen:1:uut|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssb(1));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssb[2]~I\ : cycloneii_io
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
	datain => \gen:2:uut|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssb(2));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssb[3]~I\ : cycloneii_io
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
	datain => \gen:3:uut|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssb(3));
END structure;


