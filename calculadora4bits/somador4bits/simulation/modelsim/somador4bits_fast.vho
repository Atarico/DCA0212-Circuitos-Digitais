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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "04/06/2019 19:15:01"

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

ENTITY 	somador4bits IS
    PORT (
	asum : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	bsum : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	cinsum : IN std_logic;
	ssum : OUT STD.STANDARD.bit_vector(3 DOWNTO 0);
	coutsum : OUT STD.STANDARD.bit
	);
END somador4bits;

-- Design Ports Information
-- ssum[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssum[1]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssum[2]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssum[3]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- coutsum	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- asum[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bsum[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cinsum	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bsum[1]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- asum[1]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- asum[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bsum[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- asum[3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bsum[3]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF somador4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_asum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bsum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cinsum : std_logic;
SIGNAL ww_ssum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_coutsum : std_logic;
SIGNAL \cinsum~combout\ : std_logic;
SIGNAL \gen:0:uut|s~0_combout\ : std_logic;
SIGNAL \gen:0:uut|cout~0_combout\ : std_logic;
SIGNAL \gen:1:uut|s~combout\ : std_logic;
SIGNAL \gen:2:uut|s~0_combout\ : std_logic;
SIGNAL \gen:2:uut|s~combout\ : std_logic;
SIGNAL \gen:2:uut|cout~0_combout\ : std_logic;
SIGNAL \gen:2:uut|cout~1_combout\ : std_logic;
SIGNAL \gen:2:uut|cout~2_combout\ : std_logic;
SIGNAL \gen:3:uut|s~combout\ : std_logic;
SIGNAL \gen:3:uut|cout~0_combout\ : std_logic;
SIGNAL \bsum~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \asum~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_asum <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(asum);
ww_bsum <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(bsum);
ww_cinsum <= cinsum;
ssum <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_ssum);
coutsum <= IEEE.STD_LOGIC_1164.TO_BIT(ww_coutsum);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsum[0]~I\ : cycloneii_io
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
	padio => ww_bsum(0),
	combout => \bsum~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asum[0]~I\ : cycloneii_io
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
	padio => ww_asum(0),
	combout => \asum~combout\(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cinsum~I\ : cycloneii_io
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
	padio => ww_cinsum,
	combout => \cinsum~combout\);

-- Location: LCCOMB_X56_Y35_N8
\gen:0:uut|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:0:uut|s~0_combout\ = \bsum~combout\(0) $ (\asum~combout\(0) $ (\cinsum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsum~combout\(0),
	datac => \asum~combout\(0),
	datad => \cinsum~combout\,
	combout => \gen:0:uut|s~0_combout\);

-- Location: LCCOMB_X56_Y35_N18
\gen:0:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:0:uut|cout~0_combout\ = (\bsum~combout\(0) & ((\asum~combout\(0)) # (\cinsum~combout\))) # (!\bsum~combout\(0) & (\asum~combout\(0) & \cinsum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsum~combout\(0),
	datac => \asum~combout\(0),
	datad => \cinsum~combout\,
	combout => \gen:0:uut|cout~0_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsum[1]~I\ : cycloneii_io
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
	padio => ww_bsum(1),
	combout => \bsum~combout\(1));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asum[1]~I\ : cycloneii_io
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
	padio => ww_asum(1),
	combout => \asum~combout\(1));

-- Location: LCCOMB_X56_Y35_N12
\gen:1:uut|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:1:uut|s~combout\ = \gen:0:uut|cout~0_combout\ $ (\bsum~combout\(1) $ (\asum~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen:0:uut|cout~0_combout\,
	datac => \bsum~combout\(1),
	datad => \asum~combout\(1),
	combout => \gen:1:uut|s~combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsum[2]~I\ : cycloneii_io
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
	padio => ww_bsum(2),
	combout => \bsum~combout\(2));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asum[2]~I\ : cycloneii_io
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
	padio => ww_asum(2),
	combout => \asum~combout\(2));

-- Location: LCCOMB_X56_Y35_N6
\gen:2:uut|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|s~0_combout\ = \bsum~combout\(2) $ (\asum~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsum~combout\(2),
	datad => \asum~combout\(2),
	combout => \gen:2:uut|s~0_combout\);

-- Location: LCCOMB_X56_Y35_N16
\gen:2:uut|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|s~combout\ = \gen:2:uut|s~0_combout\ $ (((\gen:0:uut|cout~0_combout\ & ((\bsum~combout\(1)) # (\asum~combout\(1)))) # (!\gen:0:uut|cout~0_combout\ & (\bsum~combout\(1) & \asum~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:2:uut|s~0_combout\,
	datab => \gen:0:uut|cout~0_combout\,
	datac => \bsum~combout\(1),
	datad => \asum~combout\(1),
	combout => \gen:2:uut|s~combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\asum[3]~I\ : cycloneii_io
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
	padio => ww_asum(3),
	combout => \asum~combout\(3));

-- Location: LCCOMB_X56_Y35_N26
\gen:2:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|cout~0_combout\ = (\bsum~combout\(2) & \asum~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsum~combout\(2),
	datad => \asum~combout\(2),
	combout => \gen:2:uut|cout~0_combout\);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bsum[3]~I\ : cycloneii_io
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
	padio => ww_bsum(3),
	combout => \bsum~combout\(3));

-- Location: LCCOMB_X56_Y35_N28
\gen:2:uut|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|cout~1_combout\ = (\bsum~combout\(2)) # (\asum~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsum~combout\(2),
	datad => \asum~combout\(2),
	combout => \gen:2:uut|cout~1_combout\);

-- Location: LCCOMB_X56_Y35_N30
\gen:2:uut|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:2:uut|cout~2_combout\ = (\gen:2:uut|cout~1_combout\ & ((\asum~combout\(1) & ((\gen:0:uut|cout~0_combout\) # (\bsum~combout\(1)))) # (!\asum~combout\(1) & (\gen:0:uut|cout~0_combout\ & \bsum~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asum~combout\(1),
	datab => \gen:0:uut|cout~0_combout\,
	datac => \bsum~combout\(1),
	datad => \gen:2:uut|cout~1_combout\,
	combout => \gen:2:uut|cout~2_combout\);

-- Location: LCCOMB_X56_Y35_N0
\gen:3:uut|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:3:uut|s~combout\ = \asum~combout\(3) $ (\bsum~combout\(3) $ (((\gen:2:uut|cout~0_combout\) # (\gen:2:uut|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asum~combout\(3),
	datab => \gen:2:uut|cout~0_combout\,
	datac => \bsum~combout\(3),
	datad => \gen:2:uut|cout~2_combout\,
	combout => \gen:3:uut|s~combout\);

-- Location: LCCOMB_X56_Y35_N2
\gen:3:uut|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gen:3:uut|cout~0_combout\ = (\asum~combout\(3) & ((\gen:2:uut|cout~0_combout\) # ((\bsum~combout\(3)) # (\gen:2:uut|cout~2_combout\)))) # (!\asum~combout\(3) & (\bsum~combout\(3) & ((\gen:2:uut|cout~0_combout\) # (\gen:2:uut|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \asum~combout\(3),
	datab => \gen:2:uut|cout~0_combout\,
	datac => \bsum~combout\(3),
	datad => \gen:2:uut|cout~2_combout\,
	combout => \gen:3:uut|cout~0_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssum[0]~I\ : cycloneii_io
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
	datain => \gen:0:uut|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssum(0));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssum[1]~I\ : cycloneii_io
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
	datain => \gen:1:uut|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssum(1));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssum[2]~I\ : cycloneii_io
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
	datain => \gen:2:uut|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssum(2));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssum[3]~I\ : cycloneii_io
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
	datain => \gen:3:uut|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssum(3));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\coutsum~I\ : cycloneii_io
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
	datain => \gen:3:uut|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_coutsum);
END structure;


