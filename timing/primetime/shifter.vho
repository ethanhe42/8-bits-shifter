-- Copyright (C) 1991-2005 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic       
-- functions, and any output files any of the foregoing           
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
-- PROGRAM "Quartus II"
-- VERSION "Version 5.0 Build 148 04/26/2005 SJ Full Version"

-- DATE "11/11/2016 21:36:31"

-- 
-- Device: Altera EP1C6Q240C6 Package PQFP240
-- 

-- 
-- This VHDL file should be used for PRIMETIME only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY 	shifter IS
    PORT (
	clock : IN std_logic;
	n : IN std_logic_vector(2 DOWNTO 0);
	kind : IN std_logic_vector(1 DOWNTO 0);
	dir : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	rst : IN std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END shifter;

ARCHITECTURE structure OF shifter IS
SIGNAL GNDs : std_logic_vector(255 DOWNTO 0);
SIGNAL VCCs : std_logic_vector(255 DOWNTO 0);
SIGNAL gnd : std_logic;
SIGNAL vcc : std_logic;
SIGNAL lcell_ff_enable_asynch_arcs_out : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_n : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_kind : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dir : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL clock_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL kind_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL kind_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2331_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2331_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL n_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL dir_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2343_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2343_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_in_a4_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2321_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2321_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2322_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2322_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_in_a2_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_in_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2329_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2329_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2330_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2330_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL rst_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL y_a0_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a0_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a0_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a0_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_in_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2337_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2337_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2312_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2312_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_in_a7_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2345_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2345_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_in_a5_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_in_a3_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL n_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2324_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2324_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2323_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2323_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a3_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a3_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2365_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2365_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL y_a3_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a3_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2367_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2367_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a3_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a3_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_in_a6_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL Mux_a2333_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2333_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a5_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a5_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL y_a5_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a5_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2336_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2336_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a5_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a5_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2344_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2344_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2356_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2356_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2355_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2355_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2357_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2357_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a7_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a7_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2359_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2359_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2360_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2360_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2361_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2361_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2362_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2362_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL y_a7_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a7_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a7_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a7_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a1_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a1_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2339_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2339_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2311_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2311_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2340_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2340_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2341_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2341_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL y_a1_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a1_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a1_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a1_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a2_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a2_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2352_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2352_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2353_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2353_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL y_a2_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a2_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a2_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a2_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2325_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2325_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a4_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a4_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2327_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2327_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL y_a4_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a4_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a4_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a4_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2346_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2346_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a6_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a6_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2348_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2348_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2349_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2349_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL y_a6_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL y_a6_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL qtemp_a6_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL qtemp_a6_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2314_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2314_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL x_a0_a_aI_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL x_a0_a_aI_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2315_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2315_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2316_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2316_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2317_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2317_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2318_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2318_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2319_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2319_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL Mux_a2320_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL Mux_a2320_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a0_a_a85_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a0_a_a85_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL n_a2_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a0_a_a86_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a0_a_a86_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a0_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a0_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a1_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a1_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a2_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a2_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a3_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a3_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a4_a_a87_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a4_a_a87_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a4_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a4_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a5_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a5_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a6_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a6_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a7_a_areg0_I_modesel : std_logic_vector(12 DOWNTO 0);
SIGNAL data_out_a7_a_areg0_I_pathsel : std_logic_vector(10 DOWNTO 0);
SIGNAL data_out_a0_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a1_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a2_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a3_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a4_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a5_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a6_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL data_out_a7_a_aI_modesel : std_logic_vector(26 DOWNTO 0);
SIGNAL x_a0_a : std_logic;
SIGNAL x_a4_a : std_logic;
SIGNAL y_a4_a : std_logic;
SIGNAL y_a0_a : std_logic;
SIGNAL x_a5_a : std_logic;
SIGNAL y_a5_a : std_logic;
SIGNAL x_a1_a : std_logic;
SIGNAL y_a1_a : std_logic;
SIGNAL x_a6_a : std_logic;
SIGNAL y_a6_a : std_logic;
SIGNAL x_a2_a : std_logic;
SIGNAL y_a2_a : std_logic;
SIGNAL x_a7_a : std_logic;
SIGNAL y_a7_a : std_logic;
SIGNAL x_a3_a : std_logic;
SIGNAL y_a3_a : std_logic;
SIGNAL clock_acombout : std_logic;
SIGNAL kind_a0_a_acombout : std_logic;
SIGNAL kind_a1_a_acombout : std_logic;
SIGNAL Mux_a2331 : std_logic;
SIGNAL n_a1_a_acombout : std_logic;
SIGNAL dir_acombout : std_logic;
SIGNAL Mux_a2343 : std_logic;
SIGNAL data_in_a4_a_acombout : std_logic;
SIGNAL Mux_a2321 : std_logic;
SIGNAL Mux_a2322 : std_logic;
SIGNAL data_in_a2_a_acombout : std_logic;
SIGNAL data_in_a0_a_acombout : std_logic;
SIGNAL Mux_a2329 : std_logic;
SIGNAL Mux_a2330 : std_logic;
SIGNAL rst_acombout : std_logic;
SIGNAL Mux_a2332 : std_logic;
SIGNAL qtemp_a0_a : std_logic;
SIGNAL data_in_a1_a_acombout : std_logic;
SIGNAL Mux_a2337 : std_logic;
SIGNAL Mux_a2312 : std_logic;
SIGNAL data_in_a7_a_acombout : std_logic;
SIGNAL Mux_a2345 : std_logic;
SIGNAL data_in_a5_a_acombout : std_logic;
SIGNAL data_in_a3_a_acombout : std_logic;
SIGNAL n_a0_a_acombout : std_logic;
SIGNAL Mux_a2324 : std_logic;
SIGNAL Mux_a2323 : std_logic;
SIGNAL Mux_a2364 : std_logic;
SIGNAL Mux_a2365 : std_logic;
SIGNAL Mux_a2366 : std_logic;
SIGNAL Mux_a2367 : std_logic;
SIGNAL qtemp_a3_a : std_logic;
SIGNAL data_in_a6_a_acombout : std_logic;
SIGNAL Mux_a2333 : std_logic;
SIGNAL Mux_a2334 : std_logic;
SIGNAL Mux_a2335 : std_logic;
SIGNAL Mux_a2336 : std_logic;
SIGNAL qtemp_a5_a : std_logic;
SIGNAL Mux_a2344 : std_logic;
SIGNAL Mux_a2356 : std_logic;
SIGNAL Mux_a2355 : std_logic;
SIGNAL Mux_a2357 : std_logic;
SIGNAL Mux_a2358 : std_logic;
SIGNAL Mux_a2359 : std_logic;
SIGNAL Mux_a2360 : std_logic;
SIGNAL Mux_a2361 : std_logic;
SIGNAL Mux_a2362 : std_logic;
SIGNAL Mux_a2363 : std_logic;
SIGNAL qtemp_a7_a : std_logic;
SIGNAL Mux_a2338 : std_logic;
SIGNAL Mux_a2339 : std_logic;
SIGNAL Mux_a2311 : std_logic;
SIGNAL Mux_a2340 : std_logic;
SIGNAL Mux_a2341 : std_logic;
SIGNAL Mux_a2342 : std_logic;
SIGNAL qtemp_a1_a : std_logic;
SIGNAL Mux_a2351 : std_logic;
SIGNAL Mux_a2352 : std_logic;
SIGNAL Mux_a2353 : std_logic;
SIGNAL Mux_a2354 : std_logic;
SIGNAL qtemp_a2_a : std_logic;
SIGNAL Mux_a2325 : std_logic;
SIGNAL Mux_a2326 : std_logic;
SIGNAL Mux_a2327 : std_logic;
SIGNAL Mux_a2328 : std_logic;
SIGNAL qtemp_a4_a : std_logic;
SIGNAL Mux_a2346 : std_logic;
SIGNAL Mux_a2347 : std_logic;
SIGNAL Mux_a2348 : std_logic;
SIGNAL Mux_a2349 : std_logic;
SIGNAL Mux_a2350 : std_logic;
SIGNAL qtemp_a6_a : std_logic;
SIGNAL Mux_a2314 : std_logic;
SIGNAL Mux_a2313 : std_logic;
SIGNAL Mux_a2315 : std_logic;
SIGNAL Mux_a2316 : std_logic;
SIGNAL Mux_a2317 : std_logic;
SIGNAL Mux_a2318 : std_logic;
SIGNAL Mux_a2319 : std_logic;
SIGNAL Mux_a2320 : std_logic;
SIGNAL data_out_a0_a_a85 : std_logic;
SIGNAL n_a2_a_acombout : std_logic;
SIGNAL data_out_a0_a_a86 : std_logic;
SIGNAL data_out_a0_a_areg0 : std_logic;
SIGNAL data_out_a1_a_areg0 : std_logic;
SIGNAL data_out_a2_a_areg0 : std_logic;
SIGNAL data_out_a3_a_areg0 : std_logic;
SIGNAL data_out_a4_a_a87 : std_logic;
SIGNAL data_out_a4_a_areg0 : std_logic;
SIGNAL data_out_a5_a_areg0 : std_logic;
SIGNAL data_out_a6_a_areg0 : std_logic;
SIGNAL data_out_a7_a_areg0 : std_logic;
SIGNAL ALT_INV_n_a2_a_acombout : std_logic;
SIGNAL ALT_INV_rst_acombout : std_logic;
COMPONENT cyclone_lcell
PORT (
	clk : IN STD_LOGIC;
	dataa : IN STD_LOGIC;
	datab : IN STD_LOGIC;
	datac : IN STD_LOGIC;
	datad : IN STD_LOGIC;
	aclr : IN STD_LOGIC;
	aload : IN STD_LOGIC;
	sclr : IN STD_LOGIC;
	sload : IN STD_LOGIC;
	ena : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	cin0 : IN STD_LOGIC;
	cin1 : IN STD_LOGIC;
	inverta : IN STD_LOGIC;
	regcascin : IN STD_LOGIC;
	combout : OUT STD_LOGIC;
	regout : OUT STD_LOGIC;
	cout : OUT STD_LOGIC;
	cout0 : OUT STD_LOGIC;
	cout1 : OUT STD_LOGIC;
	MODESEL : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
	PATHSEL : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	ENABLE_ASYNCH_ARCS : IN STD_LOGIC);
END COMPONENT;

COMPONENT cyclone_io
PORT (
	datain : IN STD_LOGIC;
	oe : IN STD_LOGIC;
	outclk : IN STD_LOGIC;
	outclkena : IN STD_LOGIC;
	inclk : IN STD_LOGIC;
	inclkena : IN STD_LOGIC;
	areset : IN STD_LOGIC;
	sreset : IN STD_LOGIC;
	combout : OUT STD_LOGIC;
	regout : OUT STD_LOGIC;
	padio : INOUT STD_LOGIC;
	MODESEL : IN STD_LOGIC_VECTOR(26 DOWNTO 0));
END COMPONENT;


COMPONENT INV
    PORT (
	IN1 : IN std_logic;
	Y :  OUT std_logic);
END COMPONENT;

COMPONENT AND1
    PORT (
	IN1 : IN std_logic;
	Y :  OUT std_logic);
END COMPONENT;
BEGIN

ww_clock <= clock;
ww_n <= n;
ww_kind <= kind;
ww_dir <= dir;
ww_data_in <= data_in;
ww_rst <= rst;
data_out <= ww_data_out;

gnd <= '0';
vcc <= '1';
GNDs <= (OTHERS => '0');
VCCs <= (OTHERS => '1');

clock_aI_modesel <= "000000000000000000000000001";
kind_a0_a_aI_modesel <= "000000000000000000000000001";
kind_a1_a_aI_modesel <= "000000000000000000000000001";
Mux_a2331_I_modesel <= "1001001010101";
Mux_a2331_I_pathsel <= "00000000110";
n_a1_a_aI_modesel <= "000000000000000000000000001";
dir_aI_modesel <= "000000000000000000000000001";
Mux_a2343_I_modesel <= "1001001010101";
Mux_a2343_I_pathsel <= "00000001111";
data_in_a4_a_aI_modesel <= "000000000000000000000000001";
Mux_a2321_I_modesel <= "1001001010101";
Mux_a2321_I_pathsel <= "00000001111";
Mux_a2322_I_modesel <= "1001001010101";
Mux_a2322_I_pathsel <= "00000001110";
data_in_a2_a_aI_modesel <= "000000000000000000000000001";
data_in_a0_a_aI_modesel <= "000000000000000000000000001";
Mux_a2329_I_modesel <= "1001001010101";
Mux_a2329_I_pathsel <= "00000000110";
Mux_a2330_I_modesel <= "1001001010101";
Mux_a2330_I_pathsel <= "00000001111";
rst_aI_modesel <= "000000000000000000000000001";
y_a0_a_aI_modesel <= "1001100010101";
y_a0_a_aI_pathsel <= "00000101011";
qtemp_a0_a_aI_modesel <= "1100001010101";
qtemp_a0_a_aI_pathsel <= "00000001000";
data_in_a1_a_aI_modesel <= "000000000000000000000000001";
Mux_a2337_I_modesel <= "1001001010101";
Mux_a2337_I_pathsel <= "00000001111";
Mux_a2312_I_modesel <= "1001001010101";
Mux_a2312_I_pathsel <= "00000001111";
data_in_a7_a_aI_modesel <= "000000000000000000000000001";
Mux_a2345_I_modesel <= "1001001010101";
Mux_a2345_I_pathsel <= "00000001111";
data_in_a5_a_aI_modesel <= "000000000000000000000000001";
data_in_a3_a_aI_modesel <= "000000000000000000000000001";
n_a0_a_aI_modesel <= "000000000000000000000000001";
Mux_a2324_I_modesel <= "1001001010101";
Mux_a2324_I_pathsel <= "00000001110";
Mux_a2323_I_modesel <= "1001001010101";
Mux_a2323_I_pathsel <= "00000001111";
x_a3_a_aI_modesel <= "0001100011001";
x_a3_a_aI_pathsel <= "00000101011";
Mux_a2365_I_modesel <= "1001001010101";
Mux_a2365_I_pathsel <= "00000001111";
y_a3_a_aI_modesel <= "0001100011001";
y_a3_a_aI_pathsel <= "00000101011";
Mux_a2367_I_modesel <= "1001001010101";
Mux_a2367_I_pathsel <= "00000001111";
qtemp_a3_a_aI_modesel <= "1100001010101";
qtemp_a3_a_aI_pathsel <= "00000001000";
data_in_a6_a_aI_modesel <= "000000000000000000000000001";
Mux_a2333_I_modesel <= "1001001010101";
Mux_a2333_I_pathsel <= "00000001111";
x_a5_a_aI_modesel <= "1001100010101";
x_a5_a_aI_pathsel <= "00000101011";
y_a5_a_aI_modesel <= "0001100011001";
y_a5_a_aI_pathsel <= "00000101011";
Mux_a2336_I_modesel <= "1001001010101";
Mux_a2336_I_pathsel <= "00000001111";
qtemp_a5_a_aI_modesel <= "1100001010101";
qtemp_a5_a_aI_pathsel <= "00000001000";
Mux_a2344_I_modesel <= "1001001010101";
Mux_a2344_I_pathsel <= "00000000111";
Mux_a2356_I_modesel <= "1001001010101";
Mux_a2356_I_pathsel <= "00000000111";
Mux_a2355_I_modesel <= "1001001010101";
Mux_a2355_I_pathsel <= "00000001111";
Mux_a2357_I_modesel <= "1001001010101";
Mux_a2357_I_pathsel <= "00000001111";
x_a7_a_aI_modesel <= "1001100010101";
x_a7_a_aI_pathsel <= "00000101011";
Mux_a2359_I_modesel <= "1001001010101";
Mux_a2359_I_pathsel <= "00000001111";
Mux_a2360_I_modesel <= "1001001010101";
Mux_a2360_I_pathsel <= "00000001111";
Mux_a2361_I_modesel <= "1001001010101";
Mux_a2361_I_pathsel <= "00000001111";
Mux_a2362_I_modesel <= "1001001010101";
Mux_a2362_I_pathsel <= "00000001010";
y_a7_a_aI_modesel <= "1001100010101";
y_a7_a_aI_pathsel <= "00000101011";
qtemp_a7_a_aI_modesel <= "1100001010101";
qtemp_a7_a_aI_pathsel <= "00000001000";
x_a1_a_aI_modesel <= "0001100011001";
x_a1_a_aI_pathsel <= "00000101011";
Mux_a2339_I_modesel <= "1001001010101";
Mux_a2339_I_pathsel <= "00000001111";
Mux_a2311_I_modesel <= "1001001010101";
Mux_a2311_I_pathsel <= "00000001110";
Mux_a2340_I_modesel <= "1001001010101";
Mux_a2340_I_pathsel <= "00000001111";
Mux_a2341_I_modesel <= "1001001010101";
Mux_a2341_I_pathsel <= "00000001111";
y_a1_a_aI_modesel <= "1001100010101";
y_a1_a_aI_pathsel <= "00000101011";
qtemp_a1_a_aI_modesel <= "1100001010101";
qtemp_a1_a_aI_pathsel <= "00000001000";
x_a2_a_aI_modesel <= "0001100011001";
x_a2_a_aI_pathsel <= "00000101011";
Mux_a2352_I_modesel <= "1001001010101";
Mux_a2352_I_pathsel <= "00000001111";
Mux_a2353_I_modesel <= "1001001010101";
Mux_a2353_I_pathsel <= "00000001111";
y_a2_a_aI_modesel <= "1001100010101";
y_a2_a_aI_pathsel <= "00000101011";
qtemp_a2_a_aI_modesel <= "1100001010101";
qtemp_a2_a_aI_pathsel <= "00000001000";
Mux_a2325_I_modesel <= "1001001010101";
Mux_a2325_I_pathsel <= "00000001111";
x_a4_a_aI_modesel <= "1001100010101";
x_a4_a_aI_pathsel <= "00000101011";
Mux_a2327_I_modesel <= "1001001010101";
Mux_a2327_I_pathsel <= "00000001111";
y_a4_a_aI_modesel <= "1001100010101";
y_a4_a_aI_pathsel <= "00000101011";
qtemp_a4_a_aI_modesel <= "1100001010101";
qtemp_a4_a_aI_pathsel <= "00000001000";
Mux_a2346_I_modesel <= "1001001010101";
Mux_a2346_I_pathsel <= "00000001111";
x_a6_a_aI_modesel <= "1001100010101";
x_a6_a_aI_pathsel <= "00000101011";
Mux_a2348_I_modesel <= "1001001010101";
Mux_a2348_I_pathsel <= "00000001111";
Mux_a2349_I_modesel <= "1001001010101";
Mux_a2349_I_pathsel <= "00000001111";
y_a6_a_aI_modesel <= "1001100010101";
y_a6_a_aI_pathsel <= "00000101011";
qtemp_a6_a_aI_modesel <= "1100001010101";
qtemp_a6_a_aI_pathsel <= "00000000010";
Mux_a2314_I_modesel <= "1001001010101";
Mux_a2314_I_pathsel <= "00000001111";
x_a0_a_aI_modesel <= "0001100011001";
x_a0_a_aI_pathsel <= "00000101010";
Mux_a2315_I_modesel <= "1001001010101";
Mux_a2315_I_pathsel <= "00000001111";
Mux_a2316_I_modesel <= "1001001010101";
Mux_a2316_I_pathsel <= "00000001110";
Mux_a2317_I_modesel <= "1001001010101";
Mux_a2317_I_pathsel <= "00000001111";
Mux_a2318_I_modesel <= "1001001010101";
Mux_a2318_I_pathsel <= "00000001111";
Mux_a2319_I_modesel <= "1001001010101";
Mux_a2319_I_pathsel <= "00000001111";
Mux_a2320_I_modesel <= "1001001010101";
Mux_a2320_I_pathsel <= "00000001001";
data_out_a0_a_a85_I_modesel <= "1001001010101";
data_out_a0_a_a85_I_pathsel <= "00000000101";
n_a2_a_aI_modesel <= "000000000000000000000000001";
data_out_a0_a_a86_I_modesel <= "1001001010101";
data_out_a0_a_a86_I_pathsel <= "00000001011";
data_out_a0_a_areg0_I_modesel <= "1100001011001";
data_out_a0_a_areg0_I_pathsel <= "00000001011";
data_out_a1_a_areg0_I_modesel <= "1100001011001";
data_out_a1_a_areg0_I_pathsel <= "00000001011";
data_out_a2_a_areg0_I_modesel <= "1100001011001";
data_out_a2_a_areg0_I_pathsel <= "00000001011";
data_out_a3_a_areg0_I_modesel <= "1100001011001";
data_out_a3_a_areg0_I_pathsel <= "00000001011";
data_out_a4_a_a87_I_modesel <= "1001001010101";
data_out_a4_a_a87_I_pathsel <= "00000000101";
data_out_a4_a_areg0_I_modesel <= "1100001011001";
data_out_a4_a_areg0_I_pathsel <= "00000001011";
data_out_a5_a_areg0_I_modesel <= "1100001011001";
data_out_a5_a_areg0_I_pathsel <= "00000001011";
data_out_a6_a_areg0_I_modesel <= "1100001011001";
data_out_a6_a_areg0_I_pathsel <= "00000001011";
data_out_a7_a_areg0_I_modesel <= "1100001011001";
data_out_a7_a_areg0_I_pathsel <= "00000001011";
data_out_a0_a_aI_modesel <= "000000000000000000000000010";
data_out_a1_a_aI_modesel <= "000000000000000000000000010";
data_out_a2_a_aI_modesel <= "000000000000000000000000010";
data_out_a3_a_aI_modesel <= "000000000000000000000000010";
data_out_a4_a_aI_modesel <= "000000000000000000000000010";
data_out_a5_a_aI_modesel <= "000000000000000000000000010";
data_out_a6_a_aI_modesel <= "000000000000000000000000010";
data_out_a7_a_aI_modesel <= "000000000000000000000000010";

INV_INST_n_a2_a_acombout : INV
PORT MAP (
	 IN1 => n_a2_a_acombout,
	 Y => ALT_INV_n_a2_a_acombout);

INV_INST_rst_acombout : INV
PORT MAP (
	 IN1 => rst_acombout,
	 Y => ALT_INV_rst_acombout);

lcell_ff_enable_asynch_arcs : AND1
PORT MAP (
	 IN1 => GND,
	 Y => lcell_ff_enable_asynch_arcs_out);

clock_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => clock_aI_modesel,
	combout => clock_acombout,
	padio => ww_clock);

