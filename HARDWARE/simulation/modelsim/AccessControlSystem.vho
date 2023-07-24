-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/25/2023 21:55:43"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AccessControlSystemWrapper IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	Lines : IN std_logic_vector(3 DOWNTO 0);
	Mclk : IN std_logic;
	Reset : IN std_logic;
	Pswitch : IN std_logic;
	M : IN std_logic;
	Columns : OUT std_logic_vector(2 DOWNTO 0);
	E : OUT std_logic;
	RS : OUT std_logic;
	D0_3 : OUT std_logic_vector(3 DOWNTO 0);
	Leds : OUT std_logic_vector(5 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END AccessControlSystemWrapper;

-- Design Ports Information
-- Columns[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Columns[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Columns[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0_3[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0_3[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0_3[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0_3[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mclk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pswitch	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AccessControlSystemWrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_Lines : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Mclk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Pswitch : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_Columns : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_E : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_D0_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Leds : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|U0|U0|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|shift_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|UCLK|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U1|UO|U2|CurrentState.Not_started~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \Mclk~input_o\ : std_logic;
SIGNAL \Mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count[0]~7_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~1\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~3\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~5\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~7\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~9\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~11\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~13\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count~1_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~15\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~17\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~19\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~21\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~23\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~25\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~27\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count~3_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~29\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count~4_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~31\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~32_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count~5_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~33\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~34_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|count~6_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~35\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~36_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~37\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~38_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~39\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~40_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~41\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~42_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~43\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~44_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~45\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~46_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~6_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~47\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~48_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~49\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~50_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~51\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~52_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~53\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~54_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~7_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~55\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~56_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~57\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~58_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~59\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~60_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~61\ : std_logic;
SIGNAL \U0|U0|U0|U0|Add0~62_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~8_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~5_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~9_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~4_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|Equal0~10_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|tmp~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|tmp~q\ : std_logic;
SIGNAL \U0|U0|U0|U0|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \Lines[3]~input_o\ : std_logic;
SIGNAL \Lines[1]~input_o\ : std_logic;
SIGNAL \Lines[2]~input_o\ : std_logic;
SIGNAL \Lines[0]~input_o\ : std_logic;
SIGNAL \U0|U0|U0|U1|U2|GS~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U2|Y[1]~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.RegisterDeliver~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U3|U0|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxGet|U1|U2|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxGet|U1|U2|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxGet|U1|U1|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxGet|U1|U1|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U0|selnPG~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.IncrPut~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxPut|U1|U2|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxPut|U1|U2|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxPut|U1|U1|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxPut|U1|U1|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.Write_done~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxPut|U1|U0|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxPut|U1|U0|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxGet|U1|U0|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxGet|U1|U0|Q~1_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|idxGet|U1|U0|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~9_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~13_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~1_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~5_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~39_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~40_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~17_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~25_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~37_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~21_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~29_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~38_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~41_combout\ : std_logic;
SIGNAL \U0|U0|U2|U0|U0|U2|Q~q\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U3|U1|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~12_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~4_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~34_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~8_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~35_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~24_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~16_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~32_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~28_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~20_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~33_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~36_combout\ : std_logic;
SIGNAL \U0|U0|U2|U0|U0|U3|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\ : std_logic;
SIGNAL \U0|U2|UO|U1|U1|U2|Q~0_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|U2|UO|U1|U1|U2|Q~q\ : std_logic;
SIGNAL \U0|U2|UO|U1|U1|U1|Q~0_combout\ : std_logic;
SIGNAL \U0|U2|UO|U1|U1|U1|Q~q\ : std_logic;
SIGNAL \U0|U2|UO|U1|U1|U0|Q~0_combout\ : std_logic;
SIGNAL \U0|U2|UO|U1|U1|U0|Q~q\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~1_cout\ : std_logic;
SIGNAL \U1|UCLK|Add0~2_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~3\ : std_logic;
SIGNAL \U1|UCLK|Add0~4_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~5\ : std_logic;
SIGNAL \U1|UCLK|Add0~6_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~7\ : std_logic;
SIGNAL \U1|UCLK|Add0~8_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~9\ : std_logic;
SIGNAL \U1|UCLK|Add0~10_combout\ : std_logic;
SIGNAL \U1|UCLK|count~0_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~11\ : std_logic;
SIGNAL \U1|UCLK|Add0~12_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~13\ : std_logic;
SIGNAL \U1|UCLK|Add0~14_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~15\ : std_logic;
SIGNAL \U1|UCLK|Add0~16_combout\ : std_logic;
SIGNAL \U1|UCLK|count~1_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~17\ : std_logic;
SIGNAL \U1|UCLK|Add0~18_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~19\ : std_logic;
SIGNAL \U1|UCLK|Add0~20_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~2_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~21\ : std_logic;
SIGNAL \U1|UCLK|Add0~22_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~23\ : std_logic;
SIGNAL \U1|UCLK|Add0~24_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~25\ : std_logic;
SIGNAL \U1|UCLK|Add0~26_combout\ : std_logic;
SIGNAL \U1|UCLK|count~2_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~27\ : std_logic;
SIGNAL \U1|UCLK|Add0~28_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~29\ : std_logic;
SIGNAL \U1|UCLK|Add0~30_combout\ : std_logic;
SIGNAL \U1|UCLK|count~3_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~31\ : std_logic;
SIGNAL \U1|UCLK|Add0~32_combout\ : std_logic;
SIGNAL \U1|UCLK|count~4_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~33\ : std_logic;
SIGNAL \U1|UCLK|Add0~34_combout\ : std_logic;
SIGNAL \U1|UCLK|count~5_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~35\ : std_logic;
SIGNAL \U1|UCLK|Add0~36_combout\ : std_logic;
SIGNAL \U1|UCLK|count~6_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~37\ : std_logic;
SIGNAL \U1|UCLK|Add0~38_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~39\ : std_logic;
SIGNAL \U1|UCLK|Add0~40_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~41\ : std_logic;
SIGNAL \U1|UCLK|Add0~42_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~43\ : std_logic;
SIGNAL \U1|UCLK|Add0~44_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~5_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~45\ : std_logic;
SIGNAL \U1|UCLK|Add0~46_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~47\ : std_logic;
SIGNAL \U1|UCLK|Add0~48_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~49\ : std_logic;
SIGNAL \U1|UCLK|Add0~50_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~51\ : std_logic;
SIGNAL \U1|UCLK|Add0~52_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~6_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~4_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~53\ : std_logic;
SIGNAL \U1|UCLK|Add0~54_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~55\ : std_logic;
SIGNAL \U1|UCLK|Add0~56_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~57\ : std_logic;
SIGNAL \U1|UCLK|Add0~58_combout\ : std_logic;
SIGNAL \U1|UCLK|Add0~59\ : std_logic;
SIGNAL \U1|UCLK|Add0~60_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~7_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~8_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~0_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~1_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~3_combout\ : std_logic;
SIGNAL \U1|UCLK|Equal0~9_combout\ : std_logic;
SIGNAL \U1|UCLK|tmp~0_combout\ : std_logic;
SIGNAL \U1|UCLK|tmp~q\ : std_logic;
SIGNAL \U1|UCLK|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \U1|U6|cnt_atual_pl[0]~3_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[0]~1_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[6]~7_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[5]~6_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[4]~5_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[3]~4_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[2]~3_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[1]~2_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.Open_door~0_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U7|dataShift_in[8]~0_combout\ : std_logic;
SIGNAL \U0|U2|U1|OnnOff~2_combout\ : std_logic;
SIGNAL \U0|U2|U1|OnnOff~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \U0|U2|UO|U0|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\ : std_logic;
SIGNAL \U0|U2|UO|U0|U0|Q~q\ : std_logic;
SIGNAL \U0|U2|UO|U0|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U2|UO|U0|U1|Q~q\ : std_logic;
SIGNAL \U0|U2|UO|U0|U2|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U2|UO|U0|U2|Q~q\ : std_logic;
SIGNAL \U0|U2|UO|U0|U3|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U2|UO|U0|U3|Q~q\ : std_logic;
SIGNAL \U1|U6|cnt_atual_pl[1]~4_combout\ : std_logic;
SIGNAL \U1|U6|U1|SC:2:U1|S~combout\ : std_logic;
SIGNAL \U1|U6|cnt_atual_pl[2]~2_combout\ : std_logic;
SIGNAL \U1|U6|U1|SC:3:U1|S~combout\ : std_logic;
SIGNAL \U1|U6|cnt_atual_pl[3]~1_combout\ : std_logic;
SIGNAL \U1|shift_clk~0_combout\ : std_logic;
SIGNAL \U1|U6|cnt_atual_pl[4]~0_combout\ : std_logic;
SIGNAL \U1|shift_clk~combout\ : std_logic;
SIGNAL \U1|shift_clk~clkctrl_outclk\ : std_logic;
SIGNAL \U1|U7|dataShift_in[7]~8_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~0_combout\ : std_logic;
SIGNAL \Pswitch~input_o\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U1|U4|Equal0~0_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \U0|U2|UO|U0|U4|Q~q\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_0~3_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_0~4_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.Close_door~0_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U0|U2|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_0~3_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U2|UO|U2|CurrentState.Not_started~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.Store_data~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~31_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~27_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~19_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~47_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~23_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~48_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~7_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~3_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~49_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~11_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~15_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~50_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~51_combout\ : std_logic;
SIGNAL \U0|U0|U2|U0|U0|U0|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U0|U1|U1|Q~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U0|U1|U1|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~30_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~22_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~26_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~18_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~42_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~43_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~10_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~14_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~6_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~2_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~44_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~45_combout\ : std_logic;
SIGNAL \U0|U0|U1|U2|ram~46_combout\ : std_logic;
SIGNAL \U0|U0|U2|U0|U0|U1|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U0|U2|U1|CurrentState.Start~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.Kval_true~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|FFD1|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|FFD1|Q~q\ : std_logic;
SIGNAL \U0|U0|U1|U1|full~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U1|full~1_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_2~4_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_2~2_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_2~3_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U0|U0|U1|U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_0~3_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_0~4_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U0|U1|U0|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U0|U1|U0|Q~q\ : std_logic;
SIGNAL \U0|U1|U1|U0|U1|U3|Q~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|U1|U3|Q~q\ : std_logic;
SIGNAL \U0|U1|U1|U0|U0|U3|Co~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|U0|U4|U2|S~2_combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|U1|U0|Q~q\ : std_logic;
SIGNAL \U0|U1|U1|U1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U0|U1|U1|U1|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U0|U1|U1|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U1|U1|U0|U0|U2|U2|S~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|U1|U2|Q~q\ : std_logic;
SIGNAL \U0|U1|U1|U0|U0|U3|U2|S~combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|U1|U1|Q~q\ : std_logic;
SIGNAL \U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \U0|U1|UO|U1|U1|U2|Q~0_combout\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.Not_started~0_combout\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.Not_started~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|UO|U1|U1|U2|Q~q\ : std_logic;
SIGNAL \U0|U1|UO|U1|U1|U1|Q~0_combout\ : std_logic;
SIGNAL \U0|U1|UO|U1|U1|U1|Q~q\ : std_logic;
SIGNAL \U0|U1|UO|U1|U1|U0|Q~0_combout\ : std_logic;
SIGNAL \U0|U1|UO|U1|U1|U0|Q~q\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U1|U1|U1|CurrentState.Delivering~0_combout\ : std_logic;
SIGNAL \U0|U1|UO|U0|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U1|UO|U0|U0|Q~q\ : std_logic;
SIGNAL \U0|U1|UO|U0|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U1|UO|U0|U1|Q~q\ : std_logic;
SIGNAL \U0|U1|UO|U0|U2|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U1|UO|U0|U2|Q~q\ : std_logic;
SIGNAL \U0|U1|UO|U0|U3|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U1|UO|U0|U3|Q~q\ : std_logic;
SIGNAL \U0|U1|UO|U0|U4|Q~feeder_combout\ : std_logic;
SIGNAL \U0|U1|UO|U0|U4|Q~q\ : std_logic;
SIGNAL \U1|U0|dOut[1]~0_combout\ : std_logic;
SIGNAL \U1|U5|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U5|dOut~0_combout\ : std_logic;
SIGNAL \U1|U1|dOut[1]~0_combout\ : std_logic;
SIGNAL \U1|U4|dOut~0_combout\ : std_logic;
SIGNAL \U1|U2|dOut[1]~0_combout\ : std_logic;
SIGNAL \U1|U3|dOut~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U0|U0|U0|U1|U1|O\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|UCLK|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|U7|U1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|U0|U0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|U6|U2|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|U0|U0|U1|U2|Y\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U3|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \U1|U3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|U4|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \U1|U4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|U5|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \U1|U5|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U1|U1|ALT_INV_O\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \U0|U1|UO|U2|ALT_INV_CurrentState.Not_started~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_Lines <= Lines;
ww_Mclk <= Mclk;
ww_Reset <= Reset;
ww_Pswitch <= Pswitch;
ww_M <= M;
Columns <= ww_Columns;
E <= ww_E;
RS <= ww_RS;
D0_3 <= ww_D0_3;
Leds <= ww_Leds;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\);

\U0|U0|U0|U0|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U0|U0|U0|tmp~q\);

\U1|shift_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|shift_clk~combout\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

\U1|UCLK|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|UCLK|tmp~q\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\Mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mclk~input_o\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U2|UO|U2|CurrentState.Not_started~0_combout\);

\U0|U1|UO|U2|CurrentState.Not_started~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U1|UO|U2|CurrentState.Not_started~0_combout\);
\U1|U3|ALT_INV_dOut~0_combout\ <= NOT \U1|U3|dOut~0_combout\;
\U1|U3|ALT_INV_Equal0~0_combout\ <= NOT \U1|U3|Equal0~0_combout\;
\U1|U4|ALT_INV_dOut~0_combout\ <= NOT \U1|U4|dOut~0_combout\;
\U1|U4|ALT_INV_Equal0~0_combout\ <= NOT \U1|U4|Equal0~0_combout\;
\U1|U5|ALT_INV_dOut~0_combout\ <= NOT \U1|U5|dOut~0_combout\;
\U1|U5|ALT_INV_Equal0~0_combout\ <= NOT \U1|U5|Equal0~0_combout\;
\U0|U0|U0|U1|U1|ALT_INV_O\(2) <= NOT \U0|U0|U0|U1|U1|O\(2);
\U0|U0|U0|U1|U1|ALT_INV_O\(1) <= NOT \U0|U0|U0|U1|U1|O\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\U0|U1|UO|U2|ALT_INV_CurrentState.Not_started~0clkctrl_outclk\ <= NOT \U0|U1|UO|U2|CurrentState.Not_started~0clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;

-- Location: FF_X34_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X34_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X34_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X32_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X32_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X34_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y49_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X29_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X29_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X29_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: IOOBUF_X38_Y0_N9
\Columns[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|U0|U1|U1|O\(0),
	devoe => ww_devoe,
	o => ww_Columns(0));

-- Location: IOOBUF_X38_Y0_N16
\Columns[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|U0|U1|U1|ALT_INV_O\(1),
	devoe => ww_devoe,
	o => ww_Columns(1));

-- Location: IOOBUF_X34_Y0_N23
\Columns[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|U0|U1|U1|ALT_INV_O\(2),
	devoe => ww_devoe,
	o => ww_Columns(2));

-- Location: IOOBUF_X14_Y0_N9
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|U1|U1|CurrentState.Delivering~0_combout\,
	devoe => ww_devoe,
	o => ww_E);

-- Location: IOOBUF_X24_Y0_N2
\RS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|UO|U0|U4|Q~q\,
	devoe => ww_devoe,
	o => ww_RS);

-- Location: IOOBUF_X36_Y0_N9
\D0_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|UO|U0|U3|Q~q\,
	devoe => ww_devoe,
	o => ww_D0_3(0));

-- Location: IOOBUF_X34_Y0_N2
\D0_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|UO|U0|U2|Q~q\,
	devoe => ww_devoe,
	o => ww_D0_3(1));

-- Location: IOOBUF_X20_Y0_N2
\D0_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|UO|U0|U1|Q~q\,
	devoe => ww_devoe,
	o => ww_D0_3(2));

-- Location: IOOBUF_X20_Y0_N9
\D0_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|UO|U0|U0|Q~q\,
	devoe => ww_devoe,
	o => ww_D0_3(3));

-- Location: IOOBUF_X46_Y54_N2
\Leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U2|U1|OnnOff~combout\,
	devoe => ww_devoe,
	o => ww_Leds(0));

-- Location: IOOBUF_X46_Y54_N23
\Leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U2|U1|CurrentState.Open_door~0_combout\,
	devoe => ww_devoe,
	o => ww_Leds(1));

-- Location: IOOBUF_X51_Y54_N16
\Leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U2|UO|U0|U3|Q~q\,
	devoe => ww_devoe,
	o => ww_Leds(2));

-- Location: IOOBUF_X46_Y54_N9
\Leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U2|UO|U0|U2|Q~q\,
	devoe => ww_devoe,
	o => ww_Leds(3));

-- Location: IOOBUF_X56_Y54_N30
\Leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U2|UO|U0|U1|Q~q\,
	devoe => ww_devoe,
	o => ww_Leds(4));

-- Location: IOOBUF_X58_Y54_N23
\Leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U2|UO|U0|U0|Q~q\,
	devoe => ww_devoe,
	o => ww_Leds(5));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U4|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U5|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X34_Y0_N29
\Mclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mclk,
	o => \Mclk~input_o\);

-- Location: CLKCTRL_G19
\Mclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X49_Y41_N0
\U0|U0|U0|U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~0_combout\ = \U0|U0|U0|U0|count\(0) $ (GND)
-- \U0|U0|U0|U0|Add0~1\ = CARRY(!\U0|U0|U0|U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(0),
	datad => VCC,
	combout => \U0|U0|U0|U0|Add0~0_combout\,
	cout => \U0|U0|U0|U0|Add0~1\);

-- Location: LCCOMB_X50_Y41_N0
\U0|U0|U0|U0|count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count[0]~7_combout\ = !\U0|U0|U0|U0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U0|Add0~0_combout\,
	combout => \U0|U0|U0|U0|count[0]~7_combout\);

-- Location: FF_X50_Y41_N1
\U0|U0|U0|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(0));

-- Location: LCCOMB_X49_Y41_N2
\U0|U0|U0|U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~2_combout\ = (\U0|U0|U0|U0|count\(1) & (!\U0|U0|U0|U0|Add0~1\)) # (!\U0|U0|U0|U0|count\(1) & ((\U0|U0|U0|U0|Add0~1\) # (GND)))
-- \U0|U0|U0|U0|Add0~3\ = CARRY((!\U0|U0|U0|U0|Add0~1\) # (!\U0|U0|U0|U0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(1),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~1\,
	combout => \U0|U0|U0|U0|Add0~2_combout\,
	cout => \U0|U0|U0|U0|Add0~3\);

-- Location: FF_X49_Y41_N3
\U0|U0|U0|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(1));

-- Location: LCCOMB_X49_Y41_N4
\U0|U0|U0|U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~4_combout\ = (\U0|U0|U0|U0|count\(2) & (\U0|U0|U0|U0|Add0~3\ $ (GND))) # (!\U0|U0|U0|U0|count\(2) & (!\U0|U0|U0|U0|Add0~3\ & VCC))
-- \U0|U0|U0|U0|Add0~5\ = CARRY((\U0|U0|U0|U0|count\(2) & !\U0|U0|U0|U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(2),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~3\,
	combout => \U0|U0|U0|U0|Add0~4_combout\,
	cout => \U0|U0|U0|U0|Add0~5\);

-- Location: FF_X49_Y41_N5
\U0|U0|U0|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(2));

-- Location: LCCOMB_X49_Y41_N6
\U0|U0|U0|U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~6_combout\ = (\U0|U0|U0|U0|count\(3) & (!\U0|U0|U0|U0|Add0~5\)) # (!\U0|U0|U0|U0|count\(3) & ((\U0|U0|U0|U0|Add0~5\) # (GND)))
-- \U0|U0|U0|U0|Add0~7\ = CARRY((!\U0|U0|U0|U0|Add0~5\) # (!\U0|U0|U0|U0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(3),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~5\,
	combout => \U0|U0|U0|U0|Add0~6_combout\,
	cout => \U0|U0|U0|U0|Add0~7\);

-- Location: FF_X49_Y41_N7
\U0|U0|U0|U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(3));

-- Location: LCCOMB_X49_Y41_N8
\U0|U0|U0|U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~8_combout\ = (\U0|U0|U0|U0|count\(4) & (\U0|U0|U0|U0|Add0~7\ $ (GND))) # (!\U0|U0|U0|U0|count\(4) & (!\U0|U0|U0|U0|Add0~7\ & VCC))
-- \U0|U0|U0|U0|Add0~9\ = CARRY((\U0|U0|U0|U0|count\(4) & !\U0|U0|U0|U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(4),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~7\,
	combout => \U0|U0|U0|U0|Add0~8_combout\,
	cout => \U0|U0|U0|U0|Add0~9\);

-- Location: LCCOMB_X50_Y41_N20
\U0|U0|U0|U0|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count~0_combout\ = (\U0|U0|U0|U0|Add0~8_combout\ & !\U0|U0|U0|U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|Add0~8_combout\,
	datac => \U0|U0|U0|U0|Equal0~10_combout\,
	combout => \U0|U0|U0|U0|count~0_combout\);

-- Location: FF_X50_Y41_N21
\U0|U0|U0|U0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(4));

