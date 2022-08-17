-- Copyright (C) 1991-2009 Altera Corporation
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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.1 Build 222 10/21/2009 SJ Web Edition"
-- CREATED		"Wed Aug 17 08:48:07 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ta2 IS 
	PORT
	(
		input_J :  IN  STD_LOGIC;
		input_K :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		output :  OUT  STD_LOGIC
	);
END ta2;

ARCHITECTURE bdf_type OF ta2 IS 



BEGIN 



PROCESS(clk)
VARIABLE synthesized_var_for_output : STD_LOGIC;
BEGIN
IF (RISING_EDGE(clk)) THEN
	synthesized_var_for_output := (NOT(synthesized_var_for_output) AND input_J) OR (synthesized_var_for_output AND (NOT(input_K)));
END IF;
	output <= synthesized_var_for_output;
END PROCESS;


END bdf_type;