kind_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => kind_a0_a_aI_modesel,
	combout => kind_a0_a_acombout,
	padio => ww_kind(0));

kind_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => kind_a1_a_aI_modesel,
	combout => kind_a1_a_acombout,
	padio => ww_kind(1));

Mux_a2331_I : cyclone_lcell
-- Equation(s):
-- Mux_a2331 = kind_a0_a_acombout & kind_a1_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "C0C0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2331_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => kind_a0_a_acombout,
	datac => kind_a1_a_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2331_I_modesel,
	combout => Mux_a2331);

n_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => n_a1_a_aI_modesel,
	combout => n_a1_a_acombout,
	padio => ww_n(1));

dir_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => dir_aI_modesel,
	combout => dir_acombout,
	padio => ww_dir);

Mux_a2343_I : cyclone_lcell
-- Equation(s):
-- Mux_a2343 = !kind_a1_a_acombout & (!dir_acombout # !n_a1_a_acombout) # !kind_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "13FF",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2343_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => n_a1_a_acombout,
	datab => kind_a1_a_acombout,
	datac => dir_acombout,
	datad => kind_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2343_I_modesel,
	combout => Mux_a2343);

data_in_a4_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a4_a_aI_modesel,
	combout => data_in_a4_a_acombout,
	padio => ww_data_in(4));

