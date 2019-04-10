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

-- DATE "04/09/2019 17:41:58"

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

ENTITY 	display7seg IS
    PORT (
	xseg : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	aseg : OUT STD.STANDARD.bit;
	bseg : OUT STD.STANDARD.bit;
	cseg : OUT STD.STANDARD.bit;
	dseg : OUT STD.STANDARD.bit;
	eseg : OUT STD.STANDARD.bit;
	fseg : OUT STD.STANDARD.bit;
	gseg : OUT STD.STANDARD.bit
	);
END display7seg;

-- Design Ports Information
-- aseg	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bseg	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cseg	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dseg	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- eseg	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fseg	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gseg	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- xseg[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- xseg[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- xseg[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- xseg[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF display7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_xseg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_aseg : std_logic;
SIGNAL ww_bseg : std_logic;
SIGNAL ww_cseg : std_logic;
SIGNAL ww_dseg : std_logic;
SIGNAL ww_eseg : std_logic;
SIGNAL ww_fseg : std_logic;
SIGNAL ww_gseg : std_logic;
SIGNAL \aseg~0_combout\ : std_logic;
SIGNAL \bseg~0_combout\ : std_logic;
SIGNAL \cseg~0_combout\ : std_logic;
SIGNAL \dseg~0_combout\ : std_logic;
SIGNAL \eseg~0_combout\ : std_logic;
SIGNAL \fseg~0_combout\ : std_logic;
SIGNAL \gseg~0_combout\ : std_logic;
SIGNAL \xseg~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_xseg <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(xseg);
aseg <= IEEE.STD_LOGIC_1164.TO_BIT(ww_aseg);
bseg <= IEEE.STD_LOGIC_1164.TO_BIT(ww_bseg);
cseg <= IEEE.STD_LOGIC_1164.TO_BIT(ww_cseg);
dseg <= IEEE.STD_LOGIC_1164.TO_BIT(ww_dseg);
eseg <= IEEE.STD_LOGIC_1164.TO_BIT(ww_eseg);
fseg <= IEEE.STD_LOGIC_1164.TO_BIT(ww_fseg);
gseg <= IEEE.STD_LOGIC_1164.TO_BIT(ww_gseg);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\xseg[1]~I\ : cycloneii_io
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
	padio => ww_xseg(1),
	combout => \xseg~combout\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\xseg[0]~I\ : cycloneii_io
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
	padio => ww_xseg(0),
	combout => \xseg~combout\(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\xseg[2]~I\ : cycloneii_io
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
	padio => ww_xseg(2),
	combout => \xseg~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\xseg[3]~I\ : cycloneii_io
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
	padio => ww_xseg(3),
	combout => \xseg~combout\(3));

-- Location: LCCOMB_X29_Y35_N0
\aseg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aseg~0_combout\ = (\xseg~combout\(2) & (!\xseg~combout\(1) & (\xseg~combout\(0) $ (!\xseg~combout\(3))))) # (!\xseg~combout\(2) & (\xseg~combout\(0) & (\xseg~combout\(1) $ (!\xseg~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xseg~combout\(1),
	datab => \xseg~combout\(0),
	datac => \xseg~combout\(2),
	datad => \xseg~combout\(3),
	combout => \aseg~0_combout\);

-- Location: LCCOMB_X29_Y35_N26
\bseg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bseg~0_combout\ = (\xseg~combout\(1) & ((\xseg~combout\(0) & ((\xseg~combout\(3)))) # (!\xseg~combout\(0) & (\xseg~combout\(2))))) # (!\xseg~combout\(1) & (\xseg~combout\(2) & (\xseg~combout\(0) $ (\xseg~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xseg~combout\(1),
	datab => \xseg~combout\(0),
	datac => \xseg~combout\(2),
	datad => \xseg~combout\(3),
	combout => \bseg~0_combout\);

-- Location: LCCOMB_X29_Y35_N12
\cseg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cseg~0_combout\ = (\xseg~combout\(2) & (\xseg~combout\(3) & ((\xseg~combout\(1)) # (!\xseg~combout\(0))))) # (!\xseg~combout\(2) & (\xseg~combout\(1) & (!\xseg~combout\(0) & !\xseg~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xseg~combout\(1),
	datab => \xseg~combout\(0),
	datac => \xseg~combout\(2),
	datad => \xseg~combout\(3),
	combout => \cseg~0_combout\);

-- Location: LCCOMB_X29_Y35_N22
\dseg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dseg~0_combout\ = (\xseg~combout\(1) & ((\xseg~combout\(0) & (\xseg~combout\(2))) # (!\xseg~combout\(0) & (!\xseg~combout\(2) & \xseg~combout\(3))))) # (!\xseg~combout\(1) & (!\xseg~combout\(3) & (\xseg~combout\(0) $ (\xseg~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xseg~combout\(1),
	datab => \xseg~combout\(0),
	datac => \xseg~combout\(2),
	datad => \xseg~combout\(3),
	combout => \dseg~0_combout\);

-- Location: LCCOMB_X29_Y35_N16
\eseg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \eseg~0_combout\ = (\xseg~combout\(1) & (\xseg~combout\(0) & ((!\xseg~combout\(3))))) # (!\xseg~combout\(1) & ((\xseg~combout\(2) & ((!\xseg~combout\(3)))) # (!\xseg~combout\(2) & (\xseg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xseg~combout\(1),
	datab => \xseg~combout\(0),
	datac => \xseg~combout\(2),
	datad => \xseg~combout\(3),
	combout => \eseg~0_combout\);

-- Location: LCCOMB_X29_Y35_N2
\fseg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fseg~0_combout\ = (\xseg~combout\(1) & (!\xseg~combout\(3) & ((\xseg~combout\(0)) # (!\xseg~combout\(2))))) # (!\xseg~combout\(1) & (\xseg~combout\(0) & (\xseg~combout\(2) $ (!\xseg~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xseg~combout\(1),
	datab => \xseg~combout\(0),
	datac => \xseg~combout\(2),
	datad => \xseg~combout\(3),
	combout => \fseg~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\gseg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gseg~0_combout\ = (\xseg~combout\(0) & (!\xseg~combout\(3) & (\xseg~combout\(1) $ (!\xseg~combout\(2))))) # (!\xseg~combout\(0) & (!\xseg~combout\(1) & (\xseg~combout\(2) $ (!\xseg~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xseg~combout\(1),
	datab => \xseg~combout\(0),
	datac => \xseg~combout\(2),
	datad => \xseg~combout\(3),
	combout => \gseg~0_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aseg~I\ : cycloneii_io
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
	datain => \aseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aseg);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bseg~I\ : cycloneii_io
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
	datain => \bseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bseg);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cseg~I\ : cycloneii_io
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
	datain => \cseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cseg);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dseg~I\ : cycloneii_io
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
	datain => \dseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dseg);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\eseg~I\ : cycloneii_io
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
	datain => \eseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_eseg);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fseg~I\ : cycloneii_io
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
	datain => \fseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fseg);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gseg~I\ : cycloneii_io
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
	datain => \gseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gseg);
END structure;


