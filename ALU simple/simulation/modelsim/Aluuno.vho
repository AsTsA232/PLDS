-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "03/25/2025 12:14:05"

-- 
-- Device: Altera EPM240F100C4 Package FBGA100
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Aluuno IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	op : IN std_logic_vector(1 DOWNTO 0);
	M : IN std_logic;
	C : OUT std_logic;
	F : OUT std_logic_vector(3 DOWNTO 0)
	);
END Aluuno;

-- Design Ports Information


ARCHITECTURE structure OF Aluuno IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add1~22_cout0\ : std_logic;
SIGNAL \Add1~22COUT1_26\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_27\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_28\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_29\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \M~combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \C$latch~combout\ : std_logic;
SIGNAL \F[0]~0_combout\ : std_logic;
SIGNAL \F[0]~1_combout\ : std_logic;
SIGNAL \F[0]~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~17_cout0\ : std_logic;
SIGNAL \Add2~17COUT1_21\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \F[1]~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \F[1]~5_combout\ : std_logic;
SIGNAL \F[1]~6_combout\ : std_logic;
SIGNAL \F[1]~3_combout\ : std_logic;
SIGNAL \F[1]~7_combout\ : std_logic;
SIGNAL \F[1]~8_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_22\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \F[2]~9_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \F[2]~10_combout\ : std_logic;
SIGNAL \F[2]~11_combout\ : std_logic;
SIGNAL \F[2]~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~7COUT1_23\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \F[3]~13_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \F[3]~14_combout\ : std_logic;
SIGNAL \F[3]~15_combout\ : std_logic;
SIGNAL \F[3]~16_combout\ : std_logic;
SIGNAL \op~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_op <= op;
ww_M <= M;
C <= ww_C;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LC_X7_Y3_N0
\Add1~22\ : maxii_lcell
-- Equation(s):
-- \Add1~22_cout0\ = CARRY((\B~combout\(0) & (\A~combout\(0))))
-- \Add1~22COUT1_26\ = CARRY((\B~combout\(0) & (\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20\,
	cout0 => \Add1~22_cout0\,
	cout1 => \Add1~22COUT1_26\);

-- Location: LC_X7_Y3_N1
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = \B~combout\(1) $ (\A~combout\(1) $ ((\Add1~22_cout0\)))
-- \Add1~2\ = CARRY((\B~combout\(1) & (!\A~combout\(1) & !\Add1~22_cout0\)) # (!\B~combout\(1) & ((!\Add1~22_cout0\) # (!\A~combout\(1)))))
-- \Add1~2COUT1_27\ = CARRY((\B~combout\(1) & (!\A~combout\(1) & !\Add1~22COUT1_26\)) # (!\B~combout\(1) & ((!\Add1~22COUT1_26\) # (!\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	cin0 => \Add1~22_cout0\,
	cin1 => \Add1~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_27\);

-- Location: LC_X7_Y3_N2
\Add1~5\ : maxii_lcell
-- Equation(s):
-- \Add1~5_combout\ = \A~combout\(2) $ (\B~combout\(2) $ ((!\Add1~2\)))
-- \Add1~7\ = CARRY((\A~combout\(2) & ((\B~combout\(2)) # (!\Add1~2\))) # (!\A~combout\(2) & (\B~combout\(2) & !\Add1~2\)))
-- \Add1~7COUT1_28\ = CARRY((\A~combout\(2) & ((\B~combout\(2)) # (!\Add1~2COUT1_27\))) # (!\A~combout\(2) & (\B~combout\(2) & !\Add1~2COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_28\);

-- Location: LC_X7_Y3_N3
\Add1~10\ : maxii_lcell
-- Equation(s):
-- \Add1~10_combout\ = \A~combout\(3) $ (\B~combout\(3) $ ((\Add1~7\)))
-- \Add1~12\ = CARRY((\A~combout\(3) & (!\B~combout\(3) & !\Add1~7\)) # (!\A~combout\(3) & ((!\Add1~7\) # (!\B~combout\(3)))))
-- \Add1~12COUT1_29\ = CARRY((\A~combout\(3) & (!\B~combout\(3) & !\Add1~7COUT1_28\)) # (!\A~combout\(3) & ((!\Add1~7COUT1_28\) # (!\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_29\);

-- Location: LC_X7_Y3_N4
\Add1~15\ : maxii_lcell
-- Equation(s):
-- \Add1~15_combout\ = (((!\Add1~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op(1),
	combout => \op~combout\(1));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op(0),
	combout => \op~combout\(0));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\M~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_M,
	combout => \M~combout\);

-- Location: LC_X2_Y4_N2
\C~0\ : maxii_lcell
-- Equation(s):
-- \C~0_combout\ = (\op~combout\(1)) # (((\M~combout\) # (!\op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datac => \op~combout\(0),
	datad => \M~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~0_combout\);

-- Location: LC_X2_Y4_N3
\C$latch\ : maxii_lcell
-- Equation(s):
-- \C$latch~combout\ = ((\C~0_combout\ & (\C$latch~combout\)) # (!\C~0_combout\ & ((\Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C$latch~combout\,
	datac => \Add1~15_combout\,
	datad => \C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C$latch~combout\);

-- Location: LC_X2_Y4_N8
\F[0]~0\ : maxii_lcell
-- Equation(s):
-- \F[0]~0_combout\ = (\op~combout\(0) & ((\M~combout\ & (!\B~combout\(0))) # (!\M~combout\ & (\B~combout\(0) & !\op~combout\(1))))) # (!\op~combout\(0) & ((\M~combout\ $ (\B~combout\(0))) # (!\op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c7d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \M~combout\,
	datac => \B~combout\(0),
	datad => \op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[0]~0_combout\);

-- Location: LC_X2_Y4_N0
\F[0]~1\ : maxii_lcell
-- Equation(s):
-- \F[0]~1_combout\ = (\op~combout\(0) & ((\op~combout\(1)) # ((\A~combout\(0) & !\M~combout\)))) # (!\op~combout\(0) & (\A~combout\(0) & (!\M~combout\ & \op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \M~combout\,
	datac => \op~combout\(0),
	datad => \op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[0]~1_combout\);

-- Location: LC_X2_Y4_N4
\F[0]~2\ : maxii_lcell
-- Equation(s):
-- \F[0]~2_combout\ = (\F[0]~0_combout\ & (((!\B~combout\(0) & \F[0]~1_combout\)) # (!\A~combout\(0)))) # (!\F[0]~0_combout\ & (!\B~combout\(0) & ((\F[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~0_combout\,
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \F[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[0]~2_combout\);

-- Location: LC_X6_Y4_N5
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = \A~combout\(1) $ ((((\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X6_Y4_N0
\Add2~17\ : maxii_lcell
-- Equation(s):
-- \Add2~17_cout0\ = CARRY(((\A~combout\(0))) # (!\B~combout\(0)))
-- \Add2~17COUT1_21\ = CARRY(((\A~combout\(0))) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdd",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15\,
	cout0 => \Add2~17_cout0\,
	cout1 => \Add2~17COUT1_21\);

-- Location: LC_X6_Y4_N1
\Add2~0\ : maxii_lcell
-- Equation(s):
-- \Add2~0_combout\ = \A~combout\(1) $ (\B~combout\(1) $ ((!\Add2~17_cout0\)))
-- \Add2~2\ = CARRY((\A~combout\(1) & (\B~combout\(1) & !\Add2~17_cout0\)) # (!\A~combout\(1) & ((\B~combout\(1)) # (!\Add2~17_cout0\))))
-- \Add2~2COUT1_22\ = CARRY((\A~combout\(1) & (\B~combout\(1) & !\Add2~17COUT1_21\)) # (!\A~combout\(1) & ((\B~combout\(1)) # (!\Add2~17COUT1_21\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	cin0 => \Add2~17_cout0\,
	cin1 => \Add2~17COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_22\);

-- Location: LC_X6_Y4_N4
\F[1]~4\ : maxii_lcell
-- Equation(s):
-- \F[1]~4_combout\ = (\op~combout\(0) & (((\op~combout\(1))))) # (!\op~combout\(0) & ((\op~combout\(1) & ((\Add2~0_combout\))) # (!\op~combout\(1) & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \op~combout\(0),
	datac => \op~combout\(1),
	datad => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[1]~4_combout\);

-- Location: LC_X6_Y4_N6
\Add3~0\ : maxii_lcell
-- Equation(s):
-- \Add3~0_combout\ = ((\B~combout\(0) $ (\B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(0),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\);

-- Location: LC_X6_Y4_N7
\F[1]~5\ : maxii_lcell
-- Equation(s):
-- \F[1]~5_combout\ = (\F[1]~4_combout\ & (((!\Add3~0_combout\)) # (!\op~combout\(0)))) # (!\F[1]~4_combout\ & (\op~combout\(0) & ((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~4_combout\,
	datab => \op~combout\(0),
	datac => \Add3~0_combout\,
	datad => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[1]~5_combout\);

-- Location: LC_X2_Y4_N1
\F[1]~6\ : maxii_lcell
-- Equation(s):
-- \F[1]~6_combout\ = ((\op~combout\(0) $ (\op~combout\(1))) # (!\M~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \M~combout\,
	datac => \op~combout\(0),
	datad => \op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[1]~6_combout\);

-- Location: LC_X2_Y4_N6
\F[1]~3\ : maxii_lcell
-- Equation(s):
-- \F[1]~3_combout\ = ((\M~combout\ & ((\op~combout\(0)) # (\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \M~combout\,
	datac => \op~combout\(0),
	datad => \op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[1]~3_combout\);

-- Location: LC_X2_Y2_N2
\F[1]~7\ : maxii_lcell
-- Equation(s):
-- \F[1]~7_combout\ = (\F[1]~6_combout\ & ((\F[1]~5_combout\) # ((\F[1]~3_combout\)))) # (!\F[1]~6_combout\ & (((!\A~combout\(1) & !\F[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~5_combout\,
	datab => \F[1]~6_combout\,
	datac => \A~combout\(1),
	datad => \F[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[1]~7_combout\);

-- Location: LC_X2_Y2_N9
\F[1]~8\ : maxii_lcell
-- Equation(s):
-- \F[1]~8_combout\ = (\F[1]~3_combout\ & (!\B~combout\(1) & ((!\A~combout\(1)) # (!\F[1]~7_combout\)))) # (!\F[1]~3_combout\ & (((\F[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \F[1]~7_combout\,
	datac => \A~combout\(1),
	datad => \F[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[1]~8_combout\);

-- Location: LC_X6_Y4_N8
\Add3~1\ : maxii_lcell
-- Equation(s):
-- \Add3~1_combout\ = (\B~combout\(2) $ (((\B~combout\(0)) # (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \B~combout\(2),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~1_combout\);

-- Location: LC_X6_Y4_N2
\Add2~5\ : maxii_lcell
-- Equation(s):
-- \Add2~5_combout\ = \A~combout\(2) $ (\B~combout\(2) $ ((\Add2~2\)))
-- \Add2~7\ = CARRY((\A~combout\(2) & ((!\Add2~2\) # (!\B~combout\(2)))) # (!\A~combout\(2) & (!\B~combout\(2) & !\Add2~2\)))
-- \Add2~7COUT1_23\ = CARRY((\A~combout\(2) & ((!\Add2~2COUT1_22\) # (!\B~combout\(2)))) # (!\A~combout\(2) & (!\B~combout\(2) & !\Add2~2COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout0 => \Add2~7\,
	cout1 => \Add2~7COUT1_23\);

-- Location: LC_X6_Y4_N9
\F[2]~9\ : maxii_lcell
-- Equation(s):
-- \F[2]~9_combout\ = (\op~combout\(0) & (((!\op~combout\(1))) # (!\Add3~1_combout\))) # (!\op~combout\(0) & (((\op~combout\(1) & \Add2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \op~combout\(0),
	datac => \op~combout\(1),
	datad => \Add2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[2]~9_combout\);

-- Location: LC_X7_Y3_N5
\Add0~1\ : maxii_lcell
-- Equation(s):
-- \Add0~1_combout\ = \A~combout\(2) $ (((\A~combout\(1) & ((\A~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~1_combout\);

-- Location: LC_X2_Y4_N5
\F[2]~10\ : maxii_lcell
-- Equation(s):
-- \F[2]~10_combout\ = (\F[2]~9_combout\ & ((\Add1~5_combout\) # ((\op~combout\(1))))) # (!\F[2]~9_combout\ & (((\Add0~1_combout\ & !\op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[2]~9_combout\,
	datab => \Add1~5_combout\,
	datac => \Add0~1_combout\,
	datad => \op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[2]~10_combout\);

-- Location: LC_X2_Y4_N7
\F[2]~11\ : maxii_lcell
-- Equation(s):
-- \F[2]~11_combout\ = (\F[1]~3_combout\ & (\B~combout\(2))) # (!\F[1]~3_combout\ & (((\F[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~3_combout\,
	datab => \B~combout\(2),
	datac => \F[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[2]~11_combout\);

-- Location: LC_X2_Y4_N9
\F[2]~12\ : maxii_lcell
-- Equation(s):
-- \F[2]~12_combout\ = (\F[1]~3_combout\ & (!\F[2]~11_combout\ & ((!\F[1]~6_combout\) # (!\A~combout\(2))))) # (!\F[1]~3_combout\ & ((\F[1]~6_combout\ & (\F[2]~11_combout\)) # (!\F[1]~6_combout\ & ((!\A~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4627",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~3_combout\,
	datab => \F[2]~11_combout\,
	datac => \A~combout\(2),
	datad => \F[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[2]~12_combout\);

-- Location: LC_X7_Y3_N9
\Add0~2\ : maxii_lcell
-- Equation(s):
-- \Add0~2_combout\ = \A~combout\(3) $ (((\A~combout\(2) & (\A~combout\(1) & \A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(1),
	datac => \A~combout\(3),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\);

-- Location: LC_X6_Y4_N3
\Add2~10\ : maxii_lcell
-- Equation(s):
-- \Add2~10_combout\ = (\A~combout\(3) $ (\Add2~7\ $ (!\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => \B~combout\(3),
	cin0 => \Add2~7\,
	cin1 => \Add2~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\);

-- Location: LC_X7_Y3_N6
\F[3]~13\ : maxii_lcell
-- Equation(s):
-- \F[3]~13_combout\ = (\op~combout\(0) & (((\op~combout\(1))))) # (!\op~combout\(0) & ((\op~combout\(1) & ((\Add2~10_combout\))) # (!\op~combout\(1) & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \Add0~2_combout\,
	datac => \Add2~10_combout\,
	datad => \op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[3]~13_combout\);

-- Location: LC_X7_Y3_N8
\Add3~2\ : maxii_lcell
-- Equation(s):
-- \Add3~2_combout\ = \B~combout\(3) $ (((\B~combout\(2)) # ((\B~combout\(1)) # (\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f1e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \B~combout\(1),
	datac => \B~combout\(3),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~2_combout\);

-- Location: LC_X7_Y3_N7
\F[3]~14\ : maxii_lcell
-- Equation(s):
-- \F[3]~14_combout\ = (\op~combout\(0) & ((\F[3]~13_combout\ & ((!\Add3~2_combout\))) # (!\F[3]~13_combout\ & (\Add1~10_combout\)))) # (!\op~combout\(0) & (((\F[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "38f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \op~combout\(0),
	datac => \F[3]~13_combout\,
	datad => \Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[3]~14_combout\);

-- Location: LC_X2_Y2_N5
\F[3]~15\ : maxii_lcell
-- Equation(s):
-- \F[3]~15_combout\ = (\F[1]~3_combout\ & (((\F[1]~6_combout\)))) # (!\F[1]~3_combout\ & ((\F[1]~6_combout\ & ((\F[3]~14_combout\))) # (!\F[1]~6_combout\ & (!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1c1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \F[1]~3_combout\,
	datac => \F[1]~6_combout\,
	datad => \F[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[3]~15_combout\);

-- Location: LC_X2_Y2_N3
\F[3]~16\ : maxii_lcell
-- Equation(s):
-- \F[3]~16_combout\ = (\F[1]~3_combout\ & (!\B~combout\(3) & ((!\F[3]~15_combout\) # (!\A~combout\(3))))) # (!\F[1]~3_combout\ & (((\F[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "307c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \F[1]~3_combout\,
	datac => \F[3]~15_combout\,
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F[3]~16_combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \C$latch~combout\,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F[0]~2_combout\,
	oe => VCC,
	padio => ww_F(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F[1]~8_combout\,
	oe => VCC,
	padio => ww_F(1));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F[2]~12_combout\,
	oe => VCC,
	padio => ww_F(2));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\F[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F[3]~16_combout\,
	oe => VCC,
	padio => ww_F(3));
END structure;