Mux_a2321_I : cyclone_lcell
-- Equation(s):
-- Mux_a2321 = n_a1_a_acombout & (dir_acombout # kind_a1_a_acombout & kind_a0_a_acombout) # !n_a1_a_acombout & kind_a1_a_acombout & (kind_a0_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "ECA0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2321_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => n_a1_a_acombout,
	datab => kind_a1_a_acombout,
	datac => dir_acombout,
	datad => kind_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2321_I_modesel,
	combout => Mux_a2321);

Mux_a2322_I : cyclone_lcell
-- Equation(s):
-- Mux_a2322 = n_a1_a_acombout & (!kind_a0_a_acombout # !kind_a1_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "30F0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2322_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => kind_a1_a_acombout,
	datac => n_a1_a_acombout,
	datad => kind_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2322_I_modesel,
	combout => Mux_a2322);

data_in_a2_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a2_a_aI_modesel,
	combout => data_in_a2_a_acombout,
	padio => ww_data_in(2));

data_in_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a0_a_aI_modesel,
	combout => data_in_a0_a_acombout,
	padio => ww_data_in(0));

Mux_a2329_I : cyclone_lcell
-- Equation(s):
-- Mux_a2329 = !kind_a1_a_acombout & kind_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "3030",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2329_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => kind_a1_a_acombout,
	datac => kind_a0_a_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2329_I_modesel,
	combout => Mux_a2329);