-- Location: LCCOMB_X49_Y41_N10
\U0|U0|U0|U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~10_combout\ = (\U0|U0|U0|U0|count\(5) & (!\U0|U0|U0|U0|Add0~9\)) # (!\U0|U0|U0|U0|count\(5) & ((\U0|U0|U0|U0|Add0~9\) # (GND)))
-- \U0|U0|U0|U0|Add0~11\ = CARRY((!\U0|U0|U0|U0|Add0~9\) # (!\U0|U0|U0|U0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(5),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~9\,
	combout => \U0|U0|U0|U0|Add0~10_combout\,
	cout => \U0|U0|U0|U0|Add0~11\);

-- Location: FF_X49_Y41_N11
\U0|U0|U0|U0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(5));

-- Location: LCCOMB_X49_Y41_N12
\U0|U0|U0|U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~12_combout\ = (\U0|U0|U0|U0|count\(6) & (\U0|U0|U0|U0|Add0~11\ $ (GND))) # (!\U0|U0|U0|U0|count\(6) & (!\U0|U0|U0|U0|Add0~11\ & VCC))
-- \U0|U0|U0|U0|Add0~13\ = CARRY((\U0|U0|U0|U0|count\(6) & !\U0|U0|U0|U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(6),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~11\,
	combout => \U0|U0|U0|U0|Add0~12_combout\,
	cout => \U0|U0|U0|U0|Add0~13\);

-- Location: FF_X49_Y41_N13
\U0|U0|U0|U0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(6));

-- Location: LCCOMB_X49_Y41_N14
\U0|U0|U0|U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~14_combout\ = (\U0|U0|U0|U0|count\(7) & (!\U0|U0|U0|U0|Add0~13\)) # (!\U0|U0|U0|U0|count\(7) & ((\U0|U0|U0|U0|Add0~13\) # (GND)))
-- \U0|U0|U0|U0|Add0~15\ = CARRY((!\U0|U0|U0|U0|Add0~13\) # (!\U0|U0|U0|U0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(7),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~13\,
	combout => \U0|U0|U0|U0|Add0~14_combout\,
	cout => \U0|U0|U0|U0|Add0~15\);

-- Location: LCCOMB_X50_Y41_N6
\U0|U0|U0|U0|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count~1_combout\ = (\U0|U0|U0|U0|Add0~14_combout\ & !\U0|U0|U0|U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|Add0~14_combout\,
	datac => \U0|U0|U0|U0|Equal0~10_combout\,
	combout => \U0|U0|U0|U0|count~1_combout\);

-- Location: FF_X50_Y41_N7
\U0|U0|U0|U0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(7));

-- Location: LCCOMB_X49_Y41_N16
\U0|U0|U0|U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~16_combout\ = (\U0|U0|U0|U0|count\(8) & (\U0|U0|U0|U0|Add0~15\ $ (GND))) # (!\U0|U0|U0|U0|count\(8) & (!\U0|U0|U0|U0|Add0~15\ & VCC))
-- \U0|U0|U0|U0|Add0~17\ = CARRY((\U0|U0|U0|U0|count\(8) & !\U0|U0|U0|U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(8),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~15\,
	combout => \U0|U0|U0|U0|Add0~16_combout\,
	cout => \U0|U0|U0|U0|Add0~17\);

-- Location: FF_X49_Y41_N17
\U0|U0|U0|U0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(8));

-- Location: LCCOMB_X49_Y41_N18
\U0|U0|U0|U0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~18_combout\ = (\U0|U0|U0|U0|count\(9) & (!\U0|U0|U0|U0|Add0~17\)) # (!\U0|U0|U0|U0|count\(9) & ((\U0|U0|U0|U0|Add0~17\) # (GND)))
-- \U0|U0|U0|U0|Add0~19\ = CARRY((!\U0|U0|U0|U0|Add0~17\) # (!\U0|U0|U0|U0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(9),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~17\,
	combout => \U0|U0|U0|U0|Add0~18_combout\,
	cout => \U0|U0|U0|U0|Add0~19\);

-- Location: FF_X49_Y41_N19
\U0|U0|U0|U0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(9));

-- Location: LCCOMB_X49_Y41_N20
\U0|U0|U0|U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~20_combout\ = (\U0|U0|U0|U0|count\(10) & (\U0|U0|U0|U0|Add0~19\ $ (GND))) # (!\U0|U0|U0|U0|count\(10) & (!\U0|U0|U0|U0|Add0~19\ & VCC))
-- \U0|U0|U0|U0|Add0~21\ = CARRY((\U0|U0|U0|U0|count\(10) & !\U0|U0|U0|U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(10),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~19\,
	combout => \U0|U0|U0|U0|Add0~20_combout\,
	cout => \U0|U0|U0|U0|Add0~21\);

-- Location: FF_X49_Y41_N21
\U0|U0|U0|U0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(10));

-- Location: LCCOMB_X49_Y41_N22
\U0|U0|U0|U0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~22_combout\ = (\U0|U0|U0|U0|count\(11) & (!\U0|U0|U0|U0|Add0~21\)) # (!\U0|U0|U0|U0|count\(11) & ((\U0|U0|U0|U0|Add0~21\) # (GND)))
-- \U0|U0|U0|U0|Add0~23\ = CARRY((!\U0|U0|U0|U0|Add0~21\) # (!\U0|U0|U0|U0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(11),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~21\,
	combout => \U0|U0|U0|U0|Add0~22_combout\,
	cout => \U0|U0|U0|U0|Add0~23\);

-- Location: FF_X49_Y41_N23
\U0|U0|U0|U0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(11));

-- Location: LCCOMB_X49_Y41_N24
\U0|U0|U0|U0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~24_combout\ = (\U0|U0|U0|U0|count\(12) & (\U0|U0|U0|U0|Add0~23\ $ (GND))) # (!\U0|U0|U0|U0|count\(12) & (!\U0|U0|U0|U0|Add0~23\ & VCC))
-- \U0|U0|U0|U0|Add0~25\ = CARRY((\U0|U0|U0|U0|count\(12) & !\U0|U0|U0|U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(12),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~23\,
	combout => \U0|U0|U0|U0|Add0~24_combout\,
	cout => \U0|U0|U0|U0|Add0~25\);

-- Location: LCCOMB_X50_Y41_N22
\U0|U0|U0|U0|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count~2_combout\ = (\U0|U0|U0|U0|Add0~24_combout\ & !\U0|U0|U0|U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|Add0~24_combout\,
	datac => \U0|U0|U0|U0|Equal0~10_combout\,
	combout => \U0|U0|U0|U0|count~2_combout\);

-- Location: FF_X50_Y41_N23
\U0|U0|U0|U0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(12));

-- Location: LCCOMB_X49_Y41_N26
\U0|U0|U0|U0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~26_combout\ = (\U0|U0|U0|U0|count\(13) & (!\U0|U0|U0|U0|Add0~25\)) # (!\U0|U0|U0|U0|count\(13) & ((\U0|U0|U0|U0|Add0~25\) # (GND)))
-- \U0|U0|U0|U0|Add0~27\ = CARRY((!\U0|U0|U0|U0|Add0~25\) # (!\U0|U0|U0|U0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(13),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~25\,
	combout => \U0|U0|U0|U0|Add0~26_combout\,
	cout => \U0|U0|U0|U0|Add0~27\);

-- Location: FF_X49_Y41_N27
\U0|U0|U0|U0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(13));

-- Location: LCCOMB_X49_Y41_N28
\U0|U0|U0|U0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~28_combout\ = (\U0|U0|U0|U0|count\(14) & (\U0|U0|U0|U0|Add0~27\ $ (GND))) # (!\U0|U0|U0|U0|count\(14) & (!\U0|U0|U0|U0|Add0~27\ & VCC))
-- \U0|U0|U0|U0|Add0~29\ = CARRY((\U0|U0|U0|U0|count\(14) & !\U0|U0|U0|U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(14),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~27\,
	combout => \U0|U0|U0|U0|Add0~28_combout\,
	cout => \U0|U0|U0|U0|Add0~29\);

-- Location: LCCOMB_X50_Y41_N24
\U0|U0|U0|U0|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count~3_combout\ = (\U0|U0|U0|U0|Add0~28_combout\ & !\U0|U0|U0|U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|Add0~28_combout\,
	datac => \U0|U0|U0|U0|Equal0~10_combout\,
	combout => \U0|U0|U0|U0|count~3_combout\);

-- Location: FF_X50_Y41_N25
\U0|U0|U0|U0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(14));

-- Location: LCCOMB_X49_Y41_N30
\U0|U0|U0|U0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~30_combout\ = (\U0|U0|U0|U0|count\(15) & (!\U0|U0|U0|U0|Add0~29\)) # (!\U0|U0|U0|U0|count\(15) & ((\U0|U0|U0|U0|Add0~29\) # (GND)))
-- \U0|U0|U0|U0|Add0~31\ = CARRY((!\U0|U0|U0|U0|Add0~29\) # (!\U0|U0|U0|U0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(15),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~29\,
	combout => \U0|U0|U0|U0|Add0~30_combout\,
	cout => \U0|U0|U0|U0|Add0~31\);

-- Location: LCCOMB_X50_Y41_N2
\U0|U0|U0|U0|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count~4_combout\ = (\U0|U0|U0|U0|Add0~30_combout\ & !\U0|U0|U0|U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|Add0~30_combout\,
	datac => \U0|U0|U0|U0|Equal0~10_combout\,
	combout => \U0|U0|U0|U0|count~4_combout\);

-- Location: FF_X50_Y41_N3
\U0|U0|U0|U0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(15));

-- Location: LCCOMB_X49_Y40_N0
\U0|U0|U0|U0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~32_combout\ = (\U0|U0|U0|U0|count\(16) & (\U0|U0|U0|U0|Add0~31\ $ (GND))) # (!\U0|U0|U0|U0|count\(16) & (!\U0|U0|U0|U0|Add0~31\ & VCC))
-- \U0|U0|U0|U0|Add0~33\ = CARRY((\U0|U0|U0|U0|count\(16) & !\U0|U0|U0|U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(16),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~31\,
	combout => \U0|U0|U0|U0|Add0~32_combout\,
	cout => \U0|U0|U0|U0|Add0~33\);

-- Location: LCCOMB_X50_Y40_N0
\U0|U0|U0|U0|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count~5_combout\ = (\U0|U0|U0|U0|Add0~32_combout\ & !\U0|U0|U0|U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|Add0~32_combout\,
	datad => \U0|U0|U0|U0|Equal0~10_combout\,
	combout => \U0|U0|U0|U0|count~5_combout\);

-- Location: FF_X50_Y40_N1
\U0|U0|U0|U0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(16));

-- Location: LCCOMB_X49_Y40_N2
\U0|U0|U0|U0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~34_combout\ = (\U0|U0|U0|U0|count\(17) & (!\U0|U0|U0|U0|Add0~33\)) # (!\U0|U0|U0|U0|count\(17) & ((\U0|U0|U0|U0|Add0~33\) # (GND)))
-- \U0|U0|U0|U0|Add0~35\ = CARRY((!\U0|U0|U0|U0|Add0~33\) # (!\U0|U0|U0|U0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(17),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~33\,
	combout => \U0|U0|U0|U0|Add0~34_combout\,
	cout => \U0|U0|U0|U0|Add0~35\);

-- Location: LCCOMB_X50_Y40_N2
\U0|U0|U0|U0|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|count~6_combout\ = (!\U0|U0|U0|U0|Equal0~10_combout\ & \U0|U0|U0|U0|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|Equal0~10_combout\,
	datad => \U0|U0|U0|U0|Add0~34_combout\,
	combout => \U0|U0|U0|U0|count~6_combout\);

-- Location: FF_X50_Y40_N3
\U0|U0|U0|U0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(17));

-- Location: LCCOMB_X49_Y40_N4
\U0|U0|U0|U0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~36_combout\ = (\U0|U0|U0|U0|count\(18) & (\U0|U0|U0|U0|Add0~35\ $ (GND))) # (!\U0|U0|U0|U0|count\(18) & (!\U0|U0|U0|U0|Add0~35\ & VCC))
-- \U0|U0|U0|U0|Add0~37\ = CARRY((\U0|U0|U0|U0|count\(18) & !\U0|U0|U0|U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(18),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~35\,
	combout => \U0|U0|U0|U0|Add0~36_combout\,
	cout => \U0|U0|U0|U0|Add0~37\);

-- Location: FF_X49_Y40_N5
\U0|U0|U0|U0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(18));

-- Location: LCCOMB_X49_Y40_N6
\U0|U0|U0|U0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~38_combout\ = (\U0|U0|U0|U0|count\(19) & (!\U0|U0|U0|U0|Add0~37\)) # (!\U0|U0|U0|U0|count\(19) & ((\U0|U0|U0|U0|Add0~37\) # (GND)))
-- \U0|U0|U0|U0|Add0~39\ = CARRY((!\U0|U0|U0|U0|Add0~37\) # (!\U0|U0|U0|U0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(19),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~37\,
	combout => \U0|U0|U0|U0|Add0~38_combout\,
	cout => \U0|U0|U0|U0|Add0~39\);

-- Location: FF_X49_Y40_N7
\U0|U0|U0|U0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(19));

-- Location: LCCOMB_X49_Y40_N8
\U0|U0|U0|U0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~40_combout\ = (\U0|U0|U0|U0|count\(20) & (\U0|U0|U0|U0|Add0~39\ $ (GND))) # (!\U0|U0|U0|U0|count\(20) & (!\U0|U0|U0|U0|Add0~39\ & VCC))
-- \U0|U0|U0|U0|Add0~41\ = CARRY((\U0|U0|U0|U0|count\(20) & !\U0|U0|U0|U0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(20),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~39\,
	combout => \U0|U0|U0|U0|Add0~40_combout\,
	cout => \U0|U0|U0|U0|Add0~41\);

-- Location: FF_X49_Y40_N9
\U0|U0|U0|U0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(20));

-- Location: LCCOMB_X49_Y40_N10
\U0|U0|U0|U0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~42_combout\ = (\U0|U0|U0|U0|count\(21) & (!\U0|U0|U0|U0|Add0~41\)) # (!\U0|U0|U0|U0|count\(21) & ((\U0|U0|U0|U0|Add0~41\) # (GND)))
-- \U0|U0|U0|U0|Add0~43\ = CARRY((!\U0|U0|U0|U0|Add0~41\) # (!\U0|U0|U0|U0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(21),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~41\,
	combout => \U0|U0|U0|U0|Add0~42_combout\,
	cout => \U0|U0|U0|U0|Add0~43\);

-- Location: FF_X49_Y40_N11
\U0|U0|U0|U0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(21));

-- Location: LCCOMB_X49_Y40_N12
\U0|U0|U0|U0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~44_combout\ = (\U0|U0|U0|U0|count\(22) & (\U0|U0|U0|U0|Add0~43\ $ (GND))) # (!\U0|U0|U0|U0|count\(22) & (!\U0|U0|U0|U0|Add0~43\ & VCC))
-- \U0|U0|U0|U0|Add0~45\ = CARRY((\U0|U0|U0|U0|count\(22) & !\U0|U0|U0|U0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(22),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~43\,
	combout => \U0|U0|U0|U0|Add0~44_combout\,
	cout => \U0|U0|U0|U0|Add0~45\);

-- Location: FF_X49_Y40_N13
\U0|U0|U0|U0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(22));

-- Location: LCCOMB_X49_Y40_N14
\U0|U0|U0|U0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~46_combout\ = (\U0|U0|U0|U0|count\(23) & (!\U0|U0|U0|U0|Add0~45\)) # (!\U0|U0|U0|U0|count\(23) & ((\U0|U0|U0|U0|Add0~45\) # (GND)))
-- \U0|U0|U0|U0|Add0~47\ = CARRY((!\U0|U0|U0|U0|Add0~45\) # (!\U0|U0|U0|U0|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(23),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~45\,
	combout => \U0|U0|U0|U0|Add0~46_combout\,
	cout => \U0|U0|U0|U0|Add0~47\);

-- Location: FF_X49_Y40_N15
\U0|U0|U0|U0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(23));

-- Location: LCCOMB_X50_Y40_N6
\U0|U0|U0|U0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~6_combout\ = (!\U0|U0|U0|U0|count\(22) & (!\U0|U0|U0|U0|count\(21) & (!\U0|U0|U0|U0|count\(23) & !\U0|U0|U0|U0|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(22),
	datab => \U0|U0|U0|U0|count\(21),
	datac => \U0|U0|U0|U0|count\(23),
	datad => \U0|U0|U0|U0|count\(20),
	combout => \U0|U0|U0|U0|Equal0~6_combout\);

-- Location: LCCOMB_X49_Y40_N16
\U0|U0|U0|U0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~48_combout\ = (\U0|U0|U0|U0|count\(24) & (\U0|U0|U0|U0|Add0~47\ $ (GND))) # (!\U0|U0|U0|U0|count\(24) & (!\U0|U0|U0|U0|Add0~47\ & VCC))
-- \U0|U0|U0|U0|Add0~49\ = CARRY((\U0|U0|U0|U0|count\(24) & !\U0|U0|U0|U0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(24),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~47\,
	combout => \U0|U0|U0|U0|Add0~48_combout\,
	cout => \U0|U0|U0|U0|Add0~49\);

-- Location: FF_X49_Y40_N17
\U0|U0|U0|U0|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(24));

-- Location: LCCOMB_X49_Y40_N18
\U0|U0|U0|U0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~50_combout\ = (\U0|U0|U0|U0|count\(25) & (!\U0|U0|U0|U0|Add0~49\)) # (!\U0|U0|U0|U0|count\(25) & ((\U0|U0|U0|U0|Add0~49\) # (GND)))
-- \U0|U0|U0|U0|Add0~51\ = CARRY((!\U0|U0|U0|U0|Add0~49\) # (!\U0|U0|U0|U0|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(25),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~49\,
	combout => \U0|U0|U0|U0|Add0~50_combout\,
	cout => \U0|U0|U0|U0|Add0~51\);

-- Location: FF_X49_Y40_N19
\U0|U0|U0|U0|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(25));

-- Location: LCCOMB_X49_Y40_N20
\U0|U0|U0|U0|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~52_combout\ = (\U0|U0|U0|U0|count\(26) & (\U0|U0|U0|U0|Add0~51\ $ (GND))) # (!\U0|U0|U0|U0|count\(26) & (!\U0|U0|U0|U0|Add0~51\ & VCC))
-- \U0|U0|U0|U0|Add0~53\ = CARRY((\U0|U0|U0|U0|count\(26) & !\U0|U0|U0|U0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(26),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~51\,
	combout => \U0|U0|U0|U0|Add0~52_combout\,
	cout => \U0|U0|U0|U0|Add0~53\);

-- Location: FF_X49_Y40_N21
\U0|U0|U0|U0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(26));

-- Location: LCCOMB_X49_Y40_N22
\U0|U0|U0|U0|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~54_combout\ = (\U0|U0|U0|U0|count\(27) & (!\U0|U0|U0|U0|Add0~53\)) # (!\U0|U0|U0|U0|count\(27) & ((\U0|U0|U0|U0|Add0~53\) # (GND)))
-- \U0|U0|U0|U0|Add0~55\ = CARRY((!\U0|U0|U0|U0|Add0~53\) # (!\U0|U0|U0|U0|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(27),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~53\,
	combout => \U0|U0|U0|U0|Add0~54_combout\,
	cout => \U0|U0|U0|U0|Add0~55\);

-- Location: FF_X49_Y40_N23
\U0|U0|U0|U0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(27));