Mux_a2330_I : cyclone_lcell
-- Equation(s):
-- Mux_a2330 = Mux_a2329 & Mux_a2319 & (dir_acombout # !n_a1_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "C400",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2330_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => n_a1_a_acombout,
	datab => Mux_a2329,
	datac => dir_acombout,
	datad => Mux_a2319,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2330_I_modesel,
	combout => Mux_a2330);

rst_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => rst_aI_modesel,
	combout => rst_acombout,
	padio => ww_rst);

y_a0_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2332 = Mux_a2330 # Mux_a2320 # y[0] & Mux_a2331

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "FEEE",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a0_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2330,
	datab => Mux_a2320,
	datac => VCC,
	datad => Mux_a2331,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a0_a_aI_modesel,
	combout => Mux_a2332);

qtemp_a0_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a0_a = DFFEAS(Mux_a2332, GLOBAL(clock_acombout), VCC, , , data_in_a0_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FF00",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a0_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => VCC,
	datac => data_in_a0_a_acombout,
	datad => Mux_a2332,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a0_a_aI_modesel,
	regout => qtemp_a0_a);

data_in_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a1_a_aI_modesel,
	combout => data_in_a1_a_acombout,
	padio => ww_data_in(1));

Mux_a2337_I : cyclone_lcell
-- Equation(s):
-- Mux_a2337 = !kind_a1_a_acombout & (dir_acombout # !n_a1_a_acombout) # !kind_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "0FBF",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2337_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => dir_acombout,
	datab => n_a1_a_acombout,
	datac => kind_a0_a_acombout,
	datad => kind_a1_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2337_I_modesel,
	combout => Mux_a2337);

Mux_a2312_I : cyclone_lcell
-- Equation(s):
-- Mux_a2312 = n_a1_a_acombout & (kind_a1_a_acombout & kind_a0_a_acombout # !dir_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "D050",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2312_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => dir_acombout,
	datab => kind_a1_a_acombout,
	datac => n_a1_a_acombout,
	datad => kind_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2312_I_modesel,
	combout => Mux_a2312);

data_in_a7_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a7_a_aI_modesel,
	combout => data_in_a7_a_acombout,
	padio => ww_data_in(7));

Mux_a2345_I : cyclone_lcell
-- Equation(s):
-- Mux_a2345 = n_a1_a_acombout & (dir_acombout # kind_a1_a_acombout & kind_a0_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "A8A0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2345_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => n_a1_a_acombout,
	datab => kind_a1_a_acombout,
	datac => dir_acombout,
	datad => kind_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2345_I_modesel,
	combout => Mux_a2345);

data_in_a5_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a5_a_aI_modesel,
	combout => data_in_a5_a_acombout,
	padio => ww_data_in(5));

data_in_a3_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a3_a_aI_modesel,
	combout => data_in_a3_a_acombout,
	padio => ww_data_in(3));

n_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => n_a0_a_aI_modesel,
	combout => n_a0_a_acombout,
	padio => ww_n(0));

Mux_a2324_I : cyclone_lcell
-- Equation(s):
-- Mux_a2324 = n_a0_a_acombout & (!kind_a0_a_acombout # !kind_a1_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "3F00",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2324_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => kind_a1_a_acombout,
	datac => kind_a0_a_acombout,
	datad => n_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2324_I_modesel,
	combout => Mux_a2324);

Mux_a2323_I : cyclone_lcell
-- Equation(s):
-- Mux_a2323 = kind_a0_a_acombout & (kind_a1_a_acombout # dir_acombout & n_a0_a_acombout) # !kind_a0_a_acombout & (dir_acombout & n_a0_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F888",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2323_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => kind_a0_a_acombout,
	datab => kind_a1_a_acombout,
	datac => dir_acombout,
	datad => n_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2323_I_modesel,
	combout => Mux_a2323);

x_a3_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2364 = Mux_a2323 & (x[3] # Mux_a2324) # !Mux_a2323 & qtemp_a3_a & (!Mux_a2324)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "CCE2",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a3_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => qtemp_a3_a,
	datab => Mux_a2323,
	datac => Mux_a2365,
	datad => Mux_a2324,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a3_a_aI_modesel,
	combout => Mux_a2364);

Mux_a2365_I : cyclone_lcell
-- Equation(s):
-- Mux_a2365 = Mux_a2324 & (Mux_a2364 & (data_in_a4_a_acombout) # !Mux_a2364 & qtemp_a2_a) # !Mux_a2324 & (Mux_a2364)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F858",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2365_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2324,
	datab => qtemp_a2_a,
	datac => Mux_a2364,
	datad => data_in_a4_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2365_I_modesel,
	combout => Mux_a2365);

y_a3_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2366 = Mux_a2322 & (Mux_a2321) # !Mux_a2322 & (Mux_a2321 & (y[3]) # !Mux_a2321 & Mux_a2365)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "FC22",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a3_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2365,
	datab => Mux_a2322,
	datac => Mux_a2367,
	datad => Mux_a2321,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a3_a_aI_modesel,
	combout => Mux_a2366);

Mux_a2367_I : cyclone_lcell
-- Equation(s):
-- Mux_a2367 = Mux_a2322 & (Mux_a2366 & (qtemp_a5_a) # !Mux_a2366 & qtemp_a1_a) # !Mux_a2322 & (Mux_a2366)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "CFA0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2367_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => qtemp_a1_a,
	datab => qtemp_a5_a,
	datac => Mux_a2322,
	datad => Mux_a2366,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2367_I_modesel,
	combout => Mux_a2367);

qtemp_a3_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a3_a = DFFEAS(Mux_a2367, GLOBAL(clock_acombout), VCC, , , data_in_a3_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FF00",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a3_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => VCC,
	datac => data_in_a3_a_acombout,
	datad => Mux_a2367,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a3_a_aI_modesel,
	regout => qtemp_a3_a);

data_in_a6_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_in_a6_a_aI_modesel,
	combout => data_in_a6_a_acombout,
	padio => ww_data_in(6));

Mux_a2333_I : cyclone_lcell
-- Equation(s):
-- Mux_a2333 = Mux_a2323 & (Mux_a2324) # !Mux_a2323 & (Mux_a2324 & qtemp_a4_a # !Mux_a2324 & (qtemp_a5_a))

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "E5E0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2333_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2323,
	datab => qtemp_a4_a,
	datac => Mux_a2324,
	datad => qtemp_a5_a,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2333_I_modesel,
	combout => Mux_a2333);

x_a5_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2334 = Mux_a2323 & (Mux_a2333 & data_in_a6_a_acombout # !Mux_a2333 & (x[5])) # !Mux_a2323 & (Mux_a2333)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "BBC0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a5_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => data_in_a6_a_acombout,
	datab => Mux_a2323,
	datac => VCC,
	datad => Mux_a2333,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a5_a_aI_modesel,
	combout => Mux_a2334);

y_a5_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2335 = Mux_a2321 & (Mux_a2322 # y[5]) # !Mux_a2321 & !Mux_a2322 & (Mux_a2334)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "B9A8",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a5_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2321,
	datab => Mux_a2322,
	datac => Mux_a2336,
	datad => Mux_a2334,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a5_a_aI_modesel,
	combout => Mux_a2335);

Mux_a2336_I : cyclone_lcell
-- Equation(s):
-- Mux_a2336 = Mux_a2335 & (qtemp_a7_a # !Mux_a2322) # !Mux_a2335 & qtemp_a3_a & Mux_a2322

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "EC2C",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2336_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => qtemp_a3_a,
	datab => Mux_a2335,
	datac => Mux_a2322,
	datad => qtemp_a7_a,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2336_I_modesel,
	combout => Mux_a2336);

qtemp_a5_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a5_a = DFFEAS(Mux_a2336, GLOBAL(clock_acombout), VCC, , , data_in_a5_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FF00",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a5_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => VCC,
	datac => data_in_a5_a_acombout,
	datad => Mux_a2336,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a5_a_aI_modesel,
	regout => qtemp_a5_a);

Mux_a2344_I : cyclone_lcell
-- Equation(s):
-- Mux_a2344 = n_a1_a_acombout & (kind_a1_a_acombout # !dir_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "8A8A",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2344_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => n_a1_a_acombout,
	datab => kind_a1_a_acombout,
	datac => dir_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2344_I_modesel,
	combout => Mux_a2344);

Mux_a2356_I : cyclone_lcell
-- Equation(s):
-- Mux_a2356 = n_a0_a_acombout & (dir_acombout) # !n_a0_a_acombout & qtemp_a7_a

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "E4E4",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2356_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => n_a0_a_acombout,
	datab => qtemp_a7_a,
	datac => dir_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2356_I_modesel,
	combout => Mux_a2356);

Mux_a2355_I : cyclone_lcell
-- Equation(s):
-- Mux_a2355 = kind_a0_a_acombout & kind_a1_a_acombout # !kind_a0_a_acombout & (kind_a1_a_acombout & (data_in_a0_a_acombout) # !kind_a1_a_acombout & data_in_a7_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "DC98",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2355_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => kind_a0_a_acombout,
	datab => kind_a1_a_acombout,
	datac => data_in_a7_a_acombout,
	datad => data_in_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2355_I_modesel,
	combout => Mux_a2355);

Mux_a2357_I : cyclone_lcell
-- Equation(s):
-- Mux_a2357 = Mux_a2356 & (Mux_a2355 # !n_a0_a_acombout) # !Mux_a2356 & qtemp_a6_a & n_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "EA4A",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2357_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2356,
	datab => qtemp_a6_a,
	datac => n_a0_a_acombout,
	datad => Mux_a2355,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2357_I_modesel,
	combout => Mux_a2357);

x_a7_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2358 = kind_a0_a_acombout & (Mux_a2355 & (x[7]) # !Mux_a2355 & Mux_a2357) # !kind_a0_a_acombout & Mux_a2357

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "E2AA",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a7_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2357,
	datab => kind_a0_a_acombout,
	datac => VCC,
	datad => Mux_a2355,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a7_a_aI_modesel,
	combout => Mux_a2358);

Mux_a2359_I : cyclone_lcell
-- Equation(s):
-- Mux_a2359 = Mux_a2344 & (qtemp_a5_a # Mux_a2345) # !Mux_a2344 & (!Mux_a2345 & Mux_a2358)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "CBC8",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2359_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => qtemp_a5_a,
	datab => Mux_a2344,
	datac => Mux_a2345,
	datad => Mux_a2358,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2359_I_modesel,
	combout => Mux_a2359);

Mux_a2360_I : cyclone_lcell
-- Equation(s):
-- Mux_a2360 = Mux_a2345 & (Mux_a2359 & (qtemp_a1_a) # !Mux_a2359 & qtemp_a7_a) # !Mux_a2345 & Mux_a2359

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "EC64",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2360_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2345,
	datab => Mux_a2359,
	datac => qtemp_a7_a,
	datad => qtemp_a1_a,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2360_I_modesel,
	combout => Mux_a2360);