-- Location: LCCOMB_X50_Y40_N24
\U0|U0|U0|U0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~7_combout\ = (!\U0|U0|U0|U0|count\(26) & (!\U0|U0|U0|U0|count\(27) & (!\U0|U0|U0|U0|count\(24) & !\U0|U0|U0|U0|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(26),
	datab => \U0|U0|U0|U0|count\(27),
	datac => \U0|U0|U0|U0|count\(24),
	datad => \U0|U0|U0|U0|count\(25),
	combout => \U0|U0|U0|U0|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y40_N24
\U0|U0|U0|U0|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~56_combout\ = (\U0|U0|U0|U0|count\(28) & (\U0|U0|U0|U0|Add0~55\ $ (GND))) # (!\U0|U0|U0|U0|count\(28) & (!\U0|U0|U0|U0|Add0~55\ & VCC))
-- \U0|U0|U0|U0|Add0~57\ = CARRY((\U0|U0|U0|U0|count\(28) & !\U0|U0|U0|U0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(28),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~55\,
	combout => \U0|U0|U0|U0|Add0~56_combout\,
	cout => \U0|U0|U0|U0|Add0~57\);

-- Location: FF_X49_Y40_N25
\U0|U0|U0|U0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(28));

-- Location: LCCOMB_X49_Y40_N26
\U0|U0|U0|U0|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~58_combout\ = (\U0|U0|U0|U0|count\(29) & (!\U0|U0|U0|U0|Add0~57\)) # (!\U0|U0|U0|U0|count\(29) & ((\U0|U0|U0|U0|Add0~57\) # (GND)))
-- \U0|U0|U0|U0|Add0~59\ = CARRY((!\U0|U0|U0|U0|Add0~57\) # (!\U0|U0|U0|U0|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(29),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~57\,
	combout => \U0|U0|U0|U0|Add0~58_combout\,
	cout => \U0|U0|U0|U0|Add0~59\);

-- Location: FF_X49_Y40_N27
\U0|U0|U0|U0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(29));

-- Location: LCCOMB_X49_Y40_N28
\U0|U0|U0|U0|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~60_combout\ = (\U0|U0|U0|U0|count\(30) & (\U0|U0|U0|U0|Add0~59\ $ (GND))) # (!\U0|U0|U0|U0|count\(30) & (!\U0|U0|U0|U0|Add0~59\ & VCC))
-- \U0|U0|U0|U0|Add0~61\ = CARRY((\U0|U0|U0|U0|count\(30) & !\U0|U0|U0|U0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U0|count\(30),
	datad => VCC,
	cin => \U0|U0|U0|U0|Add0~59\,
	combout => \U0|U0|U0|U0|Add0~60_combout\,
	cout => \U0|U0|U0|U0|Add0~61\);

-- Location: FF_X49_Y40_N29
\U0|U0|U0|U0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(30));

-- Location: LCCOMB_X49_Y40_N30
\U0|U0|U0|U0|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Add0~62_combout\ = \U0|U0|U0|U0|count\(31) $ (\U0|U0|U0|U0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(31),
	cin => \U0|U0|U0|U0|Add0~61\,
	combout => \U0|U0|U0|U0|Add0~62_combout\);

-- Location: FF_X49_Y40_N31
\U0|U0|U0|U0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|count\(31));

-- Location: LCCOMB_X50_Y40_N10
\U0|U0|U0|U0|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~8_combout\ = (!\U0|U0|U0|U0|count\(31) & (!\U0|U0|U0|U0|count\(30) & (!\U0|U0|U0|U0|count\(29) & !\U0|U0|U0|U0|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(31),
	datab => \U0|U0|U0|U0|count\(30),
	datac => \U0|U0|U0|U0|count\(29),
	datad => \U0|U0|U0|U0|count\(28),
	combout => \U0|U0|U0|U0|Equal0~8_combout\);

-- Location: LCCOMB_X50_Y40_N12
\U0|U0|U0|U0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~5_combout\ = (!\U0|U0|U0|U0|count\(19) & (\U0|U0|U0|U0|count\(17) & (!\U0|U0|U0|U0|count\(18) & \U0|U0|U0|U0|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(19),
	datab => \U0|U0|U0|U0|count\(17),
	datac => \U0|U0|U0|U0|count\(18),
	datad => \U0|U0|U0|U0|count\(16),
	combout => \U0|U0|U0|U0|Equal0~5_combout\);

-- Location: LCCOMB_X50_Y40_N4
\U0|U0|U0|U0|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~9_combout\ = (\U0|U0|U0|U0|Equal0~6_combout\ & (\U0|U0|U0|U0|Equal0~7_combout\ & (\U0|U0|U0|U0|Equal0~8_combout\ & \U0|U0|U0|U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|Equal0~6_combout\,
	datab => \U0|U0|U0|U0|Equal0~7_combout\,
	datac => \U0|U0|U0|U0|Equal0~8_combout\,
	datad => \U0|U0|U0|U0|Equal0~5_combout\,
	combout => \U0|U0|U0|U0|Equal0~9_combout\);

-- Location: LCCOMB_X50_Y41_N28
\U0|U0|U0|U0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~4_combout\ = (!\U0|U0|U0|U0|count\(13) & (\U0|U0|U0|U0|count\(15) & (\U0|U0|U0|U0|count\(12) & \U0|U0|U0|U0|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(13),
	datab => \U0|U0|U0|U0|count\(15),
	datac => \U0|U0|U0|U0|count\(12),
	datad => \U0|U0|U0|U0|count\(14),
	combout => \U0|U0|U0|U0|Equal0~4_combout\);

-- Location: LCCOMB_X50_Y41_N18
\U0|U0|U0|U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~0_combout\ = (!\U0|U0|U0|U0|count\(1) & \U0|U0|U0|U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(1),
	datad => \U0|U0|U0|U0|count\(0),
	combout => \U0|U0|U0|U0|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y41_N16
\U0|U0|U0|U0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~1_combout\ = (!\U0|U0|U0|U0|count\(5) & (\U0|U0|U0|U0|count\(4) & (\U0|U0|U0|U0|count\(7) & !\U0|U0|U0|U0|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(5),
	datab => \U0|U0|U0|U0|count\(4),
	datac => \U0|U0|U0|U0|count\(7),
	datad => \U0|U0|U0|U0|count\(6),
	combout => \U0|U0|U0|U0|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y41_N26
\U0|U0|U0|U0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~2_combout\ = (\U0|U0|U0|U0|Equal0~0_combout\ & (!\U0|U0|U0|U0|count\(3) & (!\U0|U0|U0|U0|count\(2) & \U0|U0|U0|U0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|Equal0~0_combout\,
	datab => \U0|U0|U0|U0|count\(3),
	datac => \U0|U0|U0|U0|count\(2),
	datad => \U0|U0|U0|U0|Equal0~1_combout\,
	combout => \U0|U0|U0|U0|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y41_N12
\U0|U0|U0|U0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~3_combout\ = (!\U0|U0|U0|U0|count\(11) & (!\U0|U0|U0|U0|count\(10) & (!\U0|U0|U0|U0|count\(8) & !\U0|U0|U0|U0|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(11),
	datab => \U0|U0|U0|U0|count\(10),
	datac => \U0|U0|U0|U0|count\(8),
	datad => \U0|U0|U0|U0|count\(9),
	combout => \U0|U0|U0|U0|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y41_N30
\U0|U0|U0|U0|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|Equal0~10_combout\ = (\U0|U0|U0|U0|Equal0~9_combout\ & (\U0|U0|U0|U0|Equal0~4_combout\ & (\U0|U0|U0|U0|Equal0~2_combout\ & \U0|U0|U0|U0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|Equal0~9_combout\,
	datab => \U0|U0|U0|U0|Equal0~4_combout\,
	datac => \U0|U0|U0|U0|Equal0~2_combout\,
	datad => \U0|U0|U0|U0|Equal0~3_combout\,
	combout => \U0|U0|U0|U0|Equal0~10_combout\);

-- Location: LCCOMB_X50_Y39_N8
\U0|U0|U0|U0|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|tmp~0_combout\ = \U0|U0|U0|U0|tmp~q\ $ (\U0|U0|U0|U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U0|tmp~q\,
	datad => \U0|U0|U0|U0|Equal0~10_combout\,
	combout => \U0|U0|U0|U0|tmp~0_combout\);

-- Location: FF_X50_Y39_N9
\U0|U0|U0|U0|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U0|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U0|tmp~q\);

-- Location: CLKCTRL_G7
\U0|U0|U0|U0|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U0|U0|U0|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U0|U0|U0|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X40_Y0_N22
\Lines[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(3),
	o => \Lines[3]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\Lines[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(1),
	o => \Lines[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\Lines[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(2),
	o => \Lines[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Lines[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(0),
	o => \Lines[0]~input_o\);

-- Location: LCCOMB_X38_Y30_N26
\U0|U0|U0|U1|U2|GS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U2|GS~0_combout\ = (\Lines[3]~input_o\ & (\Lines[1]~input_o\ & (\Lines[2]~input_o\ & \Lines[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lines[3]~input_o\,
	datab => \Lines[1]~input_o\,
	datac => \Lines[2]~input_o\,
	datad => \Lines[0]~input_o\,
	combout => \U0|U0|U0|U1|U2|GS~0_combout\);

-- Location: LCCOMB_X38_Y30_N12
\U0|U0|U0|U1|U2|Y[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U2|Y[1]~0_combout\ = (!\Lines[2]~input_o\) # (!\Lines[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lines[3]~input_o\,
	datac => \Lines[2]~input_o\,
	combout => \U0|U0|U0|U1|U2|Y[1]~0_combout\);

-- Location: LCCOMB_X38_Y30_N30
\U0|U0|U0|U2|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.state_bit_0~1_combout\ = (\U0|U0|U0|U2|CurrentState.state_bit_0~0_combout\ & (((\U0|U0|U0|U1|U2|Y[1]~0_combout\) # (!\Lines[1]~input_o\)) # (!\Lines[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lines[0]~input_o\,
	datab => \U0|U0|U0|U2|CurrentState.state_bit_0~0_combout\,
	datac => \Lines[1]~input_o\,
	datad => \U0|U0|U0|U1|U2|Y[1]~0_combout\,
	combout => \U0|U0|U0|U2|CurrentState.state_bit_0~1_combout\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X34_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X34_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X35_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X35_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X35_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X35_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X35_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X35_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X35_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X35_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X35_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X35_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X35_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X35_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X35_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X34_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X34_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X34_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X34_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X34_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X34_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X34_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X34_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X34_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X34_Y35_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X40_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X40_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X40_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X40_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X40_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X40_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X34_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X34_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X34_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X34_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X34_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X34_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X34_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X34_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: CLKCTRL_G1
\U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_outclk\);

-- Location: IOIBUF_X69_Y54_N1
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X38_Y30_N8
\U0|U0|U0|U2|CurrentState.RegisterDeliver~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.RegisterDeliver~0_combout\ = (!\U0|U0|U0|U2|CurrentState.state_bit_1~q\ & \U0|U0|U0|U2|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|CurrentState.state_bit_1~q\,
	datac => \U0|U0|U0|U2|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U0|U2|CurrentState.RegisterDeliver~0_combout\);

-- Location: FF_X38_Y30_N13
\U0|U0|U0|U1|U3|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U0|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U1|U2|Y[1]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U0|U0|U2|CurrentState.RegisterDeliver~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U1|U3|U0|Q~q\);

-- Location: LCCOMB_X39_Y31_N10
\U0|U0|U1|U1|idxGet|U1|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|idxGet|U1|U2|Q~0_combout\ = \U0|U0|U1|U1|idxGet|U1|U2|Q~q\ $ (((!\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & \U0|U0|U1|U0|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U1|idxGet|U1|U2|Q~q\,
	combout => \U0|U0|U1|U1|idxGet|U1|U2|Q~0_combout\);

-- Location: FF_X39_Y31_N11
\U0|U0|U1|U1|idxGet|U1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U1|idxGet|U1|U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U1|idxGet|U1|U2|Q~q\);

-- Location: LCCOMB_X39_Y31_N2
\U0|U0|U1|U1|idxGet|U1|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|idxGet|U1|U1|Q~0_combout\ = \U0|U0|U1|U1|idxGet|U1|U1|Q~q\ $ (((!\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & (\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & \U0|U0|U1|U1|idxGet|U1|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U1|idxGet|U1|U1|Q~q\,
	datad => \U0|U0|U1|U1|idxGet|U1|U2|Q~q\,
	combout => \U0|U0|U1|U1|idxGet|U1|U1|Q~0_combout\);

-- Location: FF_X39_Y31_N3
\U0|U0|U1|U1|idxGet|U1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U1|idxGet|U1|U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U1|idxGet|U1|U1|Q~q\);

-- Location: LCCOMB_X39_Y31_N28
\U0|U0|U1|U0|selnPG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|selnPG~0_combout\ = (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & ((\U0|U0|U1|U0|CurrentState.state_bit_1~q\) # (\U0|U0|U1|U0|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U1|U0|selnPG~0_combout\);

-- Location: LCCOMB_X39_Y31_N26
\U0|U0|U1|U0|CurrentState.IncrPut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.IncrPut~0_combout\ = (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & (\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & !\U0|U0|U1|U0|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U1|U0|CurrentState.IncrPut~0_combout\);

-- Location: LCCOMB_X39_Y31_N24
\U0|U0|U1|U1|idxPut|U1|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|idxPut|U1|U2|Q~0_combout\ = \U0|U0|U1|U1|idxPut|U1|U2|Q~q\ $ (((\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & !\U0|U0|U1|U0|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U1|idxPut|U1|U2|Q~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U1|U1|idxPut|U1|U2|Q~0_combout\);

-- Location: FF_X39_Y31_N25
\U0|U0|U1|U1|idxPut|U1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U1|idxPut|U1|U2|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U1|idxPut|U1|U2|Q~q\);

-- Location: LCCOMB_X39_Y31_N0
\U0|U0|U1|U1|idxPut|U1|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|idxPut|U1|U1|Q~0_combout\ = \U0|U0|U1|U1|idxPut|U1|U1|Q~q\ $ (((\U0|U0|U1|U0|CurrentState.IncrPut~0_combout\ & \U0|U0|U1|U1|idxPut|U1|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.IncrPut~0_combout\,
	datac => \U0|U0|U1|U1|idxPut|U1|U1|Q~q\,
	datad => \U0|U0|U1|U1|idxPut|U1|U2|Q~q\,
	combout => \U0|U0|U1|U1|idxPut|U1|U1|Q~0_combout\);

-- Location: FF_X39_Y31_N1
\U0|U0|U1|U1|idxPut|U1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U1|idxPut|U1|U1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U1|idxPut|U1|U1|Q~q\);

-- Location: LCCOMB_X39_Y31_N4
\U0|U0|U1|U1|Mux_putandget|Y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ = (\U0|U0|U1|U0|selnPG~0_combout\ & ((\U0|U0|U1|U1|idxPut|U1|U1|Q~q\))) # (!\U0|U0|U1|U0|selnPG~0_combout\ & (\U0|U0|U1|U1|idxGet|U1|U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U1|U1|idxGet|U1|U1|Q~q\,
	datac => \U0|U0|U1|U0|selnPG~0_combout\,
	datad => \U0|U0|U1|U1|idxPut|U1|U1|Q~q\,
	combout => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\);

-- Location: LCCOMB_X39_Y31_N22
\U0|U0|U1|U1|Mux_putandget|Y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ = (\U0|U0|U1|U0|selnPG~0_combout\ & ((\U0|U0|U1|U1|idxPut|U1|U2|Q~q\))) # (!\U0|U0|U1|U0|selnPG~0_combout\ & (\U0|U0|U1|U1|idxGet|U1|U2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|idxGet|U1|U2|Q~q\,
	datab => \U0|U0|U1|U0|selnPG~0_combout\,
	datad => \U0|U0|U1|U1|idxPut|U1|U2|Q~q\,
	combout => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\);

-- Location: LCCOMB_X38_Y33_N16
\U0|U0|U1|U0|CurrentState.Write_done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.Write_done~0_combout\ = (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & (\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & \U0|U0|U1|U0|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\);

-- Location: LCCOMB_X39_Y31_N6
\U0|U0|U1|U1|idxPut|U1|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|idxPut|U1|U0|Q~0_combout\ = \U0|U0|U1|U1|idxPut|U1|U0|Q~q\ $ (((\U0|U0|U1|U0|CurrentState.IncrPut~0_combout\ & (\U0|U0|U1|U1|idxPut|U1|U1|Q~q\ & \U0|U0|U1|U1|idxPut|U1|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.IncrPut~0_combout\,
	datab => \U0|U0|U1|U1|idxPut|U1|U1|Q~q\,
	datac => \U0|U0|U1|U1|idxPut|U1|U0|Q~q\,
	datad => \U0|U0|U1|U1|idxPut|U1|U2|Q~q\,
	combout => \U0|U0|U1|U1|idxPut|U1|U0|Q~0_combout\);

-- Location: FF_X39_Y31_N7
\U0|U0|U1|U1|idxPut|U1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U1|idxPut|U1|U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U1|idxPut|U1|U0|Q~q\);

-- Location: LCCOMB_X39_Y31_N12
\U0|U0|U1|U1|idxGet|U1|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|idxGet|U1|U0|Q~0_combout\ = (\U0|U0|U1|U1|idxGet|U1|U2|Q~q\ & (\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & (!\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & \U0|U0|U1|U1|idxGet|U1|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|idxGet|U1|U2|Q~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U1|U1|idxGet|U1|U1|Q~q\,
	combout => \U0|U0|U1|U1|idxGet|U1|U0|Q~0_combout\);

-- Location: LCCOMB_X39_Y31_N8
\U0|U0|U1|U1|idxGet|U1|U0|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|idxGet|U1|U0|Q~1_combout\ = \U0|U0|U1|U1|idxGet|U1|U0|Q~q\ $ (\U0|U0|U1|U1|idxGet|U1|U0|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U1|U1|idxGet|U1|U0|Q~q\,
	datad => \U0|U0|U1|U1|idxGet|U1|U0|Q~0_combout\,
	combout => \U0|U0|U1|U1|idxGet|U1|U0|Q~1_combout\);

-- Location: FF_X39_Y31_N9
\U0|U0|U1|U1|idxGet|U1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U1|idxGet|U1|U0|Q~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U1|idxGet|U1|U0|Q~q\);

-- Location: LCCOMB_X39_Y31_N18
\U0|U0|U1|U1|Mux_putandget|Y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ = (\U0|U0|U1|U0|selnPG~0_combout\ & (\U0|U0|U1|U1|idxPut|U1|U0|Q~q\)) # (!\U0|U0|U1|U0|selnPG~0_combout\ & ((\U0|U0|U1|U1|idxGet|U1|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|idxPut|U1|U0|Q~q\,
	datab => \U0|U0|U1|U0|selnPG~0_combout\,
	datac => \U0|U0|U1|U1|idxGet|U1|U0|Q~q\,
	combout => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\);

-- Location: LCCOMB_X38_Y35_N16
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & !\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G14
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X38_Y30_N2
\U0|U0|U1|U2|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U3|U0|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~9_combout\,
	combout => \U0|U0|U1|U2|ram~9_combout\);

-- Location: LCCOMB_X38_Y35_N14
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & !\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G13
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X39_Y29_N16
\U0|U0|U1|U2|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U0|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~13_combout\,
	combout => \U0|U0|U1|U2|ram~13_combout\);

-- Location: LCCOMB_X38_Y35_N4
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & !\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G2
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X38_Y30_N28
\U0|U0|U1|U2|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U3|U0|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~1_combout\,
	combout => \U0|U0|U1|U2|ram~1_combout\);

-- Location: LCCOMB_X38_Y35_N26
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & !\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G17
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X38_Y31_N12
\U0|U0|U1|U2|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U3|U0|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~5_combout\,
	combout => \U0|U0|U1|U2|ram~5_combout\);

-- Location: LCCOMB_X39_Y29_N26
\U0|U0|U1|U2|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~39_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (((\U0|U0|U1|U2|ram~5_combout\) # (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U2|ram~1_combout\ & 
-- ((!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~1_combout\,
	datab => \U0|U0|U1|U2|ram~5_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	combout => \U0|U0|U1|U2|ram~39_combout\);

-- Location: LCCOMB_X39_Y29_N20
\U0|U0|U1|U2|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~40_combout\ = (\U0|U0|U1|U2|ram~39_combout\ & (((\U0|U0|U1|U2|ram~13_combout\) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\)))) # (!\U0|U0|U1|U2|ram~39_combout\ & (\U0|U0|U1|U2|ram~9_combout\ & 
-- ((\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~9_combout\,
	datab => \U0|U0|U1|U2|ram~13_combout\,
	datac => \U0|U0|U1|U2|ram~39_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	combout => \U0|U0|U1|U2|ram~40_combout\);

-- Location: LCCOMB_X38_Y35_N20
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G5
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X39_Y29_N30
\U0|U0|U1|U2|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U0|Q~q\,
	datac => \U0|U0|U1|U2|ram~17_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \U0|U0|U1|U2|ram~17_combout\);

-- Location: LCCOMB_X38_Y35_N18
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G11
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X38_Y31_N0
\U0|U0|U1|U2|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5clkctrl_outclk\,
	datac => \U0|U0|U0|U1|U3|U0|Q~q\,
	datad => \U0|U0|U1|U2|ram~25_combout\,
	combout => \U0|U0|U1|U2|ram~25_combout\);

-- Location: LCCOMB_X39_Y29_N22
\U0|U0|U1|U2|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~37_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\) # (\U0|U0|U1|U2|ram~25_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (\U0|U0|U1|U2|ram~17_combout\ & 
-- (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~17_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datad => \U0|U0|U1|U2|ram~25_combout\,
	combout => \U0|U0|U1|U2|ram~37_combout\);

-- Location: LCCOMB_X38_Y35_N8
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G8
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X39_Y29_N28
\U0|U0|U1|U2|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U0|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~21_combout\,
	combout => \U0|U0|U1|U2|ram~21_combout\);

-- Location: LCCOMB_X38_Y35_N30
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U0|CurrentState.Write_done~0_combout\ & \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.Write_done~0_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G4
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X38_Y31_N10
\U0|U0|U1|U2|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U0|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U3|U0|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~29_combout\,
	combout => \U0|U0|U1|U2|ram~29_combout\);

-- Location: LCCOMB_X39_Y29_N8
\U0|U0|U1|U2|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~38_combout\ = (\U0|U0|U1|U2|ram~37_combout\ & (((\U0|U0|U1|U2|ram~29_combout\) # (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U2|ram~37_combout\ & (\U0|U0|U1|U2|ram~21_combout\ & 
-- (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~37_combout\,
	datab => \U0|U0|U1|U2|ram~21_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datad => \U0|U0|U1|U2|ram~29_combout\,
	combout => \U0|U0|U1|U2|ram~38_combout\);

-- Location: LCCOMB_X39_Y29_N0
\U0|U0|U1|U2|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~41_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & ((\U0|U0|U1|U2|ram~38_combout\))) # (!\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & (\U0|U0|U1|U2|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U1|U2|ram~40_combout\,
	datac => \U0|U0|U1|U2|ram~38_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \U0|U0|U1|U2|ram~41_combout\);

-- Location: FF_X39_Y29_N1
\U0|U0|U2|U0|U0|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_outclk\,
	d => \U0|U0|U1|U2|ram~41_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U2|U0|U0|U2|Q~q\);

-- Location: LCCOMB_X31_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X32_Y37_N2
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X38_Y30_N4
\U0|U0|U0|U1|U2|Y[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U2|Y\(0) = ((!\Lines[1]~input_o\ & \Lines[2]~input_o\)) # (!\Lines[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lines[3]~input_o\,
	datab => \Lines[1]~input_o\,
	datac => \Lines[2]~input_o\,
	combout => \U0|U0|U0|U1|U2|Y\(0));

-- Location: FF_X38_Y30_N5
\U0|U0|U0|U1|U3|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U0|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U1|U2|Y\(0),
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U0|U0|U2|CurrentState.RegisterDeliver~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U1|U3|U1|Q~q\);

-- Location: LCCOMB_X37_Y35_N0
\U0|U0|U1|U2|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U1|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~12_combout\,
	combout => \U0|U0|U1|U2|ram~12_combout\);

-- Location: LCCOMB_X42_Y31_N10
\U0|U0|U1|U2|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U3|U1|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~4_combout\,
	combout => \U0|U0|U1|U2|ram~4_combout\);

-- Location: LCCOMB_X42_Y31_N12
\U0|U0|U1|U2|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U3|U1|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~0_combout\,
	combout => \U0|U0|U1|U2|ram~0_combout\);

-- Location: LCCOMB_X42_Y31_N8
\U0|U0|U1|U2|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~34_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & ((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U2|ram~4_combout\)) # 
-- (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & ((\U0|U0|U1|U2|ram~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~4_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datad => \U0|U0|U1|U2|ram~0_combout\,
	combout => \U0|U0|U1|U2|ram~34_combout\);

-- Location: LCCOMB_X38_Y32_N16
\U0|U0|U1|U2|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U1|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~8_combout\,
	combout => \U0|U0|U1|U2|ram~8_combout\);

-- Location: LCCOMB_X38_Y35_N6
\U0|U0|U1|U2|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~35_combout\ = (\U0|U0|U1|U2|ram~34_combout\ & ((\U0|U0|U1|U2|ram~12_combout\) # ((!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\)))) # (!\U0|U0|U1|U2|ram~34_combout\ & (((\U0|U0|U1|U2|ram~8_combout\ & 
-- \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~12_combout\,
	datab => \U0|U0|U1|U2|ram~34_combout\,
	datac => \U0|U0|U1|U2|ram~8_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	combout => \U0|U0|U1|U2|ram~35_combout\);

-- Location: LCCOMB_X38_Y35_N24
\U0|U0|U1|U2|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U1|Q~q\,
	datab => \U0|U0|U1|U2|ram~24_combout\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \U0|U0|U1|U2|ram~24_combout\);

-- Location: LCCOMB_X38_Y35_N2
\U0|U0|U1|U2|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U1|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~16_combout\,
	combout => \U0|U0|U1|U2|ram~16_combout\);

-- Location: LCCOMB_X38_Y35_N10
\U0|U0|U1|U2|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~32_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & ((\U0|U0|U1|U2|ram~24_combout\) # ((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (((\U0|U0|U1|U2|ram~16_combout\ & 
-- !\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U2|ram~24_combout\,
	datac => \U0|U0|U1|U2|ram~16_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	combout => \U0|U0|U1|U2|ram~32_combout\);

-- Location: LCCOMB_X38_Y35_N28
\U0|U0|U1|U2|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U3|U1|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~28_combout\,
	combout => \U0|U0|U1|U2|ram~28_combout\);

-- Location: LCCOMB_X39_Y33_N0
\U0|U0|U1|U2|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|U0|U0|U1|U3|U1|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U3|U1|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~20_combout\,
	combout => \U0|U0|U1|U2|ram~20_combout\);

-- Location: LCCOMB_X38_Y35_N12
\U0|U0|U1|U2|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~33_combout\ = (\U0|U0|U1|U2|ram~32_combout\ & ((\U0|U0|U1|U2|ram~28_combout\) # ((!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U2|ram~32_combout\ & (((\U0|U0|U1|U2|ram~20_combout\ & 
-- \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~32_combout\,
	datab => \U0|U0|U1|U2|ram~28_combout\,
	datac => \U0|U0|U1|U2|ram~20_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	combout => \U0|U0|U1|U2|ram~33_combout\);

-- Location: LCCOMB_X38_Y35_N0
\U0|U0|U1|U2|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~36_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & ((\U0|U0|U1|U2|ram~33_combout\))) # (!\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & (\U0|U0|U1|U2|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~35_combout\,
	datac => \U0|U0|U1|U2|ram~33_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \U0|U0|U1|U2|ram~36_combout\);

-- Location: FF_X38_Y35_N1
\U0|U0|U2|U0|U0|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_outclk\,
	d => \U0|U0|U1|U2|ram~36_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U2|U0|U0|U3|Q~q\);

-- Location: LCCOMB_X31_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \U0|U0|U2|U0|U0|U3|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: LCCOMB_X34_Y35_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X38_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X38_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X38_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X38_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X38_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X38_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X38_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X38_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X38_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X38_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X38_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X38_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X38_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X38_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X38_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X38_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X38_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X38_Y37_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X38_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X38_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X34_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X34_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X34_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X32_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X32_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X31_Y36_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X34_Y35_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X34_Y35_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X34_Y35_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X34_Y35_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X34_Y35_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X32_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: FF_X34_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X32_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X32_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X34_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X34_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X31_Y36_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X29_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X29_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X31_Y36_N8
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X31_Y36_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \~GND~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X31_Y36_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: IOIBUF_X51_Y54_N29
\M~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X31_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \M~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X31_Y36_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X29_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X29_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X29_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X29_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: FF_X29_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: CLKCTRL_G0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y47_N18
\U0|U2|UO|U1|U1|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U1|U1|U2|Q~0_combout\ = !\U0|U2|UO|U1|U1|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U2|UO|U1|U1|U2|Q~q\,
	combout => \U0|U2|UO|U1|U1|U2|Q~0_combout\);

-- Location: CLKCTRL_G6
\U0|U2|UO|U2|CurrentState.Not_started~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_outclk\);

-- Location: FF_X63_Y47_N19
\U0|U2|UO|U1|U1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U2|UO|U1|U1|U2|Q~0_combout\,
	clrn => \U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U1|U1|U2|Q~q\);

-- Location: LCCOMB_X63_Y47_N22
\U0|U2|UO|U1|U1|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U1|U1|U1|Q~0_combout\ = \U0|U2|UO|U1|U1|U1|Q~q\ $ (\U0|U2|UO|U1|U1|U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U2|UO|U1|U1|U1|Q~q\,
	datad => \U0|U2|UO|U1|U1|U2|Q~q\,
	combout => \U0|U2|UO|U1|U1|U1|Q~0_combout\);

-- Location: FF_X63_Y47_N23
\U0|U2|UO|U1|U1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U2|UO|U1|U1|U1|Q~0_combout\,
	clrn => \U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U1|U1|U1|Q~q\);

-- Location: LCCOMB_X63_Y47_N12
\U0|U2|UO|U1|U1|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U1|U1|U0|Q~0_combout\ = \U0|U2|UO|U1|U1|U0|Q~q\ $ (((\U0|U2|UO|U1|U1|U1|Q~q\ & \U0|U2|UO|U1|U1|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|UO|U1|U1|U1|Q~q\,
	datac => \U0|U2|UO|U1|U1|U0|Q~q\,
	datad => \U0|U2|UO|U1|U1|U2|Q~q\,
	combout => \U0|U2|UO|U1|U1|U0|Q~0_combout\);

-- Location: FF_X63_Y47_N13
\U0|U2|UO|U1|U1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U2|UO|U1|U1|U0|Q~0_combout\,
	clrn => \U0|U2|UO|U2|CurrentState.Not_started~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U1|U1|U0|Q~q\);

-- Location: LCCOMB_X63_Y50_N12
\U0|U2|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_0~0_combout\ = (!\U0|U2|U1|CurrentState.state_bit_0~q\ & (!\U0|U2|U1|CurrentState.state_bit_1~q\ & (\U0|U2|UO|U2|CurrentState.state_bit_1~q\ & \U0|U2|UO|U2|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datac => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	datad => \U0|U2|UO|U2|CurrentState.state_bit_0~q\,
	combout => \U0|U2|U1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X47_Y42_N2
\U1|UCLK|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~1_cout\ = CARRY((\U0|U0|U0|U0|count\(1) & !\U0|U0|U0|U0|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U0|count\(1),
	datab => \U0|U0|U0|U0|count\(0),
	datad => VCC,
	cout => \U1|UCLK|Add0~1_cout\);

-- Location: LCCOMB_X47_Y42_N4
\U1|UCLK|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~2_combout\ = (\U1|UCLK|count\(2) & (!\U1|UCLK|Add0~1_cout\)) # (!\U1|UCLK|count\(2) & ((\U1|UCLK|Add0~1_cout\) # (GND)))
-- \U1|UCLK|Add0~3\ = CARRY((!\U1|UCLK|Add0~1_cout\) # (!\U1|UCLK|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(2),
	datad => VCC,
	cin => \U1|UCLK|Add0~1_cout\,
	combout => \U1|UCLK|Add0~2_combout\,
	cout => \U1|UCLK|Add0~3\);

-- Location: FF_X47_Y42_N5
\U1|UCLK|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(2));

-- Location: LCCOMB_X47_Y42_N6
\U1|UCLK|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~4_combout\ = (\U1|UCLK|count\(3) & (\U1|UCLK|Add0~3\ $ (GND))) # (!\U1|UCLK|count\(3) & (!\U1|UCLK|Add0~3\ & VCC))
-- \U1|UCLK|Add0~5\ = CARRY((\U1|UCLK|count\(3) & !\U1|UCLK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(3),
	datad => VCC,
	cin => \U1|UCLK|Add0~3\,
	combout => \U1|UCLK|Add0~4_combout\,
	cout => \U1|UCLK|Add0~5\);

-- Location: FF_X47_Y42_N7
\U1|UCLK|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(3));

-- Location: LCCOMB_X47_Y42_N8
\U1|UCLK|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~6_combout\ = (\U1|UCLK|count\(4) & (!\U1|UCLK|Add0~5\)) # (!\U1|UCLK|count\(4) & ((\U1|UCLK|Add0~5\) # (GND)))
-- \U1|UCLK|Add0~7\ = CARRY((!\U1|UCLK|Add0~5\) # (!\U1|UCLK|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(4),
	datad => VCC,
	cin => \U1|UCLK|Add0~5\,
	combout => \U1|UCLK|Add0~6_combout\,
	cout => \U1|UCLK|Add0~7\);

-- Location: FF_X47_Y42_N9
\U1|UCLK|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(4));

-- Location: LCCOMB_X47_Y42_N10
\U1|UCLK|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~8_combout\ = (\U1|UCLK|count\(5) & (\U1|UCLK|Add0~7\ $ (GND))) # (!\U1|UCLK|count\(5) & (!\U1|UCLK|Add0~7\ & VCC))
-- \U1|UCLK|Add0~9\ = CARRY((\U1|UCLK|count\(5) & !\U1|UCLK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(5),
	datad => VCC,
	cin => \U1|UCLK|Add0~7\,
	combout => \U1|UCLK|Add0~8_combout\,
	cout => \U1|UCLK|Add0~9\);

-- Location: FF_X47_Y42_N11
\U1|UCLK|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(5));

-- Location: LCCOMB_X47_Y42_N12
\U1|UCLK|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~10_combout\ = (\U1|UCLK|count\(6) & (!\U1|UCLK|Add0~9\)) # (!\U1|UCLK|count\(6) & ((\U1|UCLK|Add0~9\) # (GND)))
-- \U1|UCLK|Add0~11\ = CARRY((!\U1|UCLK|Add0~9\) # (!\U1|UCLK|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(6),
	datad => VCC,
	cin => \U1|UCLK|Add0~9\,
	combout => \U1|UCLK|Add0~10_combout\,
	cout => \U1|UCLK|Add0~11\);

-- Location: LCCOMB_X46_Y41_N10
\U1|UCLK|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|count~0_combout\ = (!\U1|UCLK|Equal0~9_combout\ & \U1|UCLK|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|Equal0~9_combout\,
	datac => \U1|UCLK|Add0~10_combout\,
	combout => \U1|UCLK|count~0_combout\);

-- Location: FF_X46_Y41_N11
\U1|UCLK|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(6));

-- Location: LCCOMB_X47_Y42_N14
\U1|UCLK|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~12_combout\ = (\U1|UCLK|count\(7) & (\U1|UCLK|Add0~11\ $ (GND))) # (!\U1|UCLK|count\(7) & (!\U1|UCLK|Add0~11\ & VCC))
-- \U1|UCLK|Add0~13\ = CARRY((\U1|UCLK|count\(7) & !\U1|UCLK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(7),
	datad => VCC,
	cin => \U1|UCLK|Add0~11\,
	combout => \U1|UCLK|Add0~12_combout\,
	cout => \U1|UCLK|Add0~13\);

-- Location: FF_X47_Y42_N15
\U1|UCLK|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(7));

-- Location: LCCOMB_X47_Y42_N16
\U1|UCLK|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~14_combout\ = (\U1|UCLK|count\(8) & (!\U1|UCLK|Add0~13\)) # (!\U1|UCLK|count\(8) & ((\U1|UCLK|Add0~13\) # (GND)))
-- \U1|UCLK|Add0~15\ = CARRY((!\U1|UCLK|Add0~13\) # (!\U1|UCLK|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(8),
	datad => VCC,
	cin => \U1|UCLK|Add0~13\,
	combout => \U1|UCLK|Add0~14_combout\,
	cout => \U1|UCLK|Add0~15\);

-- Location: FF_X47_Y42_N17
\U1|UCLK|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(8));

-- Location: LCCOMB_X47_Y42_N18
\U1|UCLK|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~16_combout\ = (\U1|UCLK|count\(9) & (\U1|UCLK|Add0~15\ $ (GND))) # (!\U1|UCLK|count\(9) & (!\U1|UCLK|Add0~15\ & VCC))
-- \U1|UCLK|Add0~17\ = CARRY((\U1|UCLK|count\(9) & !\U1|UCLK|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(9),
	datad => VCC,
	cin => \U1|UCLK|Add0~15\,
	combout => \U1|UCLK|Add0~16_combout\,
	cout => \U1|UCLK|Add0~17\);

-- Location: LCCOMB_X46_Y41_N0
\U1|UCLK|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|count~1_combout\ = (!\U1|UCLK|Equal0~9_combout\ & \U1|UCLK|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|UCLK|Equal0~9_combout\,
	datad => \U1|UCLK|Add0~16_combout\,
	combout => \U1|UCLK|count~1_combout\);

-- Location: FF_X46_Y41_N1
\U1|UCLK|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(9));

-- Location: LCCOMB_X47_Y42_N20
\U1|UCLK|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~18_combout\ = (\U1|UCLK|count\(10) & (!\U1|UCLK|Add0~17\)) # (!\U1|UCLK|count\(10) & ((\U1|UCLK|Add0~17\) # (GND)))
-- \U1|UCLK|Add0~19\ = CARRY((!\U1|UCLK|Add0~17\) # (!\U1|UCLK|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(10),
	datad => VCC,
	cin => \U1|UCLK|Add0~17\,
	combout => \U1|UCLK|Add0~18_combout\,
	cout => \U1|UCLK|Add0~19\);

-- Location: FF_X47_Y42_N21
\U1|UCLK|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(10));

-- Location: LCCOMB_X47_Y42_N22
\U1|UCLK|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~20_combout\ = (\U1|UCLK|count\(11) & (\U1|UCLK|Add0~19\ $ (GND))) # (!\U1|UCLK|count\(11) & (!\U1|UCLK|Add0~19\ & VCC))
-- \U1|UCLK|Add0~21\ = CARRY((\U1|UCLK|count\(11) & !\U1|UCLK|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(11),
	datad => VCC,
	cin => \U1|UCLK|Add0~19\,
	combout => \U1|UCLK|Add0~20_combout\,
	cout => \U1|UCLK|Add0~21\);

-- Location: FF_X47_Y42_N23
\U1|UCLK|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(11));

-- Location: LCCOMB_X45_Y40_N16
\U1|UCLK|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~2_combout\ = (!\U1|UCLK|count\(11) & (\U1|UCLK|count\(9) & (!\U1|UCLK|count\(8) & !\U1|UCLK|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(11),
	datab => \U1|UCLK|count\(9),
	datac => \U1|UCLK|count\(8),
	datad => \U1|UCLK|count\(10),
	combout => \U1|UCLK|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y42_N24
\U1|UCLK|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~22_combout\ = (\U1|UCLK|count\(12) & (!\U1|UCLK|Add0~21\)) # (!\U1|UCLK|count\(12) & ((\U1|UCLK|Add0~21\) # (GND)))
-- \U1|UCLK|Add0~23\ = CARRY((!\U1|UCLK|Add0~21\) # (!\U1|UCLK|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(12),
	datad => VCC,
	cin => \U1|UCLK|Add0~21\,
	combout => \U1|UCLK|Add0~22_combout\,
	cout => \U1|UCLK|Add0~23\);

-- Location: FF_X47_Y42_N25
\U1|UCLK|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(12));

-- Location: LCCOMB_X47_Y42_N26
\U1|UCLK|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~24_combout\ = (\U1|UCLK|count\(13) & (\U1|UCLK|Add0~23\ $ (GND))) # (!\U1|UCLK|count\(13) & (!\U1|UCLK|Add0~23\ & VCC))
-- \U1|UCLK|Add0~25\ = CARRY((\U1|UCLK|count\(13) & !\U1|UCLK|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(13),
	datad => VCC,
	cin => \U1|UCLK|Add0~23\,
	combout => \U1|UCLK|Add0~24_combout\,
	cout => \U1|UCLK|Add0~25\);

-- Location: FF_X47_Y42_N27
\U1|UCLK|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(13));

-- Location: LCCOMB_X47_Y42_N28
\U1|UCLK|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~26_combout\ = (\U1|UCLK|count\(14) & (!\U1|UCLK|Add0~25\)) # (!\U1|UCLK|count\(14) & ((\U1|UCLK|Add0~25\) # (GND)))
-- \U1|UCLK|Add0~27\ = CARRY((!\U1|UCLK|Add0~25\) # (!\U1|UCLK|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(14),
	datad => VCC,
	cin => \U1|UCLK|Add0~25\,
	combout => \U1|UCLK|Add0~26_combout\,
	cout => \U1|UCLK|Add0~27\);

-- Location: LCCOMB_X46_Y41_N2
\U1|UCLK|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|count~2_combout\ = (!\U1|UCLK|Equal0~9_combout\ & \U1|UCLK|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|UCLK|Equal0~9_combout\,
	datad => \U1|UCLK|Add0~26_combout\,
	combout => \U1|UCLK|count~2_combout\);

-- Location: FF_X46_Y41_N3
\U1|UCLK|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(14));

-- Location: LCCOMB_X47_Y42_N30
\U1|UCLK|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~28_combout\ = (\U1|UCLK|count\(15) & (\U1|UCLK|Add0~27\ $ (GND))) # (!\U1|UCLK|count\(15) & (!\U1|UCLK|Add0~27\ & VCC))
-- \U1|UCLK|Add0~29\ = CARRY((\U1|UCLK|count\(15) & !\U1|UCLK|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(15),
	datad => VCC,
	cin => \U1|UCLK|Add0~27\,
	combout => \U1|UCLK|Add0~28_combout\,
	cout => \U1|UCLK|Add0~29\);

-- Location: FF_X47_Y42_N31
\U1|UCLK|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(15));

-- Location: LCCOMB_X47_Y41_N0
\U1|UCLK|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~30_combout\ = (\U1|UCLK|count\(16) & (!\U1|UCLK|Add0~29\)) # (!\U1|UCLK|count\(16) & ((\U1|UCLK|Add0~29\) # (GND)))
-- \U1|UCLK|Add0~31\ = CARRY((!\U1|UCLK|Add0~29\) # (!\U1|UCLK|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(16),
	datad => VCC,
	cin => \U1|UCLK|Add0~29\,
	combout => \U1|UCLK|Add0~30_combout\,
	cout => \U1|UCLK|Add0~31\);

-- Location: LCCOMB_X46_Y41_N12
\U1|UCLK|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|count~3_combout\ = (!\U1|UCLK|Equal0~9_combout\ & \U1|UCLK|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|Equal0~9_combout\,
	datac => \U1|UCLK|Add0~30_combout\,
	combout => \U1|UCLK|count~3_combout\);

-- Location: FF_X46_Y41_N13
\U1|UCLK|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(16));

-- Location: LCCOMB_X47_Y41_N2
\U1|UCLK|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~32_combout\ = (\U1|UCLK|count\(17) & (\U1|UCLK|Add0~31\ $ (GND))) # (!\U1|UCLK|count\(17) & (!\U1|UCLK|Add0~31\ & VCC))
-- \U1|UCLK|Add0~33\ = CARRY((\U1|UCLK|count\(17) & !\U1|UCLK|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(17),
	datad => VCC,
	cin => \U1|UCLK|Add0~31\,
	combout => \U1|UCLK|Add0~32_combout\,
	cout => \U1|UCLK|Add0~33\);

-- Location: LCCOMB_X46_Y41_N6
\U1|UCLK|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|count~4_combout\ = (!\U1|UCLK|Equal0~9_combout\ & \U1|UCLK|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|UCLK|Equal0~9_combout\,
	datad => \U1|UCLK|Add0~32_combout\,
	combout => \U1|UCLK|count~4_combout\);

-- Location: FF_X46_Y41_N7
\U1|UCLK|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(17));

-- Location: LCCOMB_X47_Y41_N4
\U1|UCLK|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~34_combout\ = (\U1|UCLK|count\(18) & (!\U1|UCLK|Add0~33\)) # (!\U1|UCLK|count\(18) & ((\U1|UCLK|Add0~33\) # (GND)))
-- \U1|UCLK|Add0~35\ = CARRY((!\U1|UCLK|Add0~33\) # (!\U1|UCLK|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(18),
	datad => VCC,
	cin => \U1|UCLK|Add0~33\,
	combout => \U1|UCLK|Add0~34_combout\,
	cout => \U1|UCLK|Add0~35\);

-- Location: LCCOMB_X46_Y41_N16
\U1|UCLK|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|count~5_combout\ = (\U1|UCLK|Add0~34_combout\ & !\U1|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|Add0~34_combout\,
	datac => \U1|UCLK|Equal0~9_combout\,
	combout => \U1|UCLK|count~5_combout\);

-- Location: FF_X46_Y41_N17
\U1|UCLK|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(18));

-- Location: LCCOMB_X47_Y41_N6
\U1|UCLK|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~36_combout\ = (\U1|UCLK|count\(19) & (\U1|UCLK|Add0~35\ $ (GND))) # (!\U1|UCLK|count\(19) & (!\U1|UCLK|Add0~35\ & VCC))
-- \U1|UCLK|Add0~37\ = CARRY((\U1|UCLK|count\(19) & !\U1|UCLK|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(19),
	datad => VCC,
	cin => \U1|UCLK|Add0~35\,
	combout => \U1|UCLK|Add0~36_combout\,
	cout => \U1|UCLK|Add0~37\);

-- Location: LCCOMB_X46_Y41_N26
\U1|UCLK|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|count~6_combout\ = (!\U1|UCLK|Equal0~9_combout\ & \U1|UCLK|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|UCLK|Equal0~9_combout\,
	datad => \U1|UCLK|Add0~36_combout\,
	combout => \U1|UCLK|count~6_combout\);

-- Location: FF_X46_Y41_N27
\U1|UCLK|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(19));

-- Location: LCCOMB_X47_Y41_N8
\U1|UCLK|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~38_combout\ = (\U1|UCLK|count\(20) & (!\U1|UCLK|Add0~37\)) # (!\U1|UCLK|count\(20) & ((\U1|UCLK|Add0~37\) # (GND)))
-- \U1|UCLK|Add0~39\ = CARRY((!\U1|UCLK|Add0~37\) # (!\U1|UCLK|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(20),
	datad => VCC,
	cin => \U1|UCLK|Add0~37\,
	combout => \U1|UCLK|Add0~38_combout\,
	cout => \U1|UCLK|Add0~39\);

-- Location: FF_X47_Y41_N9
\U1|UCLK|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(20));

-- Location: LCCOMB_X47_Y41_N10
\U1|UCLK|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~40_combout\ = (\U1|UCLK|count\(21) & (\U1|UCLK|Add0~39\ $ (GND))) # (!\U1|UCLK|count\(21) & (!\U1|UCLK|Add0~39\ & VCC))
-- \U1|UCLK|Add0~41\ = CARRY((\U1|UCLK|count\(21) & !\U1|UCLK|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(21),
	datad => VCC,
	cin => \U1|UCLK|Add0~39\,
	combout => \U1|UCLK|Add0~40_combout\,
	cout => \U1|UCLK|Add0~41\);

-- Location: FF_X47_Y41_N11
\U1|UCLK|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(21));

-- Location: LCCOMB_X47_Y41_N12
\U1|UCLK|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~42_combout\ = (\U1|UCLK|count\(22) & (!\U1|UCLK|Add0~41\)) # (!\U1|UCLK|count\(22) & ((\U1|UCLK|Add0~41\) # (GND)))
-- \U1|UCLK|Add0~43\ = CARRY((!\U1|UCLK|Add0~41\) # (!\U1|UCLK|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(22),
	datad => VCC,
	cin => \U1|UCLK|Add0~41\,
	combout => \U1|UCLK|Add0~42_combout\,
	cout => \U1|UCLK|Add0~43\);

-- Location: FF_X47_Y41_N13
\U1|UCLK|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(22));

-- Location: LCCOMB_X47_Y41_N14
\U1|UCLK|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~44_combout\ = (\U1|UCLK|count\(23) & (\U1|UCLK|Add0~43\ $ (GND))) # (!\U1|UCLK|count\(23) & (!\U1|UCLK|Add0~43\ & VCC))
-- \U1|UCLK|Add0~45\ = CARRY((\U1|UCLK|count\(23) & !\U1|UCLK|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(23),
	datad => VCC,
	cin => \U1|UCLK|Add0~43\,
	combout => \U1|UCLK|Add0~44_combout\,
	cout => \U1|UCLK|Add0~45\);

-- Location: FF_X47_Y41_N15
\U1|UCLK|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(23));

-- Location: LCCOMB_X46_Y41_N22
\U1|UCLK|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~5_combout\ = (!\U1|UCLK|count\(21) & (!\U1|UCLK|count\(22) & (!\U1|UCLK|count\(20) & !\U1|UCLK|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(21),
	datab => \U1|UCLK|count\(22),
	datac => \U1|UCLK|count\(20),
	datad => \U1|UCLK|count\(23),
	combout => \U1|UCLK|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y41_N16
\U1|UCLK|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~46_combout\ = (\U1|UCLK|count\(24) & (!\U1|UCLK|Add0~45\)) # (!\U1|UCLK|count\(24) & ((\U1|UCLK|Add0~45\) # (GND)))
-- \U1|UCLK|Add0~47\ = CARRY((!\U1|UCLK|Add0~45\) # (!\U1|UCLK|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(24),
	datad => VCC,
	cin => \U1|UCLK|Add0~45\,
	combout => \U1|UCLK|Add0~46_combout\,
	cout => \U1|UCLK|Add0~47\);

-- Location: FF_X47_Y41_N17
\U1|UCLK|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(24));

-- Location: LCCOMB_X47_Y41_N18
\U1|UCLK|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~48_combout\ = (\U1|UCLK|count\(25) & (\U1|UCLK|Add0~47\ $ (GND))) # (!\U1|UCLK|count\(25) & (!\U1|UCLK|Add0~47\ & VCC))
-- \U1|UCLK|Add0~49\ = CARRY((\U1|UCLK|count\(25) & !\U1|UCLK|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(25),
	datad => VCC,
	cin => \U1|UCLK|Add0~47\,
	combout => \U1|UCLK|Add0~48_combout\,
	cout => \U1|UCLK|Add0~49\);

-- Location: FF_X47_Y41_N19
\U1|UCLK|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(25));

-- Location: LCCOMB_X47_Y41_N20
\U1|UCLK|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~50_combout\ = (\U1|UCLK|count\(26) & (!\U1|UCLK|Add0~49\)) # (!\U1|UCLK|count\(26) & ((\U1|UCLK|Add0~49\) # (GND)))
-- \U1|UCLK|Add0~51\ = CARRY((!\U1|UCLK|Add0~49\) # (!\U1|UCLK|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(26),
	datad => VCC,
	cin => \U1|UCLK|Add0~49\,
	combout => \U1|UCLK|Add0~50_combout\,
	cout => \U1|UCLK|Add0~51\);

-- Location: FF_X47_Y41_N21
\U1|UCLK|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(26));

-- Location: LCCOMB_X47_Y41_N22
\U1|UCLK|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~52_combout\ = (\U1|UCLK|count\(27) & (\U1|UCLK|Add0~51\ $ (GND))) # (!\U1|UCLK|count\(27) & (!\U1|UCLK|Add0~51\ & VCC))
-- \U1|UCLK|Add0~53\ = CARRY((\U1|UCLK|count\(27) & !\U1|UCLK|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(27),
	datad => VCC,
	cin => \U1|UCLK|Add0~51\,
	combout => \U1|UCLK|Add0~52_combout\,
	cout => \U1|UCLK|Add0~53\);

-- Location: FF_X47_Y41_N23
\U1|UCLK|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(27));

-- Location: LCCOMB_X46_Y41_N8
\U1|UCLK|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~6_combout\ = (!\U1|UCLK|count\(27) & (!\U1|UCLK|count\(25) & (!\U1|UCLK|count\(26) & !\U1|UCLK|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(27),
	datab => \U1|UCLK|count\(25),
	datac => \U1|UCLK|count\(26),
	datad => \U1|UCLK|count\(24),
	combout => \U1|UCLK|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y41_N4
\U1|UCLK|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~4_combout\ = (\U1|UCLK|count\(17) & (\U1|UCLK|count\(18) & (\U1|UCLK|count\(19) & \U1|UCLK|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(17),
	datab => \U1|UCLK|count\(18),
	datac => \U1|UCLK|count\(19),
	datad => \U1|UCLK|count\(16),
	combout => \U1|UCLK|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y41_N24
\U1|UCLK|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~54_combout\ = (\U1|UCLK|count\(28) & (!\U1|UCLK|Add0~53\)) # (!\U1|UCLK|count\(28) & ((\U1|UCLK|Add0~53\) # (GND)))
-- \U1|UCLK|Add0~55\ = CARRY((!\U1|UCLK|Add0~53\) # (!\U1|UCLK|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(28),
	datad => VCC,
	cin => \U1|UCLK|Add0~53\,
	combout => \U1|UCLK|Add0~54_combout\,
	cout => \U1|UCLK|Add0~55\);

-- Location: FF_X47_Y41_N25
\U1|UCLK|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(28));

-- Location: LCCOMB_X47_Y41_N26
\U1|UCLK|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~56_combout\ = (\U1|UCLK|count\(29) & (\U1|UCLK|Add0~55\ $ (GND))) # (!\U1|UCLK|count\(29) & (!\U1|UCLK|Add0~55\ & VCC))
-- \U1|UCLK|Add0~57\ = CARRY((\U1|UCLK|count\(29) & !\U1|UCLK|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(29),
	datad => VCC,
	cin => \U1|UCLK|Add0~55\,
	combout => \U1|UCLK|Add0~56_combout\,
	cout => \U1|UCLK|Add0~57\);

-- Location: FF_X47_Y41_N27
\U1|UCLK|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(29));

-- Location: LCCOMB_X47_Y41_N28
\U1|UCLK|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~58_combout\ = (\U1|UCLK|count\(30) & (!\U1|UCLK|Add0~57\)) # (!\U1|UCLK|count\(30) & ((\U1|UCLK|Add0~57\) # (GND)))
-- \U1|UCLK|Add0~59\ = CARRY((!\U1|UCLK|Add0~57\) # (!\U1|UCLK|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|UCLK|count\(30),
	datad => VCC,
	cin => \U1|UCLK|Add0~57\,
	combout => \U1|UCLK|Add0~58_combout\,
	cout => \U1|UCLK|Add0~59\);

-- Location: FF_X47_Y41_N29
\U1|UCLK|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(30));

-- Location: LCCOMB_X47_Y41_N30
\U1|UCLK|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Add0~60_combout\ = \U1|UCLK|count\(31) $ (!\U1|UCLK|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(31),
	cin => \U1|UCLK|Add0~59\,
	combout => \U1|UCLK|Add0~60_combout\);

-- Location: FF_X47_Y41_N31
\U1|UCLK|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|count\(31));

-- Location: LCCOMB_X46_Y41_N18
\U1|UCLK|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~7_combout\ = (!\U1|UCLK|count\(29) & (!\U1|UCLK|count\(30) & (!\U1|UCLK|count\(31) & !\U1|UCLK|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(29),
	datab => \U1|UCLK|count\(30),
	datac => \U1|UCLK|count\(31),
	datad => \U1|UCLK|count\(28),
	combout => \U1|UCLK|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y41_N28
\U1|UCLK|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~8_combout\ = (\U1|UCLK|Equal0~5_combout\ & (\U1|UCLK|Equal0~6_combout\ & (\U1|UCLK|Equal0~4_combout\ & \U1|UCLK|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|Equal0~5_combout\,
	datab => \U1|UCLK|Equal0~6_combout\,
	datac => \U1|UCLK|Equal0~4_combout\,
	datad => \U1|UCLK|Equal0~7_combout\,
	combout => \U1|UCLK|Equal0~8_combout\);

-- Location: LCCOMB_X46_Y41_N20
\U1|UCLK|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~0_combout\ = (\U1|UCLK|count\(6) & (!\U1|UCLK|count\(7) & (!\U1|UCLK|count\(5) & !\U1|UCLK|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(6),
	datab => \U1|UCLK|count\(7),
	datac => \U1|UCLK|count\(5),
	datad => \U1|UCLK|count\(4),
	combout => \U1|UCLK|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y41_N14
\U1|UCLK|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~1_combout\ = (!\U1|UCLK|count\(2) & (\U1|UCLK|Equal0~0_combout\ & (!\U1|UCLK|count\(3) & \U0|U0|U0|U0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(2),
	datab => \U1|UCLK|Equal0~0_combout\,
	datac => \U1|UCLK|count\(3),
	datad => \U0|U0|U0|U0|Equal0~0_combout\,
	combout => \U1|UCLK|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y42_N0
\U1|UCLK|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~3_combout\ = (!\U1|UCLK|count\(15) & (\U1|UCLK|count\(14) & (!\U1|UCLK|count\(13) & !\U1|UCLK|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|count\(15),
	datab => \U1|UCLK|count\(14),
	datac => \U1|UCLK|count\(13),
	datad => \U1|UCLK|count\(12),
	combout => \U1|UCLK|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y41_N30
\U1|UCLK|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|Equal0~9_combout\ = (\U1|UCLK|Equal0~2_combout\ & (\U1|UCLK|Equal0~8_combout\ & (\U1|UCLK|Equal0~1_combout\ & \U1|UCLK|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|Equal0~2_combout\,
	datab => \U1|UCLK|Equal0~8_combout\,
	datac => \U1|UCLK|Equal0~1_combout\,
	datad => \U1|UCLK|Equal0~3_combout\,
	combout => \U1|UCLK|Equal0~9_combout\);

-- Location: LCCOMB_X46_Y41_N24
\U1|UCLK|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|UCLK|tmp~0_combout\ = \U1|UCLK|Equal0~9_combout\ $ (\U1|UCLK|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|UCLK|Equal0~9_combout\,
	datac => \U1|UCLK|tmp~q\,
	combout => \U1|UCLK|tmp~0_combout\);

-- Location: FF_X46_Y41_N25
\U1|UCLK|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U1|UCLK|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|UCLK|tmp~q\);

-- Location: CLKCTRL_G9
\U1|UCLK|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|UCLK|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|UCLK|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y50_N30
\U1|U6|cnt_atual_pl[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U6|cnt_atual_pl[0]~3_combout\ = (!\U1|shift_clk~combout\ & !\U1|U6|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_clk~combout\,
	datac => \U1|U6|U2|Q\(0),
	combout => \U1|U6|cnt_atual_pl[0]~3_combout\);

-- Location: LCCOMB_X67_Y50_N26
\U1|U7|dataShift_in[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[0]~1_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & (!\U0|U2|U1|CurrentState.state_bit_1~q\ & !\U1|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U1|U7|U1|Q\(1),
	combout => \U1|U7|dataShift_in[0]~1_combout\);

-- Location: FF_X67_Y50_N27
\U1|U7|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[0]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(0));

-- Location: LCCOMB_X67_Y50_N30
\U1|U7|dataShift_in[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[6]~7_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_1~q\ & (\U1|U7|U1|Q\(5))) # (!\U0|U2|U1|CurrentState.state_bit_1~q\ & ((\U1|U7|U1|Q\(7)))))) # (!\U0|U2|U1|CurrentState.state_bit_0~q\ & 
-- (((\U1|U7|U1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datac => \U1|U7|U1|Q\(5),
	datad => \U1|U7|U1|Q\(7),
	combout => \U1|U7|dataShift_in[6]~7_combout\);

-- Location: FF_X67_Y50_N31
\U1|U7|U1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[6]~7_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(6));

-- Location: LCCOMB_X67_Y50_N4
\U1|U7|dataShift_in[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[5]~6_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_1~q\ & ((\U1|U7|U1|Q\(4)))) # (!\U0|U2|U1|CurrentState.state_bit_1~q\ & (\U1|U7|U1|Q\(6))))) # (!\U0|U2|U1|CurrentState.state_bit_0~q\ & 
-- (((\U1|U7|U1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datac => \U1|U7|U1|Q\(6),
	datad => \U1|U7|U1|Q\(4),
	combout => \U1|U7|dataShift_in[5]~6_combout\);

-- Location: FF_X67_Y50_N5
\U1|U7|U1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[5]~6_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(5));

-- Location: LCCOMB_X67_Y50_N18
\U1|U7|dataShift_in[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[4]~5_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_1~q\ & ((\U1|U7|U1|Q\(3)))) # (!\U0|U2|U1|CurrentState.state_bit_1~q\ & (\U1|U7|U1|Q\(5))))) # (!\U0|U2|U1|CurrentState.state_bit_0~q\ & 
-- (((\U1|U7|U1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U1|U7|U1|Q\(5),
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U1|U7|U1|Q\(3),
	combout => \U1|U7|dataShift_in[4]~5_combout\);

-- Location: FF_X67_Y50_N19
\U1|U7|U1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[4]~5_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(4));

-- Location: LCCOMB_X67_Y50_N8
\U1|U7|dataShift_in[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[3]~4_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_1~q\ & ((\U1|U7|U1|Q\(2)))) # (!\U0|U2|U1|CurrentState.state_bit_1~q\ & (\U1|U7|U1|Q\(4))))) # (!\U0|U2|U1|CurrentState.state_bit_0~q\ & 
-- (((\U1|U7|U1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U1|U7|U1|Q\(4),
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U1|U7|U1|Q\(2),
	combout => \U1|U7|dataShift_in[3]~4_combout\);

-- Location: FF_X67_Y50_N9
\U1|U7|U1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[3]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(3));

-- Location: LCCOMB_X67_Y50_N6
\U1|U7|dataShift_in[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[2]~3_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_1~q\ & (\U1|U7|U1|Q\(1))) # (!\U0|U2|U1|CurrentState.state_bit_1~q\ & ((\U1|U7|U1|Q\(3)))))) # (!\U0|U2|U1|CurrentState.state_bit_0~q\ & 
-- (\U1|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U1|U7|U1|Q\(1),
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U1|U7|U1|Q\(3),
	combout => \U1|U7|dataShift_in[2]~3_combout\);

-- Location: FF_X67_Y50_N7
\U1|U7|U1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[2]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(2));

-- Location: LCCOMB_X67_Y50_N20
\U1|U7|dataShift_in[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[1]~2_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_1~q\ & (!\U1|U7|U1|Q\(0))) # (!\U0|U2|U1|CurrentState.state_bit_1~q\ & ((\U1|U7|U1|Q\(2)))))) # (!\U0|U2|U1|CurrentState.state_bit_0~q\ & 
-- (!\U1|U7|U1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U1|U7|U1|Q\(0),
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U1|U7|U1|Q\(2),
	combout => \U1|U7|dataShift_in[1]~2_combout\);

-- Location: FF_X67_Y50_N21
\U1|U7|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[1]~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(1));

-- Location: LCCOMB_X63_Y50_N30
\U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|U7|U1|Q\(1) & (!\U1|U7|U1|Q\(3) & (!\U1|U7|U1|Q\(0) & !\U1|U7|U1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U7|U1|Q\(1),
	datab => \U1|U7|U1|Q\(3),
	datac => \U1|U7|U1|Q\(0),
	datad => \U1|U7|U1|Q\(2),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y50_N28
\U0|U2|U1|CurrentState.Open_door~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.Open_door~0_combout\ = (!\U0|U2|U1|CurrentState.state_bit_1~q\ & \U0|U2|U1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U2|U1|CurrentState.Open_door~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\U1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|U7|U1|Q\(6) & (!\U1|U7|U1|Q\(4) & (!\U1|U7|U1|Q\(5) & !\U1|U7|U1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U7|U1|Q\(6),
	datab => \U1|U7|U1|Q\(4),
	datac => \U1|U7|U1|Q\(5),
	datad => \U1|U7|U1|Q\(7),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X67_Y50_N0
\U1|U7|dataShift_in[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[8]~0_combout\ = (\U1|U7|U1|Q\(7) & ((\U0|U2|U1|CurrentState.state_bit_1~q\) # (!\U0|U2|U1|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U1|U7|U1|Q\(7),
	combout => \U1|U7|dataShift_in[8]~0_combout\);

-- Location: FF_X67_Y50_N1
\U1|U7|U1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[8]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(8));

-- Location: LCCOMB_X63_Y50_N16
\U0|U2|U1|OnnOff~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|OnnOff~2_combout\ = (\U0|U2|U1|CurrentState.Open_door~0_combout\ & (((\U1|U7|U1|Q\(8)) # (!\U1|Equal0~1_combout\)) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U0|U2|U1|CurrentState.Open_door~0_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|U7|U1|Q\(8),
	combout => \U0|U2|U1|OnnOff~2_combout\);

-- Location: LCCOMB_X63_Y50_N20
\U0|U2|U1|OnnOff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|OnnOff~combout\ = (\U0|U2|U1|OnnOff~2_combout\) # ((\U0|U2|U1|CurrentState.state_bit_1~q\ & \U0|U2|U1|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|OnnOff~2_combout\,
	datab => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U2|U1|OnnOff~combout\);

-- Location: FF_X57_Y50_N31
\U1|U6|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|UCLK|tmp~clkctrl_outclk\,
	d => \U1|U6|cnt_atual_pl[0]~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6|U2|Q\(0));

-- Location: LCCOMB_X29_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X29_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X57_Y50_N22
\U0|U2|UO|U0|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U0|U0|Q~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	combout => \U0|U2|UO|U0|U0|Q~feeder_combout\);

-- Location: LCCOMB_X63_Y50_N26
\U0|U2|UO|U2|CurrentState.Shift_Register_starts~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\ = (!\U0|U2|UO|U2|CurrentState.state_bit_1~q\ & \U0|U2|UO|U2|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	datad => \U0|U2|UO|U2|CurrentState.state_bit_0~q\,
	combout => \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\);

-- Location: FF_X57_Y50_N23
\U0|U2|UO|U0|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U2|UO|U0|U0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U0|U0|Q~q\);

-- Location: LCCOMB_X57_Y50_N12
\U0|U2|UO|U0|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U0|U1|Q~feeder_combout\ = \U0|U2|UO|U0|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U2|UO|U0|U0|Q~q\,
	combout => \U0|U2|UO|U0|U1|Q~feeder_combout\);

-- Location: FF_X57_Y50_N13
\U0|U2|UO|U0|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U2|UO|U0|U1|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U0|U1|Q~q\);

-- Location: LCCOMB_X57_Y50_N18
\U0|U2|UO|U0|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U0|U2|Q~feeder_combout\ = \U0|U2|UO|U0|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U2|UO|U0|U1|Q~q\,
	combout => \U0|U2|UO|U0|U2|Q~feeder_combout\);

-- Location: FF_X57_Y50_N19
\U0|U2|UO|U0|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U2|UO|U0|U2|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U0|U2|Q~q\);

-- Location: LCCOMB_X57_Y50_N16
\U0|U2|UO|U0|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U0|U3|Q~feeder_combout\ = \U0|U2|UO|U0|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U2|UO|U0|U2|Q~q\,
	combout => \U0|U2|UO|U0|U3|Q~feeder_combout\);

-- Location: FF_X57_Y50_N17
\U0|U2|UO|U0|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U2|UO|U0|U3|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U0|U3|Q~q\);

-- Location: LCCOMB_X57_Y50_N0
\U1|U6|cnt_atual_pl[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U6|cnt_atual_pl[1]~4_combout\ = (\U1|shift_clk~combout\ & (((\U0|U2|UO|U0|U3|Q~q\)))) # (!\U1|shift_clk~combout\ & (\U1|U6|U2|Q\(0) $ ((\U1|U6|U2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6|U2|Q\(0),
	datab => \U1|shift_clk~combout\,
	datac => \U1|U6|U2|Q\(1),
	datad => \U0|U2|UO|U0|U3|Q~q\,
	combout => \U1|U6|cnt_atual_pl[1]~4_combout\);

-- Location: FF_X57_Y50_N1
\U1|U6|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|UCLK|tmp~clkctrl_outclk\,
	d => \U1|U6|cnt_atual_pl[1]~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6|U2|Q\(1));

-- Location: LCCOMB_X57_Y50_N8
\U1|U6|U1|SC:2:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U6|U1|SC:2:U1|S~combout\ = \U1|U6|U2|Q\(2) $ (((\U1|U6|U2|Q\(1) & \U1|U6|U2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U6|U2|Q\(1),
	datac => \U1|U6|U2|Q\(0),
	datad => \U1|U6|U2|Q\(2),
	combout => \U1|U6|U1|SC:2:U1|S~combout\);

-- Location: LCCOMB_X57_Y50_N28
\U1|U6|cnt_atual_pl[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U6|cnt_atual_pl[2]~2_combout\ = (\U1|shift_clk~combout\ & ((\U0|U2|UO|U0|U2|Q~q\))) # (!\U1|shift_clk~combout\ & (\U1|U6|U1|SC:2:U1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_clk~combout\,
	datac => \U1|U6|U1|SC:2:U1|S~combout\,
	datad => \U0|U2|UO|U0|U2|Q~q\,
	combout => \U1|U6|cnt_atual_pl[2]~2_combout\);

-- Location: FF_X57_Y50_N29
\U1|U6|U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|UCLK|tmp~clkctrl_outclk\,
	d => \U1|U6|cnt_atual_pl[2]~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6|U2|Q\(2));

-- Location: LCCOMB_X57_Y50_N14
\U1|U6|U1|SC:3:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U6|U1|SC:3:U1|S~combout\ = \U1|U6|U2|Q\(3) $ (((\U1|U6|U2|Q\(1) & (\U1|U6|U2|Q\(0) & \U1|U6|U2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6|U2|Q\(3),
	datab => \U1|U6|U2|Q\(1),
	datac => \U1|U6|U2|Q\(0),
	datad => \U1|U6|U2|Q\(2),
	combout => \U1|U6|U1|SC:3:U1|S~combout\);

-- Location: LCCOMB_X57_Y50_N10
\U1|U6|cnt_atual_pl[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U6|cnt_atual_pl[3]~1_combout\ = (\U1|shift_clk~combout\ & ((\U0|U2|UO|U0|U1|Q~q\))) # (!\U1|shift_clk~combout\ & (\U1|U6|U1|SC:3:U1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_clk~combout\,
	datac => \U1|U6|U1|SC:3:U1|S~combout\,
	datad => \U0|U2|UO|U0|U1|Q~q\,
	combout => \U1|U6|cnt_atual_pl[3]~1_combout\);

-- Location: FF_X57_Y50_N11
\U1|U6|U2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|UCLK|tmp~clkctrl_outclk\,
	d => \U1|U6|cnt_atual_pl[3]~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6|U2|Q\(3));

-- Location: LCCOMB_X57_Y50_N26
\U1|shift_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_clk~0_combout\ = (\U1|U6|U2|Q\(3) & (\U1|U6|U2|Q\(1) & (\U1|U6|U2|Q\(0) & \U1|U6|U2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U6|U2|Q\(3),
	datab => \U1|U6|U2|Q\(1),
	datac => \U1|U6|U2|Q\(0),
	datad => \U1|U6|U2|Q\(2),
	combout => \U1|shift_clk~0_combout\);

-- Location: LCCOMB_X57_Y50_N24
\U1|U6|cnt_atual_pl[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U6|cnt_atual_pl[4]~0_combout\ = (\U1|shift_clk~combout\ & (\U0|U2|UO|U0|U0|Q~q\)) # (!\U1|shift_clk~combout\ & ((\U1|U6|U2|Q\(4) $ (\U1|shift_clk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|UO|U0|U0|Q~q\,
	datab => \U1|shift_clk~combout\,
	datac => \U1|U6|U2|Q\(4),
	datad => \U1|shift_clk~0_combout\,
	combout => \U1|U6|cnt_atual_pl[4]~0_combout\);

-- Location: FF_X57_Y50_N25
\U1|U6|U2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|UCLK|tmp~clkctrl_outclk\,
	d => \U1|U6|cnt_atual_pl[4]~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U6|U2|Q\(4));

-- Location: LCCOMB_X57_Y50_N4
\U1|shift_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_clk~combout\ = LCELL((\U1|shift_clk~0_combout\ & \U1|U6|U2|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_clk~0_combout\,
	datad => \U1|U6|U2|Q\(4),
	combout => \U1|shift_clk~combout\);

-- Location: CLKCTRL_G12
\U1|shift_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|shift_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|shift_clk~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y50_N24
\U1|U7|dataShift_in[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U7|dataShift_in[7]~8_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_1~q\ & (\U1|U7|U1|Q\(6))) # (!\U0|U2|U1|CurrentState.state_bit_1~q\ & ((\U1|U7|U1|Q\(8)))))) # (!\U0|U2|U1|CurrentState.state_bit_0~q\ & 
-- (((\U1|U7|U1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~q\,
	datab => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datac => \U1|U7|U1|Q\(6),
	datad => \U1|U7|U1|Q\(8),
	combout => \U1|U7|dataShift_in[7]~8_combout\);

-- Location: FF_X67_Y50_N25
\U1|U7|U1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|shift_clk~clkctrl_outclk\,
	d => \U1|U7|dataShift_in[7]~8_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U2|U1|OnnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U7|U1|Q\(7));

-- Location: LCCOMB_X67_Y50_N28
\U1|U3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~0_combout\ = (\U1|U7|U1|Q\(7) & (\U1|U7|U1|Q\(6) & \U1|U7|U1|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U7|U1|Q\(7),
	datac => \U1|U7|U1|Q\(6),
	datad => \U1|U7|U1|Q\(8),
	combout => \U1|U3|Equal0~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\Pswitch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pswitch,
	o => \Pswitch~input_o\);

-- Location: LCCOMB_X63_Y50_N22
\U0|U2|U1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_0~1_combout\ = ((\U1|U7|U1|Q\(0)) # ((\Pswitch~input_o\) # (!\U1|U7|U1|Q\(2)))) # (!\U1|U7|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U7|U1|Q\(1),
	datab => \U1|U7|U1|Q\(0),
	datac => \Pswitch~input_o\,
	datad => \U1|U7|U1|Q\(2),
	combout => \U0|U2|U1|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X67_Y50_N22
\U1|U4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U4|Equal0~0_combout\ = (\U1|U7|U1|Q\(4) & (\U1|U7|U1|Q\(5) & \U1|U7|U1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U7|U1|Q\(4),
	datac => \U1|U7|U1|Q\(5),
	datad => \U1|U7|U1|Q\(3),
	combout => \U1|U4|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y50_N24
\U0|U2|U1|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_0~2_combout\ = (\U0|U2|U1|CurrentState.Close_door~0_combout\ & (((\U0|U2|U1|CurrentState.state_bit_0~1_combout\) # (!\U1|U4|Equal0~0_combout\)) # (!\U1|U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.Close_door~0_combout\,
	datab => \U1|U3|Equal0~0_combout\,
	datac => \U0|U2|U1|CurrentState.state_bit_0~1_combout\,
	datad => \U1|U4|Equal0~0_combout\,
	combout => \U0|U2|U1|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X63_Y50_N19
\U0|U2|UO|U0|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	asdata => \U0|U2|UO|U0|U3|Q~q\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	ena => \U0|U2|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U0|U4|Q~q\);

-- Location: LCCOMB_X63_Y50_N4
\U0|U2|U1|CurrentState.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_0~3_combout\ = (((\U1|U7|U1|Q\(8)) # (!\U1|Equal0~1_combout\)) # (!\U0|U2|UO|U0|U4|Q~q\)) # (!\U1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U0|U2|UO|U0|U4|Q~q\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|U7|U1|Q\(8),
	combout => \U0|U2|U1|CurrentState.state_bit_0~3_combout\);

-- Location: LCCOMB_X63_Y50_N0
\U0|U2|U1|CurrentState.state_bit_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_0~4_combout\ = (\U0|U2|U1|CurrentState.state_bit_0~0_combout\) # ((\U0|U2|U1|CurrentState.state_bit_0~2_combout\) # ((\U0|U2|U1|CurrentState.state_bit_0~3_combout\ & \U0|U2|U1|CurrentState.Open_door~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_0~0_combout\,
	datab => \U0|U2|U1|CurrentState.state_bit_0~2_combout\,
	datac => \U0|U2|U1|CurrentState.state_bit_0~3_combout\,
	datad => \U0|U2|U1|CurrentState.Open_door~0_combout\,
	combout => \U0|U2|U1|CurrentState.state_bit_0~4_combout\);

-- Location: FF_X63_Y50_N1
\U0|U2|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|U1|CurrentState.state_bit_0~4_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X63_Y50_N10
\U0|U2|U1|CurrentState.Close_door~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.Close_door~0_combout\ = (\U0|U2|U1|CurrentState.state_bit_1~q\ & \U0|U2|U1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U2|U1|CurrentState.Close_door~0_combout\);

-- Location: LCCOMB_X63_Y50_N18
\U0|U2|U1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_1~1_combout\ = (\U0|U2|U1|CurrentState.state_bit_1~q\) # (!\U0|U2|UO|U0|U4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U2|UO|U0|U4|Q~q\,
	datad => \U0|U2|U1|CurrentState.state_bit_1~q\,
	combout => \U0|U2|U1|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X63_Y50_N8
\U0|U2|U1|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_1~2_combout\ = (\U0|U2|U1|CurrentState.state_bit_1~1_combout\ & (\U0|U2|UO|U2|CurrentState.state_bit_0~q\ & (\U0|U2|UO|U2|CurrentState.state_bit_1~q\ & !\U0|U2|U1|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.state_bit_1~1_combout\,
	datab => \U0|U2|UO|U2|CurrentState.state_bit_0~q\,
	datac => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	datad => \U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U2|U1|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X63_Y50_N6
\U0|U2|U1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_1~0_combout\ = (\U1|Equal0~0_combout\ & (\U0|U2|U1|CurrentState.Open_door~0_combout\ & (\U1|Equal0~1_combout\ & !\U1|U7|U1|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U0|U2|U1|CurrentState.Open_door~0_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|U7|U1|Q\(8),
	combout => \U0|U2|U1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X63_Y50_N2
\U0|U2|U1|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U1|CurrentState.state_bit_1~3_combout\ = (\U0|U2|U1|CurrentState.state_bit_1~2_combout\) # ((\U0|U2|U1|CurrentState.state_bit_1~0_combout\) # ((\U0|U2|U1|CurrentState.Close_door~0_combout\ & !\Pswitch~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U1|CurrentState.Close_door~0_combout\,
	datab => \U0|U2|U1|CurrentState.state_bit_1~2_combout\,
	datac => \Pswitch~input_o\,
	datad => \U0|U2|U1|CurrentState.state_bit_1~0_combout\,
	combout => \U0|U2|U1|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X63_Y50_N3
\U0|U2|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|U1|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X63_Y47_N6
\U0|U2|UO|U2|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.state_bit_0~0_combout\ = (\U0|U2|UO|U2|CurrentState.state_bit_1~q\ & (\U0|U2|UO|U2|CurrentState.state_bit_0~q\ & ((\U0|U2|U1|CurrentState.state_bit_0~q\) # (!\U0|U2|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	datab => \U0|U2|UO|U2|CurrentState.state_bit_0~q\,
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U2|UO|U2|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X63_Y47_N24
\U0|U2|UO|U2|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.state_bit_0~1_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ 
-- & !\U0|U2|UO|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datad => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	combout => \U0|U2|UO|U2|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X63_Y47_N16
\U0|U2|UO|U2|CurrentState.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.state_bit_0~3_combout\ = (\U0|U2|UO|U2|CurrentState.state_bit_0~0_combout\) # ((\U0|U2|UO|U2|CurrentState.state_bit_0~1_combout\) # ((\U0|U2|UO|U1|U1|U2|Q~q\ & \U0|U2|UO|U2|CurrentState.state_bit_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|UO|U2|CurrentState.state_bit_0~0_combout\,
	datab => \U0|U2|UO|U1|U1|U2|Q~q\,
	datac => \U0|U2|UO|U2|CurrentState.state_bit_0~2_combout\,
	datad => \U0|U2|UO|U2|CurrentState.state_bit_0~1_combout\,
	combout => \U0|U2|UO|U2|CurrentState.state_bit_0~3_combout\);

-- Location: FF_X63_Y47_N17
\U0|U2|UO|U2|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|UO|U2|CurrentState.state_bit_0~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U2|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X63_Y47_N0
\U0|U2|UO|U2|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.state_bit_0~2_combout\ = (\U0|U2|UO|U1|U1|U0|Q~q\ & (\U0|U2|UO|U2|CurrentState.state_bit_0~q\ & (!\U0|U2|UO|U1|U1|U1|Q~q\ & !\U0|U2|UO|U2|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|UO|U1|U1|U0|Q~q\,
	datab => \U0|U2|UO|U2|CurrentState.state_bit_0~q\,
	datac => \U0|U2|UO|U1|U1|U1|Q~q\,
	datad => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	combout => \U0|U2|UO|U2|CurrentState.state_bit_0~2_combout\);

-- Location: LCCOMB_X63_Y47_N26
\U0|U2|UO|U2|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.state_bit_1~0_combout\ = (\U0|U2|UO|U2|CurrentState.state_bit_1~q\ & ((\U0|U2|UO|U2|CurrentState.state_bit_0~q\) # ((\U0|U2|U1|CurrentState.state_bit_1~q\ & !\U0|U2|U1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	datab => \U0|U2|UO|U2|CurrentState.state_bit_0~q\,
	datac => \U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U2|UO|U2|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X63_Y47_N10
\U0|U2|UO|U2|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.state_bit_1~1_combout\ = (\U0|U2|UO|U2|CurrentState.state_bit_1~0_combout\) # 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ & (\U0|U2|UO|U2|CurrentState.state_bit_0~2_combout\ 
-- & \U0|U2|UO|U1|U1|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datab => \U0|U2|UO|U2|CurrentState.state_bit_0~2_combout\,
	datac => \U0|U2|UO|U2|CurrentState.state_bit_1~0_combout\,
	datad => \U0|U2|UO|U1|U1|U2|Q~q\,
	combout => \U0|U2|UO|U2|CurrentState.state_bit_1~1_combout\);

-- Location: FF_X63_Y47_N11
\U0|U2|UO|U2|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|UO|U2|CurrentState.state_bit_1~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|UO|U2|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X63_Y47_N20
\U0|U2|UO|U2|CurrentState.Not_started~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|UO|U2|CurrentState.Not_started~0_combout\ = (\U0|U2|UO|U2|CurrentState.state_bit_1~q\) # (\U0|U2|UO|U2|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|UO|U2|CurrentState.state_bit_1~q\,
	datad => \U0|U2|UO|U2|CurrentState.state_bit_0~q\,
	combout => \U0|U2|UO|U2|CurrentState.Not_started~0_combout\);

-- Location: LCCOMB_X31_Y36_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datac => \U0|U2|UO|U2|CurrentState.Not_started~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X31_Y36_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X38_Y33_N28
\U0|U0|U2|U1|CurrentState.Store_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U2|U1|CurrentState.Store_data~0_combout\ = (\U0|U0|U2|U1|CurrentState.state_bit_1~q\ & \U0|U0|U2|U1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U2|U1|CurrentState.Store_data~0_combout\);

-- Location: LCCOMB_X31_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \U0|U0|U2|U1|CurrentState.Store_data~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X31_Y36_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X38_Y29_N6
\U0|U0|U1|U2|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~31_combout\,
	combout => \U0|U0|U1|U2|ram~31_combout\);

-- Location: LCCOMB_X38_Y29_N10
\U0|U0|U1|U2|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~27_combout\,
	combout => \U0|U0|U1|U2|ram~27_combout\);

-- Location: LCCOMB_X38_Y29_N28
\U0|U0|U1|U2|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6clkctrl_outclk\,
	datac => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datad => \U0|U0|U1|U2|ram~19_combout\,
	combout => \U0|U0|U1|U2|ram~19_combout\);

-- Location: LCCOMB_X38_Y29_N24
\U0|U0|U1|U2|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~47_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & ((\U0|U0|U1|U2|ram~27_combout\) # ((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (((\U0|U0|U1|U2|ram~19_combout\ & 
-- !\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~27_combout\,
	datab => \U0|U0|U1|U2|ram~19_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	combout => \U0|U0|U1|U2|ram~47_combout\);

-- Location: LCCOMB_X40_Y29_N0
\U0|U0|U1|U2|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~23_combout\,
	combout => \U0|U0|U1|U2|ram~23_combout\);

-- Location: LCCOMB_X38_Y29_N2
\U0|U0|U1|U2|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~48_combout\ = (\U0|U0|U1|U2|ram~47_combout\ & ((\U0|U0|U1|U2|ram~31_combout\) # ((!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U2|ram~47_combout\ & (((\U0|U0|U1|U2|ram~23_combout\ & 
-- \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~31_combout\,
	datab => \U0|U0|U1|U2|ram~47_combout\,
	datac => \U0|U0|U1|U2|ram~23_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	combout => \U0|U0|U1|U2|ram~48_combout\);

-- Location: LCCOMB_X40_Y27_N16
\U0|U0|U1|U2|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~7_combout\,
	combout => \U0|U0|U1|U2|ram~7_combout\);

-- Location: LCCOMB_X39_Y32_N0
\U0|U0|U1|U2|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~3_combout\,
	combout => \U0|U0|U1|U2|ram~3_combout\);

-- Location: LCCOMB_X39_Y29_N24
\U0|U0|U1|U2|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~49_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & ((\U0|U0|U1|U2|ram~7_combout\) # ((\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (((\U0|U0|U1|U2|ram~3_combout\ & 
-- !\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datab => \U0|U0|U1|U2|ram~7_combout\,
	datac => \U0|U0|U1|U2|ram~3_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	combout => \U0|U0|U1|U2|ram~49_combout\);

-- Location: LCCOMB_X38_Y32_N18
\U0|U0|U1|U2|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~11_combout\,
	combout => \U0|U0|U1|U2|ram~11_combout\);

-- Location: LCCOMB_X38_Y32_N20
\U0|U0|U1|U2|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U0|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~15_combout\,
	combout => \U0|U0|U1|U2|ram~15_combout\);

-- Location: LCCOMB_X39_Y29_N10
\U0|U0|U1|U2|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~50_combout\ = (\U0|U0|U1|U2|ram~49_combout\ & (((\U0|U0|U1|U2|ram~15_combout\) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\)))) # (!\U0|U0|U1|U2|ram~49_combout\ & (\U0|U0|U1|U2|ram~11_combout\ & 
-- ((\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~49_combout\,
	datab => \U0|U0|U1|U2|ram~11_combout\,
	datac => \U0|U0|U1|U2|ram~15_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	combout => \U0|U0|U1|U2|ram~50_combout\);

-- Location: LCCOMB_X39_Y29_N4
\U0|U0|U1|U2|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~51_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & (\U0|U0|U1|U2|ram~48_combout\)) # (!\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & ((\U0|U0|U1|U2|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~48_combout\,
	datab => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	datad => \U0|U0|U1|U2|ram~50_combout\,
	combout => \U0|U0|U1|U2|ram~51_combout\);

-- Location: FF_X39_Y29_N5
\U0|U0|U2|U0|U0|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_outclk\,
	d => \U0|U0|U1|U2|ram~51_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U2|U0|U0|U0|Q~q\);

-- Location: LCCOMB_X32_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \U0|U0|U2|U0|U0|U0|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X32_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X32_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X38_Y30_N18
\U0|U0|U0|U1|U0|U1|U1|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U0|U1|U1|Q~2_combout\ = \U0|U0|U0|U1|U0|U1|U1|Q~q\ $ (((\U0|U0|U0|U1|U2|GS~0_combout\ & (!\U0|U0|U0|U2|CurrentState.state_bit_1~q\ & !\U0|U0|U0|U2|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U2|GS~0_combout\,
	datab => \U0|U0|U0|U2|CurrentState.state_bit_1~q\,
	datac => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datad => \U0|U0|U0|U2|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U0|U1|U0|U1|U1|Q~2_combout\);

-- Location: FF_X38_Y30_N19
\U0|U0|U0|U1|U0|U1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U0|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U1|U0|U1|U1|Q~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U1|U0|U1|U1|Q~q\);

-- Location: LCCOMB_X38_Y29_N0
\U0|U0|U1|U2|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~30_combout\,
	combout => \U0|U0|U1|U2|ram~30_combout\);

-- Location: LCCOMB_X39_Y29_N18
\U0|U0|U1|U2|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~22_combout\,
	combout => \U0|U0|U1|U2|ram~22_combout\);

-- Location: LCCOMB_X38_Y29_N20
\U0|U0|U1|U2|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~26_combout\,
	combout => \U0|U0|U1|U2|ram~26_combout\);

-- Location: LCCOMB_X38_Y29_N14
\U0|U0|U1|U2|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datac => \U0|U0|U1|U2|ram~18_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \U0|U0|U1|U2|ram~18_combout\);

-- Location: LCCOMB_X38_Y29_N22
\U0|U0|U1|U2|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~42_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & ((\U0|U0|U1|U2|ram~26_combout\) # ((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (((\U0|U0|U1|U2|ram~18_combout\ & 
-- !\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datab => \U0|U0|U1|U2|ram~26_combout\,
	datac => \U0|U0|U1|U2|ram~18_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	combout => \U0|U0|U1|U2|ram~42_combout\);

-- Location: LCCOMB_X39_Y29_N6
\U0|U0|U1|U2|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~43_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & ((\U0|U0|U1|U2|ram~42_combout\ & (\U0|U0|U1|U2|ram~30_combout\)) # (!\U0|U0|U1|U2|ram~42_combout\ & ((\U0|U0|U1|U2|ram~22_combout\))))) # 
-- (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (((\U0|U0|U1|U2|ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~30_combout\,
	datab => \U0|U0|U1|U2|ram~22_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	datad => \U0|U0|U1|U2|ram~42_combout\,
	combout => \U0|U0|U1|U2|ram~43_combout\);

-- Location: LCCOMB_X39_Y30_N12
\U0|U0|U1|U2|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0clkctrl_outclk\,
	datab => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datad => \U0|U0|U1|U2|ram~10_combout\,
	combout => \U0|U0|U1|U2|ram~10_combout\);

-- Location: LCCOMB_X39_Y30_N16
\U0|U0|U1|U2|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~14_combout\,
	combout => \U0|U0|U1|U2|ram~14_combout\);

-- Location: LCCOMB_X39_Y30_N6
\U0|U0|U1|U2|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~6_combout\,
	combout => \U0|U0|U1|U2|ram~6_combout\);

-- Location: LCCOMB_X38_Y30_N6
\U0|U0|U1|U2|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U0|U0|U0|U1|U0|U1|U1|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\U0|U0|U1|U2|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U0|U0|U1|U2|ram~2_combout\,
	combout => \U0|U0|U1|U2|ram~2_combout\);

-- Location: LCCOMB_X39_Y30_N24
\U0|U0|U1|U2|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~44_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\)))) # (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & ((\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & (\U0|U0|U1|U2|ram~6_combout\)) # 
-- (!\U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\ & ((\U0|U0|U1|U2|ram~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~6_combout\,
	datab => \U0|U0|U1|U2|ram~2_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[0]~0_combout\,
	combout => \U0|U0|U1|U2|ram~44_combout\);

-- Location: LCCOMB_X39_Y30_N26
\U0|U0|U1|U2|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~45_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & ((\U0|U0|U1|U2|ram~44_combout\ & ((\U0|U0|U1|U2|ram~14_combout\))) # (!\U0|U0|U1|U2|ram~44_combout\ & (\U0|U0|U1|U2|ram~10_combout\)))) # 
-- (!\U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\ & (((\U0|U0|U1|U2|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~10_combout\,
	datab => \U0|U0|U1|U2|ram~14_combout\,
	datac => \U0|U0|U1|U1|Mux_putandget|Y[1]~1_combout\,
	datad => \U0|U0|U1|U2|ram~44_combout\,
	combout => \U0|U0|U1|U2|ram~45_combout\);

-- Location: LCCOMB_X39_Y29_N2
\U0|U0|U1|U2|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U2|ram~46_combout\ = (\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & (\U0|U0|U1|U2|ram~43_combout\)) # (!\U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\ & ((\U0|U0|U1|U2|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U2|ram~43_combout\,
	datab => \U0|U0|U1|U2|ram~45_combout\,
	datad => \U0|U0|U1|U1|Mux_putandget|Y[2]~2_combout\,
	combout => \U0|U0|U1|U2|ram~46_combout\);

-- Location: FF_X39_Y29_N3
\U0|U0|U2|U0|U0|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U2|U1|CurrentState.Wreg_1~0clkctrl_outclk\,
	d => \U0|U0|U1|U2|ram~46_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U2|U0|U0|U1|Q~q\);

-- Location: LCCOMB_X32_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \U0|U0|U2|U0|U0|U1|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X32_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X31_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \U0|U0|U2|U0|U0|U2|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X31_Y36_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X34_Y36_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X36_Y36_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X36_Y36_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X36_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: LCCOMB_X38_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X38_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X34_Y36_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X36_Y36_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X36_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X36_Y36_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X36_Y36_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X36_Y36_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X36_Y36_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X36_Y36_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: FF_X36_Y36_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: FF_X36_Y36_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X36_Y36_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X36_Y36_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X36_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X36_Y36_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X36_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X34_Y36_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X36_Y36_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X36_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X36_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X36_Y36_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X36_Y36_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X36_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X36_Y36_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X34_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X34_Y36_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X34_Y36_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X34_Y35_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: FF_X34_Y36_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X34_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X34_Y36_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X34_Y36_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X34_Y36_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X34_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X34_Y36_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X38_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\);

-- Location: LCCOMB_X38_Y34_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\);

-- Location: LCCOMB_X34_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\);

-- Location: FF_X38_Y34_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X38_Y34_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\);

-- Location: FF_X38_Y34_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X38_Y34_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\);

-- Location: FF_X38_Y34_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X38_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\);

-- Location: FF_X38_Y34_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X37_Y34_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X38_Y34_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X38_Y34_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\);

-- Location: FF_X38_Y34_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X38_Y34_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10_combout\);

-- Location: LCCOMB_X37_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\);

-- Location: LCCOMB_X36_Y34_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X34_Y35_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X34_Y35_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X36_Y34_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X36_Y34_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X36_Y34_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X36_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X36_Y34_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X36_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X36_Y34_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X37_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y35_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X37_Y34_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X38_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X38_Y34_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21_combout\);

-- Location: LCCOMB_X38_Y34_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~21_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X37_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X37_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X37_Y34_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X38_Y34_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X38_Y34_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X37_Y34_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X37_Y34_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X38_Y34_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X38_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\);

-- Location: FF_X36_Y34_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X36_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\);

-- Location: LCCOMB_X37_Y34_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X37_Y34_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X37_Y34_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X37_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\);

-- Location: LCCOMB_X38_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\);

-- Location: LCCOMB_X37_Y34_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20_combout\);

-- Location: LCCOMB_X37_Y34_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~20_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X34_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X34_Y36_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X37_Y34_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X37_Y34_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X37_Y34_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X37_Y34_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X34_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X34_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X34_Y35_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \~GND~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X34_Y35_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X34_Y35_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X34_Y35_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X34_Y35_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X34_Y35_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X34_Y35_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X34_Y35_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X34_Y35_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G10
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X29_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: FF_X29_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X38_Y33_N22
\U0|U0|U2|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U2|U1|CurrentState.state_bit_0~0_combout\ = (!\U0|U0|U2|U1|CurrentState.Start~0_combout\ & (\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & (\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & \U0|U0|U1|U0|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U2|U1|CurrentState.Start~0_combout\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U2|U1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X38_Y33_N24
\U0|U0|U2|U1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U2|U1|CurrentState.state_bit_0~1_combout\ = (\U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\) # ((\U0|U0|U2|U1|CurrentState.state_bit_0~0_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- \U0|U0|U2|U1|CurrentState.Store_data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \U0|U0|U2|U1|CurrentState.state_bit_0~0_combout\,
	datad => \U0|U0|U2|U1|CurrentState.Store_data~0_combout\,
	combout => \U0|U0|U2|U1|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X38_Y33_N25
\U0|U0|U2|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U2|U1|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U2|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X38_Y33_N10
\U0|U0|U2|U1|CurrentState.Wreg_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\ = LCELL((!\U0|U0|U2|U1|CurrentState.state_bit_1~q\ & \U0|U0|U2|U1|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\);

-- Location: LCCOMB_X38_Y33_N2
\U0|U0|U2|U1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U2|U1|CurrentState.state_bit_1~0_combout\ = (\U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\) # ((\U0|U0|U2|U1|CurrentState.state_bit_1~q\ & 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\) # (\U0|U0|U2|U1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U2|U1|CurrentState.Wreg_1~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \U0|U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U2|U1|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X38_Y33_N3
\U0|U0|U2|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U2|U1|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U2|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X38_Y33_N12
\U0|U0|U2|U1|CurrentState.Start~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U2|U1|CurrentState.Start~0_combout\ = (\U0|U0|U2|U1|CurrentState.state_bit_1~q\) # (\U0|U0|U2|U1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U2|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U2|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U2|U1|CurrentState.Start~0_combout\);

-- Location: LCCOMB_X38_Y30_N22
\U0|U0|U0|U2|CurrentState.Kval_true~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.Kval_true~0_combout\ = (\U0|U0|U0|U2|CurrentState.state_bit_1~q\ & \U0|U0|U0|U2|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|CurrentState.state_bit_1~q\,
	datac => \U0|U0|U0|U2|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U0|U2|CurrentState.Kval_true~0_combout\);

-- Location: LCCOMB_X39_Y31_N20
\U0|U0|U1|U1|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|FFD1|Q~0_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & ((\U0|U0|U1|U1|FFD1|Q~q\) # ((!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & !\U0|U0|U1|U0|CurrentState.state_bit_0~q\)))) # (!\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & 
-- (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & (\U0|U0|U1|U1|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datac => \U0|U0|U1|U1|FFD1|Q~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U1|U1|FFD1|Q~0_combout\);

-- Location: FF_X39_Y31_N21
\U0|U0|U1|U1|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U1|FFD1|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U1|FFD1|Q~q\);

-- Location: LCCOMB_X39_Y31_N14
\U0|U0|U1|U1|full~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|full~0_combout\ = (\U0|U0|U1|U1|idxPut|U1|U0|Q~q\ & (\U0|U0|U1|U1|idxGet|U1|U0|Q~q\ & (\U0|U0|U1|U1|idxGet|U1|U1|Q~q\ $ (!\U0|U0|U1|U1|idxPut|U1|U1|Q~q\)))) # (!\U0|U0|U1|U1|idxPut|U1|U0|Q~q\ & (!\U0|U0|U1|U1|idxGet|U1|U0|Q~q\ & 
-- (\U0|U0|U1|U1|idxGet|U1|U1|Q~q\ $ (!\U0|U0|U1|U1|idxPut|U1|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|idxPut|U1|U0|Q~q\,
	datab => \U0|U0|U1|U1|idxGet|U1|U1|Q~q\,
	datac => \U0|U0|U1|U1|idxGet|U1|U0|Q~q\,
	datad => \U0|U0|U1|U1|idxPut|U1|U1|Q~q\,
	combout => \U0|U0|U1|U1|full~0_combout\);

-- Location: LCCOMB_X39_Y31_N16
\U0|U0|U1|U1|full~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U1|full~1_combout\ = (\U0|U0|U1|U1|full~0_combout\ & (\U0|U0|U1|U1|idxGet|U1|U2|Q~q\ $ (!\U0|U0|U1|U1|idxPut|U1|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U1|idxGet|U1|U2|Q~q\,
	datac => \U0|U0|U1|U1|full~0_combout\,
	datad => \U0|U0|U1|U1|idxPut|U1|U2|Q~q\,
	combout => \U0|U0|U1|U1|full~1_combout\);

-- Location: LCCOMB_X38_Y33_N20
\U0|U0|U1|U0|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_1~0_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & (\U0|U0|U0|U2|CurrentState.Kval_true~0_combout\)) # (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & ((\U0|U0|U1|U1|full~1_combout\ & ((!\U0|U0|U1|U1|FFD1|Q~q\))) # 
-- (!\U0|U0|U1|U1|full~1_combout\ & (\U0|U0|U0|U2|CurrentState.Kval_true~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|CurrentState.Kval_true~0_combout\,
	datab => \U0|U0|U1|U1|FFD1|Q~q\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datad => \U0|U0|U1|U1|full~1_combout\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X38_Y33_N14
\U0|U0|U1|U0|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_1~1_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_0~q\ & (!\U0|U0|U2|U1|CurrentState.Start~0_combout\ & ((\U0|U0|U1|U0|CurrentState.state_bit_2~q\)))) # (!\U0|U0|U1|U0|CurrentState.state_bit_0~q\ & 
-- ((\U0|U0|U1|U0|CurrentState.state_bit_1~0_combout\) # ((\U0|U0|U2|U1|CurrentState.Start~0_combout\ & !\U0|U0|U1|U0|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U2|U1|CurrentState.Start~0_combout\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_1~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X38_Y33_N8
\U0|U0|U1|U0|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_1~2_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_1~1_combout\ & ((\U0|U0|U1|U0|CurrentState.state_bit_1~q\))) # (!\U0|U0|U1|U0|CurrentState.state_bit_1~1_combout\ & (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_1~1_combout\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_1~2_combout\);

-- Location: FF_X38_Y33_N9
\U0|U0|U1|U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U0|CurrentState.state_bit_1~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X38_Y33_N4
\U0|U0|U1|U0|CurrentState.state_bit_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_2~4_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_0~q\) # ((!\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & ((\U0|U0|U2|U1|CurrentState.state_bit_0~q\) # (\U0|U0|U2|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	datab => \U0|U0|U2|U1|CurrentState.state_bit_0~q\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U2|U1|CurrentState.state_bit_1~q\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_2~4_combout\);

-- Location: LCCOMB_X38_Y33_N0
\U0|U0|U1|U0|CurrentState.state_bit_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_2~2_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & (\U0|U0|U0|U2|CurrentState.Kval_true~0_combout\)) # (!\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & ((\U0|U0|U1|U1|full~1_combout\ & ((!\U0|U0|U1|U1|FFD1|Q~q\))) # 
-- (!\U0|U0|U1|U1|full~1_combout\ & (\U0|U0|U0|U2|CurrentState.Kval_true~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|CurrentState.Kval_true~0_combout\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datac => \U0|U0|U1|U1|FFD1|Q~q\,
	datad => \U0|U0|U1|U1|full~1_combout\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_2~2_combout\);

-- Location: LCCOMB_X38_Y33_N26
\U0|U0|U1|U0|CurrentState.state_bit_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_2~3_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_2~4_combout\ & (\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & (\U0|U0|U1|U0|CurrentState.state_bit_2~q\))) # (!\U0|U0|U1|U0|CurrentState.state_bit_2~4_combout\ & 
-- ((\U0|U0|U1|U0|CurrentState.state_bit_2~2_combout\ & (\U0|U0|U1|U0|CurrentState.state_bit_1~q\)) # (!\U0|U0|U1|U0|CurrentState.state_bit_2~2_combout\ & ((!\U0|U0|U1|U0|CurrentState.state_bit_2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~4_combout\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_2~2_combout\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_2~3_combout\);

-- Location: FF_X38_Y33_N27
\U0|U0|U1|U0|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U0|CurrentState.state_bit_2~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U0|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X38_Y33_N18
\U0|U0|U1|U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_0~0_combout\ = (\U0|U0|U1|U1|full~1_combout\ & ((\U0|U0|U1|U1|FFD1|Q~q\ & ((\U0|U0|U2|U1|CurrentState.Start~0_combout\))) # (!\U0|U0|U1|U1|FFD1|Q~q\ & (!\U0|U0|U0|U2|CurrentState.Kval_true~0_combout\)))) # 
-- (!\U0|U0|U1|U1|full~1_combout\ & (!\U0|U0|U0|U2|CurrentState.Kval_true~0_combout\ & ((\U0|U0|U2|U1|CurrentState.Start~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|CurrentState.Kval_true~0_combout\,
	datab => \U0|U0|U1|U1|full~1_combout\,
	datac => \U0|U0|U1|U1|FFD1|Q~q\,
	datad => \U0|U0|U2|U1|CurrentState.Start~0_combout\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X38_Y33_N6
\U0|U0|U1|U0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|U0|CurrentState.state_bit_0~1_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & (((\U0|U0|U1|U0|CurrentState.state_bit_0~q\ & \U0|U0|U1|U0|CurrentState.state_bit_1~q\)))) # (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\ & 
-- (!\U0|U0|U1|U0|CurrentState.state_bit_1~q\ & ((\U0|U0|U1|U0|CurrentState.state_bit_0~q\) # (!\U0|U0|U1|U0|CurrentState.state_bit_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datab => \U0|U0|U1|U0|CurrentState.state_bit_0~0_combout\,
	datac => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_1~q\,
	combout => \U0|U0|U1|U0|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X38_Y33_N7
\U0|U0|U1|U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|U0|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X38_Y30_N24
\U0|U0|U0|U2|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.state_bit_0~2_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_0~q\) # (!\U0|U0|U0|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U2|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U0|U2|CurrentState.state_bit_0~2_combout\);

-- Location: LCCOMB_X38_Y30_N20
\U0|U0|U0|U2|CurrentState.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.state_bit_0~3_combout\ = (\U0|U0|U0|U2|CurrentState.state_bit_0~1_combout\) # ((\U0|U0|U0|U2|CurrentState.state_bit_0~q\ & ((\U0|U0|U0|U2|CurrentState.state_bit_0~2_combout\) # (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|CurrentState.state_bit_0~1_combout\,
	datab => \U0|U0|U0|U2|CurrentState.state_bit_0~2_combout\,
	datac => \U0|U0|U0|U2|CurrentState.state_bit_0~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	combout => \U0|U0|U0|U2|CurrentState.state_bit_0~3_combout\);

-- Location: FF_X38_Y30_N21
\U0|U0|U0|U2|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U0|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U2|CurrentState.state_bit_0~3_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X38_Y30_N10
\U0|U0|U0|U2|CurrentState.state_bit_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.state_bit_0~4_combout\ = (\U0|U0|U1|U0|CurrentState.state_bit_0~q\) # (!\U0|U0|U1|U0|CurrentState.state_bit_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U1|U0|CurrentState.state_bit_2~q\,
	datad => \U0|U0|U1|U0|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U0|U2|CurrentState.state_bit_0~4_combout\);

-- Location: LCCOMB_X38_Y30_N14
\U0|U0|U0|U2|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.state_bit_1~0_combout\ = (\U0|U0|U0|U2|CurrentState.state_bit_0~q\) # ((\U0|U0|U0|U2|CurrentState.state_bit_1~q\ & ((!\U0|U0|U0|U2|CurrentState.state_bit_0~4_combout\) # (!\U0|U0|U0|U1|U2|GS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U2|GS~0_combout\,
	datab => \U0|U0|U0|U2|CurrentState.state_bit_0~q\,
	datac => \U0|U0|U0|U2|CurrentState.state_bit_1~q\,
	datad => \U0|U0|U0|U2|CurrentState.state_bit_0~4_combout\,
	combout => \U0|U0|U0|U2|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X38_Y30_N15
\U0|U0|U0|U2|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U0|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U2|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X38_Y30_N0
\U0|U0|U0|U2|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|CurrentState.state_bit_0~0_combout\ = (!\U0|U0|U0|U2|CurrentState.state_bit_1~q\ & !\U0|U0|U0|U2|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|CurrentState.state_bit_1~q\,
	datac => \U0|U0|U0|U2|CurrentState.state_bit_0~q\,
	combout => \U0|U0|U0|U2|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X38_Y30_N16
\U0|U0|U0|U1|U0|U1|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U0|U1|U0|Q~0_combout\ = \U0|U0|U0|U1|U0|U1|U0|Q~q\ $ (((\U0|U0|U0|U1|U2|GS~0_combout\ & (\U0|U0|U0|U2|CurrentState.state_bit_0~0_combout\ & \U0|U0|U0|U1|U0|U1|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|U2|GS~0_combout\,
	datab => \U0|U0|U0|U2|CurrentState.state_bit_0~0_combout\,
	datac => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datad => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	combout => \U0|U0|U0|U1|U0|U1|U0|Q~0_combout\);

-- Location: FF_X38_Y30_N17
\U0|U0|U0|U1|U0|U1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U0|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U1|U0|U1|U0|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U1|U0|U1|U0|Q~q\);

-- Location: LCCOMB_X38_Y29_N8
\U0|U0|U0|U1|U1|O[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U1|O\(0) = (\U0|U0|U0|U1|U0|U1|U0|Q~q\) # (\U0|U0|U0|U1|U0|U1|U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datad => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	combout => \U0|U0|U0|U1|U1|O\(0));

-- Location: LCCOMB_X38_Y29_N26
\U0|U0|U0|U1|U1|O[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U1|O\(1) = (!\U0|U0|U0|U1|U0|U1|U0|Q~q\ & \U0|U0|U0|U1|U0|U1|U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datad => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	combout => \U0|U0|U0|U1|U1|O\(1));

-- Location: LCCOMB_X38_Y29_N12
\U0|U0|U0|U1|U1|O[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|U1|O\(2) = (\U0|U0|U0|U1|U0|U1|U0|Q~q\ & !\U0|U0|U0|U1|U0|U1|U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U1|U0|U1|U0|Q~q\,
	datad => \U0|U0|U0|U1|U0|U1|U1|Q~q\,
	combout => \U0|U0|U0|U1|U1|O\(2));

-- Location: LCCOMB_X31_Y13_N16
\U0|U1|U1|U0|U1|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|U1|U3|Q~0_combout\ = !\U0|U1|U1|U0|U1|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|U1|U0|U1|U3|Q~q\,
	combout => \U0|U1|U1|U0|U1|U3|Q~0_combout\);

-- Location: FF_X31_Y13_N17
\U0|U1|U1|U0|U1|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U0|U1|U3|Q~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U0|U1|U3|Q~q\);

-- Location: LCCOMB_X31_Y13_N26
\U0|U1|U1|U0|U0|U3|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|U0|U3|Co~0_combout\ = (\U0|U1|U1|U0|U1|U1|Q~q\ & ((\U0|U1|U1|U1|CurrentState.Delivering~0_combout\) # ((\U0|U1|U1|U0|U1|U3|Q~q\ & \U0|U1|U1|U0|U1|U2|Q~q\)))) # (!\U0|U1|U1|U0|U1|U1|Q~q\ & (\U0|U1|U1|U1|CurrentState.Delivering~0_combout\ & 
-- ((\U0|U1|U1|U0|U1|U3|Q~q\) # (\U0|U1|U1|U0|U1|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|U1|U1|Q~q\,
	datab => \U0|U1|U1|U0|U1|U3|Q~q\,
	datac => \U0|U1|U1|U0|U1|U2|Q~q\,
	datad => \U0|U1|U1|U1|CurrentState.Delivering~0_combout\,
	combout => \U0|U1|U1|U0|U0|U3|Co~0_combout\);

-- Location: LCCOMB_X31_Y13_N10
\U0|U1|U1|U0|U0|U4|U2|S~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|U0|U4|U2|S~2_combout\ = \U0|U1|U1|U0|U0|U3|Co~0_combout\ $ (\U0|U1|U1|U0|U1|U0|Q~q\ $ (((\U0|U1|U1|U1|CurrentState.state_bit_0~q\ & !\U0|U1|U1|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|U0|U3|Co~0_combout\,
	datab => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	datac => \U0|U1|U1|U0|U1|U0|Q~q\,
	datad => \U0|U1|U1|U1|CurrentState.state_bit_1~q\,
	combout => \U0|U1|U1|U0|U0|U4|U2|S~2_combout\);

-- Location: FF_X31_Y13_N11
\U0|U1|U1|U0|U1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U0|U0|U4|U2|S~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U0|U1|U0|Q~q\);

-- Location: LCCOMB_X31_Y13_N0
\U0|U1|U1|U1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|CurrentState.state_bit_1~1_combout\ = (\U0|U1|U1|U0|U1|U1|Q~q\ & (!\U0|U1|U1|U0|U1|U3|Q~q\ & (!\U0|U1|U1|U0|U1|U2|Q~q\ & \U0|U1|U1|U0|U1|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|U1|U1|Q~q\,
	datab => \U0|U1|U1|U0|U1|U3|Q~q\,
	datac => \U0|U1|U1|U0|U1|U2|Q~q\,
	datad => \U0|U1|U1|U0|U1|U0|Q~q\,
	combout => \U0|U1|U1|U1|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X31_Y13_N2
\U0|U1|U1|U1|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|CurrentState.state_bit_1~2_combout\ = (\U0|U1|U1|U1|CurrentState.state_bit_0~q\ & ((\U0|U1|U1|U1|CurrentState.state_bit_1~1_combout\) # ((!\U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\ & \U0|U1|U1|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\,
	datab => \U0|U1|U1|U1|CurrentState.state_bit_1~1_combout\,
	datac => \U0|U1|U1|U1|CurrentState.state_bit_1~q\,
	datad => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	combout => \U0|U1|U1|U1|CurrentState.state_bit_1~2_combout\);

-- Location: FF_X31_Y13_N3
\U0|U1|U1|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U1|CurrentState.state_bit_1~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X31_Y13_N22
\U0|U1|U1|U0|U0|U2|U2|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|U0|U2|U2|S~0_combout\ = \U0|U1|U1|U0|U1|U3|Q~q\ $ (\U0|U1|U1|U0|U1|U2|Q~q\ $ (((\U0|U1|U1|U1|CurrentState.state_bit_0~q\ & !\U0|U1|U1|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|U1|U3|Q~q\,
	datab => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	datac => \U0|U1|U1|U0|U1|U2|Q~q\,
	datad => \U0|U1|U1|U1|CurrentState.state_bit_1~q\,
	combout => \U0|U1|U1|U0|U0|U2|U2|S~0_combout\);

-- Location: FF_X31_Y13_N23
\U0|U1|U1|U0|U1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U0|U0|U2|U2|S~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U0|U1|U2|Q~q\);

-- Location: LCCOMB_X31_Y13_N12
\U0|U1|U1|U0|U0|U3|U2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|U0|U3|U2|S~combout\ = \U0|U1|U1|U0|U1|U1|Q~q\ $ (((\U0|U1|U1|U0|U1|U2|Q~q\ & (\U0|U1|U1|U0|U1|U3|Q~q\ & !\U0|U1|U1|U1|CurrentState.Delivering~0_combout\)) # (!\U0|U1|U1|U0|U1|U2|Q~q\ & (!\U0|U1|U1|U0|U1|U3|Q~q\ & 
-- \U0|U1|U1|U1|CurrentState.Delivering~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|U1|U2|Q~q\,
	datab => \U0|U1|U1|U0|U1|U3|Q~q\,
	datac => \U0|U1|U1|U0|U1|U1|Q~q\,
	datad => \U0|U1|U1|U1|CurrentState.Delivering~0_combout\,
	combout => \U0|U1|U1|U0|U0|U3|U2|S~combout\);

-- Location: FF_X31_Y13_N13
\U0|U1|U1|U0|U1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U0|U0|U3|U2|S~combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U0|U1|U1|Q~q\);

-- Location: LCCOMB_X31_Y13_N6
\U0|U1|U1|U1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\ = (!\U0|U1|U1|U0|U1|U1|Q~q\ & (!\U0|U1|U1|U0|U1|U3|Q~q\ & (!\U0|U1|U1|U0|U1|U2|Q~q\ & !\U0|U1|U1|U0|U1|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|U1|U1|Q~q\,
	datab => \U0|U1|U1|U0|U1|U3|Q~q\,
	datac => \U0|U1|U1|U0|U1|U2|Q~q\,
	datad => \U0|U1|U1|U0|U1|U0|Q~q\,
	combout => \U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X29_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X29_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X32_Y13_N2
\U0|U1|UO|U1|U1|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U1|U1|U2|Q~0_combout\ = !\U0|U1|UO|U1|U1|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|UO|U1|U1|U2|Q~q\,
	combout => \U0|U1|UO|U1|U1|U2|Q~0_combout\);

-- Location: LCCOMB_X32_Y13_N24
\U0|U1|UO|U2|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U2|CurrentState.state_bit_1~0_combout\ = (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & 
-- (!\U0|U1|UO|U1|U1|U1|Q~q\ & (\U0|U1|UO|U1|U1|U0|Q~q\ & \U0|U1|UO|U1|U1|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datab => \U0|U1|UO|U1|U1|U1|Q~q\,
	datac => \U0|U1|UO|U1|U1|U0|Q~q\,
	datad => \U0|U1|UO|U1|U1|U2|Q~q\,
	combout => \U0|U1|UO|U2|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X32_Y13_N10
\U0|U1|UO|U2|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U2|CurrentState.state_bit_1~1_combout\ = (\U0|U1|UO|U2|CurrentState.state_bit_0~q\ & (((\U0|U1|UO|U2|CurrentState.state_bit_1~q\) # (\U0|U1|UO|U2|CurrentState.state_bit_1~0_combout\)))) # (!\U0|U1|UO|U2|CurrentState.state_bit_0~q\ & 
-- (\U0|U1|U1|U1|CurrentState.state_bit_1~q\ & (\U0|U1|UO|U2|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|CurrentState.state_bit_1~q\,
	datab => \U0|U1|UO|U2|CurrentState.state_bit_0~q\,
	datac => \U0|U1|UO|U2|CurrentState.state_bit_1~q\,
	datad => \U0|U1|UO|U2|CurrentState.state_bit_1~0_combout\,
	combout => \U0|U1|UO|U2|CurrentState.state_bit_1~1_combout\);

-- Location: FF_X32_Y13_N11
\U0|U1|UO|U2|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|UO|U2|CurrentState.state_bit_1~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U2|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X32_Y13_N26
\U0|U1|UO|U2|CurrentState.Not_started~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U2|CurrentState.Not_started~0_combout\ = (!\U0|U1|UO|U2|CurrentState.state_bit_0~q\ & !\U0|U1|UO|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|UO|U2|CurrentState.state_bit_0~q\,
	datad => \U0|U1|UO|U2|CurrentState.state_bit_1~q\,
	combout => \U0|U1|UO|U2|CurrentState.Not_started~0_combout\);

-- Location: CLKCTRL_G15
\U0|U1|UO|U2|CurrentState.Not_started~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U1|UO|U2|CurrentState.Not_started~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U1|UO|U2|CurrentState.Not_started~0clkctrl_outclk\);

-- Location: FF_X32_Y13_N3
\U0|U1|UO|U1|U1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U1|U1|U2|Q~0_combout\,
	clrn => \U0|U1|UO|U2|ALT_INV_CurrentState.Not_started~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U1|U1|U2|Q~q\);

-- Location: LCCOMB_X32_Y13_N28
\U0|U1|UO|U1|U1|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U1|U1|U1|Q~0_combout\ = \U0|U1|UO|U1|U1|U1|Q~q\ $ (\U0|U1|UO|U1|U1|U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|UO|U1|U1|U1|Q~q\,
	datad => \U0|U1|UO|U1|U1|U2|Q~q\,
	combout => \U0|U1|UO|U1|U1|U1|Q~0_combout\);

-- Location: FF_X32_Y13_N29
\U0|U1|UO|U1|U1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U1|U1|U1|Q~0_combout\,
	clrn => \U0|U1|UO|U2|ALT_INV_CurrentState.Not_started~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U1|U1|U1|Q~q\);

-- Location: LCCOMB_X32_Y13_N16
\U0|U1|UO|U1|U1|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U1|U1|U0|Q~0_combout\ = \U0|U1|UO|U1|U1|U0|Q~q\ $ (((\U0|U1|UO|U1|U1|U1|Q~q\ & \U0|U1|UO|U1|U1|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|UO|U1|U1|U1|Q~q\,
	datac => \U0|U1|UO|U1|U1|U0|Q~q\,
	datad => \U0|U1|UO|U1|U1|U2|Q~q\,
	combout => \U0|U1|UO|U1|U1|U0|Q~0_combout\);

-- Location: FF_X32_Y13_N17
\U0|U1|UO|U1|U1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U1|U1|U0|Q~0_combout\,
	clrn => \U0|U1|UO|U2|ALT_INV_CurrentState.Not_started~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U1|U1|U0|Q~q\);

-- Location: LCCOMB_X32_Y13_N30
\U0|U1|UO|U2|CurrentState.Shift_Register_starts~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\ = (\U0|U1|UO|U2|CurrentState.state_bit_0~q\ & !\U0|U1|UO|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|UO|U2|CurrentState.state_bit_0~q\,
	datad => \U0|U1|UO|U2|CurrentState.state_bit_1~q\,
	combout => \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\);

-- Location: LCCOMB_X32_Y13_N22
\U0|U1|UO|U2|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U2|CurrentState.state_bit_0~1_combout\ = (\U0|U1|UO|U1|U1|U0|Q~q\ & (!\U0|U1|UO|U1|U1|U1|Q~q\ & (\U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\ & \U0|U1|UO|U1|U1|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|UO|U1|U1|U0|Q~q\,
	datab => \U0|U1|UO|U1|U1|U1|Q~q\,
	datac => \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	datad => \U0|U1|UO|U1|U1|U2|Q~q\,
	combout => \U0|U1|UO|U2|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X32_Y13_N0
\U0|U1|UO|U2|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U2|CurrentState.state_bit_0~2_combout\ = (\U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\) # ((\U0|U1|UO|U2|CurrentState.state_bit_0~1_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & !\U0|U1|UO|U2|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datab => \U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\,
	datac => \U0|U1|UO|U2|CurrentState.state_bit_0~1_combout\,
	datad => \U0|U1|UO|U2|CurrentState.state_bit_1~q\,
	combout => \U0|U1|UO|U2|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X32_Y13_N1
\U0|U1|UO|U2|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|UO|U2|CurrentState.state_bit_0~2_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U2|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X32_Y13_N4
\U0|U1|UO|U2|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\ = (!\U0|U1|U1|U1|CurrentState.state_bit_1~q\ & (\U0|U1|UO|U2|CurrentState.state_bit_0~q\ & \U0|U1|UO|U2|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|CurrentState.state_bit_1~q\,
	datab => \U0|U1|UO|U2|CurrentState.state_bit_0~q\,
	datad => \U0|U1|UO|U2|CurrentState.state_bit_1~q\,
	combout => \U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X31_Y13_N24
\U0|U1|U1|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|CurrentState.state_bit_0~0_combout\ = (\U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\ & (!\U0|U1|U1|U1|CurrentState.state_bit_1~q\ & ((\U0|U1|U1|U1|CurrentState.state_bit_0~q\) # (\U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\)))) # 
-- (!\U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\ & (((\U0|U1|U1|U1|CurrentState.state_bit_0~q\) # (\U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|CurrentState.state_bit_1~0_combout\,
	datab => \U0|U1|U1|U1|CurrentState.state_bit_1~q\,
	datac => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	datad => \U0|U1|UO|U2|CurrentState.state_bit_0~0_combout\,
	combout => \U0|U1|U1|U1|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X31_Y13_N25
\U0|U1|U1|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U1|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X31_Y13_N4
\U0|U1|U1|U1|CurrentState.Delivering~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|CurrentState.Delivering~0_combout\ = (\U0|U1|U1|U1|CurrentState.state_bit_0~q\ & !\U0|U1|U1|U1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U1|U1|CurrentState.state_bit_0~q\,
	datad => \U0|U1|U1|U1|CurrentState.state_bit_1~q\,
	combout => \U0|U1|U1|U1|CurrentState.Delivering~0_combout\);

-- Location: LCCOMB_X31_Y4_N8
\U0|U1|UO|U0|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U0|U0|Q~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	combout => \U0|U1|UO|U0|U0|Q~feeder_combout\);

-- Location: FF_X31_Y4_N9
\U0|U1|UO|U0|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U0|U0|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U0|U0|Q~q\);

-- Location: LCCOMB_X31_Y4_N30
\U0|U1|UO|U0|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U0|U1|Q~feeder_combout\ = \U0|U1|UO|U0|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|UO|U0|U0|Q~q\,
	combout => \U0|U1|UO|U0|U1|Q~feeder_combout\);

-- Location: FF_X31_Y4_N31
\U0|U1|UO|U0|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U0|U1|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U0|U1|Q~q\);

-- Location: LCCOMB_X31_Y4_N28
\U0|U1|UO|U0|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U0|U2|Q~feeder_combout\ = \U0|U1|UO|U0|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|UO|U0|U1|Q~q\,
	combout => \U0|U1|UO|U0|U2|Q~feeder_combout\);

-- Location: FF_X31_Y4_N29
\U0|U1|UO|U0|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U0|U2|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U0|U2|Q~q\);

-- Location: LCCOMB_X31_Y4_N10
\U0|U1|UO|U0|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U0|U3|Q~feeder_combout\ = \U0|U1|UO|U0|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|UO|U0|U2|Q~q\,
	combout => \U0|U1|UO|U0|U3|Q~feeder_combout\);

-- Location: FF_X31_Y4_N11
\U0|U1|UO|U0|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U0|U3|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U0|U3|Q~q\);

-- Location: LCCOMB_X31_Y4_N24
\U0|U1|UO|U0|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|UO|U0|U4|Q~feeder_combout\ = \U0|U1|UO|U0|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|UO|U0|U3|Q~q\,
	combout => \U0|U1|UO|U0|U4|Q~feeder_combout\);

-- Location: FF_X31_Y4_N25
\U0|U1|UO|U0|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~clkctrl_outclk\,
	d => \U0|U1|UO|U0|U4|Q~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \U0|U1|UO|U2|CurrentState.Shift_Register_starts~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|UO|U0|U4|Q~q\);

-- Location: LCCOMB_X72_Y50_N24
\U1|U0|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|dOut[1]~0_combout\ = (\U1|U7|U1|Q\(0)) # ((\U1|U7|U1|Q\(2) & !\U1|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U7|U1|Q\(2),
	datab => \U1|U7|U1|Q\(1),
	datad => \U1|U7|U1|Q\(0),
	combout => \U1|U0|dOut[1]~0_combout\);

-- Location: LCCOMB_X72_Y50_N10
\U1|U5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U5|Equal0~0_combout\ = (\U1|U7|U1|Q\(2) & (\U1|U7|U1|Q\(1) & !\U1|U7|U1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U7|U1|Q\(2),
	datab => \U1|U7|U1|Q\(1),
	datad => \U1|U7|U1|Q\(0),
	combout => \U1|U5|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y50_N4
\U1|U5|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U5|dOut~0_combout\ = (\U1|U7|U1|Q\(1) & !\U1|U7|U1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U7|U1|Q\(1),
	datad => \U1|U7|U1|Q\(0),
	combout => \U1|U5|dOut~0_combout\);

-- Location: LCCOMB_X67_Y50_N12
\U1|U1|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U1|dOut[1]~0_combout\ = ((!\U1|U7|U1|Q\(4) & \U1|U7|U1|Q\(5))) # (!\U1|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U7|U1|Q\(4),
	datac => \U1|U7|U1|Q\(5),
	datad => \U1|U7|U1|Q\(3),
	combout => \U1|U1|dOut[1]~0_combout\);

-- Location: LCCOMB_X67_Y50_N16
\U1|U4|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U4|dOut~0_combout\ = (\U1|U7|U1|Q\(4) & \U1|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U7|U1|Q\(4),
	datad => \U1|U7|U1|Q\(3),
	combout => \U1|U4|dOut~0_combout\);

-- Location: LCCOMB_X67_Y50_N10
\U1|U2|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U2|dOut[1]~0_combout\ = ((!\U1|U7|U1|Q\(7) & \U1|U7|U1|Q\(8))) # (!\U1|U7|U1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U7|U1|Q\(7),
	datac => \U1|U7|U1|Q\(6),
	datad => \U1|U7|U1|Q\(8),
	combout => \U1|U2|dOut[1]~0_combout\);

-- Location: LCCOMB_X67_Y50_N14
\U1|U3|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U3|dOut~0_combout\ = (\U1|U7|U1|Q\(7) & \U1|U7|U1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U7|U1|Q\(7),
	datac => \U1|U7|U1|Q\(6),
	combout => \U1|U3|dOut~0_combout\);

-- Location: FF_X29_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: FF_X29_Y38_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: FF_X29_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X60_Y34_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X29_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X38_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