Mux_a2361_I : cyclone_lcell
-- Equation(s):
-- Mux_a2361 = Mux_a2360 & Mux_a2329 & (!dir_acombout # !n_a1_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "4C00",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2361_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => n_a1_a_acombout,
	datab => Mux_a2360,
	datac => dir_acombout,
	datad => Mux_a2329,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2361_I_modesel,
	combout => Mux_a2361);

Mux_a2362_I : cyclone_lcell
-- Equation(s):
-- Mux_a2362 = !kind_a0_a_acombout & (Mux_a2360)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "3300",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2362_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => kind_a0_a_acombout,
	datac => VCC,
	datad => Mux_a2360,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2362_I_modesel,
	combout => Mux_a2362);

y_a7_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2363 = Mux_a2361 # Mux_a2362 # Mux_a2331 & y[7]

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "FFEA",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a7_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2361,
	datab => Mux_a2331,
	datac => VCC,
	datad => Mux_a2362,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a7_a_aI_modesel,
	combout => Mux_a2363);

qtemp_a7_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a7_a = DFFEAS(Mux_a2363, GLOBAL(clock_acombout), VCC, , , data_in_a7_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FF00",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a7_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => VCC,
	datac => data_in_a7_a_acombout,
	datad => Mux_a2363,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a7_a_aI_modesel,
	regout => qtemp_a7_a);

x_a1_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2338 = Mux_a2324 & (Mux_a2323) # !Mux_a2324 & (Mux_a2323 & (x[1]) # !Mux_a2323 & qtemp_a1_a)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "FC22",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a1_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => qtemp_a1_a,
	datab => Mux_a2324,
	datac => Mux_a2339,
	datad => Mux_a2323,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a1_a_aI_modesel,
	combout => Mux_a2338);

Mux_a2339_I : cyclone_lcell
-- Equation(s):
-- Mux_a2339 = Mux_a2324 & (Mux_a2338 & data_in_a2_a_acombout # !Mux_a2338 & (qtemp_a0_a)) # !Mux_a2324 & (Mux_a2338)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "BBC0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2339_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => data_in_a2_a_acombout,
	datab => Mux_a2324,
	datac => qtemp_a0_a,
	datad => Mux_a2338,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2339_I_modesel,
	combout => Mux_a2339);

Mux_a2311_I : cyclone_lcell
-- Equation(s):
-- Mux_a2311 = n_a1_a_acombout & (kind_a1_a_acombout # dir_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F0C0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2311_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => kind_a1_a_acombout,
	datac => n_a1_a_acombout,
	datad => dir_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2311_I_modesel,
	combout => Mux_a2311);

Mux_a2340_I : cyclone_lcell
-- Equation(s):
-- Mux_a2340 = Mux_a2312 & (Mux_a2311) # !Mux_a2312 & (Mux_a2311 & (qtemp_a3_a) # !Mux_a2311 & Mux_a2339)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F4A4",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2340_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2312,
	datab => Mux_a2339,
	datac => Mux_a2311,
	datad => qtemp_a3_a,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2340_I_modesel,
	combout => Mux_a2340);

Mux_a2341_I : cyclone_lcell
-- Equation(s):
-- Mux_a2341 = Mux_a2312 & (Mux_a2340 & qtemp_a7_a # !Mux_a2340 & (qtemp_a0_a)) # !Mux_a2312 & (Mux_a2340)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "DDA0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2341_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2312,
	datab => qtemp_a7_a,
	datac => qtemp_a0_a,
	datad => Mux_a2340,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2341_I_modesel,
	combout => Mux_a2341);

y_a1_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2342 = Mux_a2337 & (Mux_a2341 # y[1] & Mux_a2331) # !Mux_a2337 & (y[1] & Mux_a2331)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F888",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a1_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2337,
	datab => Mux_a2341,
	datac => VCC,
	datad => Mux_a2331,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a1_a_aI_modesel,
	combout => Mux_a2342);

qtemp_a1_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a1_a = DFFEAS(Mux_a2342, GLOBAL(clock_acombout), VCC, , , data_in_a1_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FF00",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a1_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => VCC,
	datac => data_in_a1_a_acombout,
	datad => Mux_a2342,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a1_a_aI_modesel,
	regout => qtemp_a1_a);

x_a2_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2351 = Mux_a2323 & (x[2] # Mux_a2324) # !Mux_a2323 & qtemp_a2_a & (!Mux_a2324)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "CCE2",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a2_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => qtemp_a2_a,
	datab => Mux_a2323,
	datac => Mux_a2352,
	datad => Mux_a2324,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a2_a_aI_modesel,
	combout => Mux_a2351);

Mux_a2352_I : cyclone_lcell
-- Equation(s):
-- Mux_a2352 = Mux_a2324 & (Mux_a2351 & (data_in_a3_a_acombout) # !Mux_a2351 & qtemp_a1_a) # !Mux_a2324 & (Mux_a2351)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F838",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2352_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => qtemp_a1_a,
	datab => Mux_a2324,
	datac => Mux_a2351,
	datad => data_in_a3_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2352_I_modesel,
	combout => Mux_a2352);

Mux_a2353_I : cyclone_lcell
-- Equation(s):
-- Mux_a2353 = Mux_a2322 & (qtemp_a0_a # Mux_a2321) # !Mux_a2322 & (!Mux_a2321 & Mux_a2352)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "ADA8",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2353_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2322,
	datab => qtemp_a0_a,
	datac => Mux_a2321,
	datad => Mux_a2352,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2353_I_modesel,
	combout => Mux_a2353);

y_a2_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2354 = Mux_a2321 & (Mux_a2353 & (qtemp_a4_a) # !Mux_a2353 & y[2]) # !Mux_a2321 & Mux_a2353

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EC64",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a2_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2321,
	datab => Mux_a2353,
	datac => VCC,
	datad => qtemp_a4_a,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a2_a_aI_modesel,
	combout => Mux_a2354);

qtemp_a2_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a2_a = DFFEAS(Mux_a2354, GLOBAL(clock_acombout), VCC, , , data_in_a2_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FF00",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a2_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => VCC,
	datac => data_in_a2_a_acombout,
	datad => Mux_a2354,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a2_a_aI_modesel,
	regout => qtemp_a2_a);

Mux_a2325_I : cyclone_lcell
-- Equation(s):
-- Mux_a2325 = Mux_a2324 & (qtemp_a3_a # Mux_a2323) # !Mux_a2324 & (qtemp_a4_a & !Mux_a2323)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F0AC",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2325_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => qtemp_a3_a,
	datab => qtemp_a4_a,
	datac => Mux_a2324,
	datad => Mux_a2323,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2325_I_modesel,
	combout => Mux_a2325);

x_a4_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2326 = Mux_a2325 & (data_in_a5_a_acombout # !Mux_a2323) # !Mux_a2325 & Mux_a2323 & x[4]

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "EA62",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a4_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2325,
	datab => Mux_a2323,
	datac => VCC,
	datad => data_in_a5_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a4_a_aI_modesel,
	combout => Mux_a2326);

Mux_a2327_I : cyclone_lcell
-- Equation(s):
-- Mux_a2327 = Mux_a2321 & Mux_a2322 # !Mux_a2321 & (Mux_a2322 & qtemp_a2_a # !Mux_a2322 & (Mux_a2326))

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "D9C8",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2327_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2321,
	datab => Mux_a2322,
	datac => qtemp_a2_a,
	datad => Mux_a2326,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2327_I_modesel,
	combout => Mux_a2327);

y_a4_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2328 = Mux_a2321 & (Mux_a2327 & qtemp_a6_a # !Mux_a2327 & (y[4])) # !Mux_a2321 & (Mux_a2327)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DDA0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a4_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2321,
	datab => qtemp_a6_a,
	datac => VCC,
	datad => Mux_a2327,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a4_a_aI_modesel,
	combout => Mux_a2328);

qtemp_a4_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a4_a = DFFEAS(Mux_a2328, GLOBAL(clock_acombout), VCC, , , data_in_a4_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FF00",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a4_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => VCC,
	datac => data_in_a4_a_acombout,
	datad => Mux_a2328,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a4_a_aI_modesel,
	regout => qtemp_a4_a);

Mux_a2346_I : cyclone_lcell
-- Equation(s):
-- Mux_a2346 = Mux_a2323 & (Mux_a2324) # !Mux_a2323 & (Mux_a2324 & (qtemp_a5_a) # !Mux_a2324 & qtemp_a6_a)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F4A4",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2346_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2323,
	datab => qtemp_a6_a,
	datac => Mux_a2324,
	datad => qtemp_a5_a,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2346_I_modesel,
	combout => Mux_a2346);

x_a6_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2347 = Mux_a2323 & (Mux_a2346 & data_in_a7_a_acombout # !Mux_a2346 & (x[6])) # !Mux_a2323 & (Mux_a2346)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "DDA0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a6_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2323,
	datab => data_in_a7_a_acombout,
	datac => VCC,
	datad => Mux_a2346,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a6_a_aI_modesel,
	combout => Mux_a2347);

Mux_a2348_I : cyclone_lcell
-- Equation(s):
-- Mux_a2348 = Mux_a2345 & (qtemp_a7_a # Mux_a2344) # !Mux_a2345 & Mux_a2347 & (!Mux_a2344)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "AAE4",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2348_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2345,
	datab => Mux_a2347,
	datac => qtemp_a7_a,
	datad => Mux_a2344,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2348_I_modesel,
	combout => Mux_a2348);

Mux_a2349_I : cyclone_lcell
-- Equation(s):
-- Mux_a2349 = Mux_a2344 & (Mux_a2348 & (qtemp_a0_a) # !Mux_a2348 & qtemp_a4_a) # !Mux_a2344 & (Mux_a2348)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F388",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2349_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => qtemp_a4_a,
	datab => Mux_a2344,
	datac => qtemp_a0_a,
	datad => Mux_a2348,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2349_I_modesel,
	combout => Mux_a2349);

y_a6_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2350 = Mux_a2331 & (y[6] # Mux_a2343 & Mux_a2349) # !Mux_a2331 & Mux_a2343 & (Mux_a2349)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "ECA0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => y_a6_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2331,
	datab => Mux_a2343,
	datac => VCC,
	datad => Mux_a2349,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => y_a6_a_aI_modesel,
	combout => Mux_a2350);

qtemp_a6_a_aI : cyclone_lcell
-- Equation(s):
-- qtemp_a6_a = DFFEAS(Mux_a2350, GLOBAL(clock_acombout), VCC, , , data_in_a6_a_acombout, GLOBAL(rst_acombout), , )

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "CCCC",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => qtemp_a6_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => Mux_a2350,
	datac => data_in_a6_a_acombout,
	datad => VCC,
	aclr => GND,
	aload => rst_acombout,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => qtemp_a6_a_aI_modesel,
	regout => qtemp_a6_a);

Mux_a2314_I : cyclone_lcell
-- Equation(s):
-- Mux_a2314 = n_a0_a_acombout & (kind_a0_a_acombout & !kind_a1_a_acombout # !kind_a0_a_acombout & (dir_acombout))

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "7200",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2314_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => kind_a0_a_acombout,
	datab => kind_a1_a_acombout,
	datac => dir_acombout,
	datad => n_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2314_I_modesel,
	combout => Mux_a2314);

x_a0_a_aI : cyclone_lcell
-- Equation(s):
-- Mux_a2313 = kind_a0_a_acombout & (x[0]) # !kind_a0_a_acombout & qtemp_a7_a

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "qfbk",
--	lut_mask => "F0CC",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => x_a0_a_aI_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => VCC,
	datab => qtemp_a7_a,
	datac => Mux_a2317,
	datad => kind_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => VCC,
	ena => ALT_INV_rst_acombout,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => x_a0_a_aI_modesel,
	combout => Mux_a2313);

Mux_a2315_I : cyclone_lcell
-- Equation(s):
-- Mux_a2315 = kind_a1_a_acombout & (kind_a0_a_acombout # !dir_acombout & n_a0_a_acombout) # !kind_a1_a_acombout & !dir_acombout & kind_a0_a_acombout & n_a0_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "D4C0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2315_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => dir_acombout,
	datab => kind_a1_a_acombout,
	datac => kind_a0_a_acombout,
	datad => n_a0_a_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2315_I_modesel,
	combout => Mux_a2315);

Mux_a2316_I : cyclone_lcell
-- Equation(s):
-- Mux_a2316 = Mux_a2314 & data_in_a1_a_acombout & !Mux_a2315 # !Mux_a2314 & (Mux_a2315)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "33C0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2316_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => VCC,
	datab => Mux_a2314,
	datac => data_in_a1_a_acombout,
	datad => Mux_a2315,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2316_I_modesel,
	combout => Mux_a2316);

Mux_a2317_I : cyclone_lcell
-- Equation(s):
-- Mux_a2317 = Mux_a2314 & (Mux_a2316) # !Mux_a2314 & (Mux_a2316 & Mux_a2313 # !Mux_a2316 & (qtemp_a0_a))

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "EE50",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2317_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2314,
	datab => Mux_a2313,
	datac => qtemp_a0_a,
	datad => Mux_a2316,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2317_I_modesel,
	combout => Mux_a2317);

Mux_a2318_I : cyclone_lcell
-- Equation(s):
-- Mux_a2318 = Mux_a2312 & (qtemp_a0_a # Mux_a2311) # !Mux_a2312 & (!Mux_a2311 & Mux_a2317)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "ADA8",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2318_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => Mux_a2312,
	datab => qtemp_a0_a,
	datac => Mux_a2311,
	datad => Mux_a2317,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2318_I_modesel,
	combout => Mux_a2318);

Mux_a2319_I : cyclone_lcell
-- Equation(s):
-- Mux_a2319 = Mux_a2311 & (Mux_a2318 & qtemp_a6_a # !Mux_a2318 & (qtemp_a2_a)) # !Mux_a2311 & (Mux_a2318)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "AFC0",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2319_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => qtemp_a6_a,
	datab => qtemp_a2_a,
	datac => Mux_a2311,
	datad => Mux_a2318,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2319_I_modesel,
	combout => Mux_a2319);

Mux_a2320_I : cyclone_lcell
-- Equation(s):
-- Mux_a2320 = !kind_a0_a_acombout & (Mux_a2319)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "5500",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => Mux_a2320_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => kind_a0_a_acombout,
	datab => VCC,
	datac => VCC,
	datad => Mux_a2319,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => Mux_a2320_I_modesel,
	combout => Mux_a2320);

data_out_a0_a_a85_I : cyclone_lcell
-- Equation(s):
-- data_out_a0_a_a85 = dir_acombout # kind_a1_a_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "FAFA",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a0_a_a85_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => dir_acombout,
	datab => VCC,
	datac => kind_a1_a_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a0_a_a85_I_modesel,
	combout => data_out_a0_a_a85);

n_a2_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "input",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => GND,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => n_a2_a_aI_modesel,
	combout => n_a2_a_acombout,
	padio => ww_n(2));

data_out_a0_a_a86_I : cyclone_lcell
-- Equation(s):
-- data_out_a0_a_a86 = !rst_acombout & (!kind_a1_a_acombout # !kind_a0_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "0077",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a0_a_a86_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => kind_a0_a_acombout,
	datab => kind_a1_a_acombout,
	datac => VCC,
	datad => rst_acombout,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a0_a_a86_I_modesel,
	combout => data_out_a0_a_a86);

data_out_a0_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a0_a_areg0 = DFFEAS(data_out_a0_a_a85 & (Mux_a2328) # !data_out_a0_a_a85 & Mux_a2320, GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2332, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "CCAA",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a0_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2320,
	datab => Mux_a2328,
	datac => Mux_a2332,
	datad => data_out_a0_a_a85,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a0_a_areg0_I_modesel,
	regout => data_out_a0_a_areg0);

data_out_a1_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a1_a_areg0 = DFFEAS(data_out_a0_a_a85 & (Mux_a2336) # !data_out_a0_a_a85 & Mux_a2320, GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2342, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "EE22",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a1_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2320,
	datab => data_out_a0_a_a85,
	datac => Mux_a2342,
	datad => Mux_a2336,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a1_a_areg0_I_modesel,
	regout => data_out_a1_a_areg0);

data_out_a2_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a2_a_areg0 = DFFEAS(data_out_a0_a_a85 & Mux_a2350 # !data_out_a0_a_a85 & (Mux_a2320), GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2354, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "DD88",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a2_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => data_out_a0_a_a85,
	datab => Mux_a2350,
	datac => Mux_a2354,
	datad => Mux_a2320,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a2_a_areg0_I_modesel,
	regout => data_out_a2_a_areg0);

data_out_a3_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a3_a_areg0 = DFFEAS(data_out_a0_a_a85 & (Mux_a2363) # !data_out_a0_a_a85 & Mux_a2320, GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2367, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "EE44",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a3_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => data_out_a0_a_a85,
	datab => Mux_a2320,
	datac => Mux_a2367,
	datad => Mux_a2363,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a3_a_areg0_I_modesel,
	regout => data_out_a3_a_areg0);

data_out_a4_a_a87_I : cyclone_lcell
-- Equation(s):
-- data_out_a4_a_a87 = kind_a1_a_acombout # !dir_acombout

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "off",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "F5F5",
--	output_mode => "comb_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a4_a_a87_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => GND,
	dataa => dir_acombout,
	datab => VCC,
	datac => kind_a1_a_acombout,
	datad => VCC,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => GND,
	ena => VCC,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a4_a_a87_I_modesel,
	combout => data_out_a4_a_a87);

data_out_a4_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a4_a_areg0 = DFFEAS(data_out_a4_a_a87 & (Mux_a2332) # !data_out_a4_a_a87 & Mux_a2362, GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2328, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "CCAA",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a4_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2362,
	datab => Mux_a2332,
	datac => Mux_a2328,
	datad => data_out_a4_a_a87,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a4_a_areg0_I_modesel,
	regout => data_out_a4_a_areg0);

data_out_a5_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a5_a_areg0 = DFFEAS(data_out_a4_a_a87 & Mux_a2342 # !data_out_a4_a_a87 & (Mux_a2362), GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2336, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "DD88",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a5_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => data_out_a4_a_a87,
	datab => Mux_a2342,
	datac => Mux_a2336,
	datad => Mux_a2362,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a5_a_areg0_I_modesel,
	regout => data_out_a5_a_areg0);

data_out_a6_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a6_a_areg0 = DFFEAS(data_out_a4_a_a87 & (Mux_a2354) # !data_out_a4_a_a87 & Mux_a2362, GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2350, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "CCAA",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a6_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => Mux_a2362,
	datab => Mux_a2354,
	datac => Mux_a2350,
	datad => data_out_a4_a_a87,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a6_a_areg0_I_modesel,
	regout => data_out_a6_a_areg0);

data_out_a7_a_areg0_I : cyclone_lcell
-- Equation(s):
-- data_out_a7_a_areg0 = DFFEAS(data_out_a4_a_a87 & (Mux_a2367) # !data_out_a4_a_a87 & Mux_a2362, GLOBAL(clock_acombout), VCC, , data_out_a0_a_a86, Mux_a2363, , , !n_a2_a_acombout)

-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "normal",
--	synch_mode => "on",
--	register_cascade_mode => "off",
--	sum_lutc_input => "datac",
--	lut_mask => "EE44",
--	output_mode => "reg_only")
-- pragma translate_on
PORT MAP (
	pathsel => data_out_a7_a_areg0_I_pathsel,
	enable_asynch_arcs => lcell_ff_enable_asynch_arcs_out,
	clk => clock_acombout,
	dataa => data_out_a4_a_a87,
	datab => Mux_a2362,
	datac => Mux_a2363,
	datad => Mux_a2367,
	aclr => GND,
	aload => GND,
	sclr => GND,
	sload => ALT_INV_n_a2_a_acombout,
	ena => data_out_a0_a_a86,
	cin => GND,
	cin0 => GND,
	cin1 => VCC,
	inverta => GND,
	regcascin => GND,
	modesel => data_out_a7_a_areg0_I_modesel,
	regout => data_out_a7_a_areg0);

data_out_a0_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a0_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a0_a_aI_modesel,
	padio => ww_data_out(0));

data_out_a1_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a1_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a1_a_aI_modesel,
	padio => ww_data_out(1));

data_out_a2_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a2_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a2_a_aI_modesel,
	padio => ww_data_out(2));

data_out_a3_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a3_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a3_a_aI_modesel,
	padio => ww_data_out(3));

data_out_a4_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a4_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a4_a_aI_modesel,
	padio => ww_data_out(4));

data_out_a5_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a5_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a5_a_aI_modesel,
	padio => ww_data_out(5));

data_out_a6_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a6_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a6_a_aI_modesel,
	padio => ww_data_out(6));

data_out_a7_a_aI : cyclone_io
-- pragma translate_off
-- GENERIC MAP (
--	operation_mode => "output",
--	input_register_mode => "none",
--	output_register_mode => "none",
--	oe_register_mode => "none",
--	input_async_reset => "none",
--	output_async_reset => "none",
--	oe_async_reset => "none",
--	input_sync_reset => "none",
--	output_sync_reset => "none",
--	oe_sync_reset => "none",
--	input_power_up => "low",
--	output_power_up => "low",
--	oe_power_up => "low")
-- pragma translate_on
PORT MAP (
	datain => data_out_a7_a_areg0,
	oe => VCC,
	outclk => GND,
	outclkena => VCC,
	inclk => GND,
	inclkena => VCC,
	areset => GND,
	sreset => GND,
	modesel => data_out_a7_a_aI_modesel,
	padio => ww_data_out(7));
END structure;


