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

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "05/05/2014 20:57:03"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	DDS_top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sclk : OUT std_logic;
	din : OUT std_logic;
	cs : OUT std_logic;
	set_waveform_key_in : IN std_logic;
	set_f_key_in : IN std_logic;
	set_a_key_in : IN std_logic;
	set_p_key_in : IN std_logic;
	sin_data : OUT std_logic_vector(9 DOWNTO 0)
	);
END DDS_top;

ARCHITECTURE structure OF DDS_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_set_waveform_key_in : std_logic;
SIGNAL ww_set_f_key_in : std_logic;
SIGNAL ww_set_a_key_in : std_logic;
SIGNAL ww_set_p_key_in : std_logic;
SIGNAL ww_sin_data : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \TLC5615_1|SCLK_REG~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_4|key_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_2|key_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_1|key_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_3|key_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DDS_1|Mult0|auto_generated|op_1~35_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~37_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~39_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~49_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[1]~34_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[3]~38_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[5]~42_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[6]~44_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[8]~48_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[10]~52_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[17]~66_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[19]~70_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[20]~72_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[21]~74_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[2]~38_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[4]~43_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[6]~47_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[4]~92_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[9]~102_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[15]~114_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[16]~116_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[18]~120_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~106_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~109_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~99_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~86_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~79_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~56_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~54_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~49_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~36_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~34_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~26_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~29_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~17_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~13_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~14_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux7~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux7~1_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT3~5_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT1~8_combout\ : std_logic;
SIGNAL \key_1|state.s2~regout\ : std_logic;
SIGNAL \key_1|state~17_combout\ : std_logic;
SIGNAL \key_coding_1|Equal0~0_combout\ : std_logic;
SIGNAL \key_coding_1|Equal0~1_combout\ : std_logic;
SIGNAL \key_coding_1|Equal0~2_combout\ : std_logic;
SIGNAL \key_coding_1|Equal0~3_combout\ : std_logic;
SIGNAL \key_coding_1|Equal0~4_combout\ : std_logic;
SIGNAL \key_4|state.s3~regout\ : std_logic;
SIGNAL \key_2|state.s2~regout\ : std_logic;
SIGNAL \key_2|state.s3~regout\ : std_logic;
SIGNAL \key_4|Selector1~0_combout\ : std_logic;
SIGNAL \key_2|state~17_combout\ : std_logic;
SIGNAL \key_2|Selector1~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~237_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~238_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~240_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~243_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~244_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[1]~0_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[2]~1_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[7]~2_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[3]~9_combout\ : std_logic;
SIGNAL \key_4|key_out~clkctrl_outclk\ : std_logic;
SIGNAL \key_2|key_out~clkctrl_outclk\ : std_logic;
SIGNAL \key_1|key_out~clkctrl_outclk\ : std_logic;
SIGNAL \key_3|key_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT3[0]~7_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT3[2]~6_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT3~4_combout\ : std_logic;
SIGNAL \TLC5615_1|Equal0~0_combout\ : std_logic;
SIGNAL \TLC5615_1|SCLK_REG~0_combout\ : std_logic;
SIGNAL \TLC5615_1|SCLK_REG~regout\ : std_logic;
SIGNAL \TLC5615_1|SCLK_REG~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \key_coding_1|a_control_temp~18_combout\ : std_logic;
SIGNAL \set_a_key_in~combout\ : std_logic;
SIGNAL \key_3|state.s0~1_combout\ : std_logic;
SIGNAL \key_3|state.s0~regout\ : std_logic;
SIGNAL \key_3|state~16_combout\ : std_logic;
SIGNAL \key_3|state.s1~regout\ : std_logic;
SIGNAL \key_3|state~17_combout\ : std_logic;
SIGNAL \key_3|state.s2~regout\ : std_logic;
SIGNAL \key_3|Selector0~1_combout\ : std_logic;
SIGNAL \key_3|Selector1~0_combout\ : std_logic;
SIGNAL \key_3|state.s3~regout\ : std_logic;
SIGNAL \key_3|Selector0~2_combout\ : std_logic;
SIGNAL \key_3|key_out~regout\ : std_logic;
SIGNAL \key_coding_1|a_control_temp[3]~16_combout\ : std_logic;
SIGNAL \key_coding_1|a_control_temp[3]~14_combout\ : std_logic;
SIGNAL \key_coding_1|a_control_temp~19_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|_~373_combout\ : std_logic;
SIGNAL \key_coding_1|a_control_temp~17_combout\ : std_logic;
SIGNAL \key_coding_1|Add2~0_combout\ : std_logic;
SIGNAL \key_coding_1|a_control_temp~15_combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[0]~85\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[1]~86_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[0]~84_combout\ : std_logic;
SIGNAL \reset~_wirecell_combout\ : std_logic;
SIGNAL \set_f_key_in~combout\ : std_logic;
SIGNAL \key_2|state.s0~1_combout\ : std_logic;
SIGNAL \key_2|state.s0~regout\ : std_logic;
SIGNAL \key_2|state~16_combout\ : std_logic;
SIGNAL \key_2|state.s1~regout\ : std_logic;
SIGNAL \key_2|Selector0~1_combout\ : std_logic;
SIGNAL \key_2|Selector0~2_combout\ : std_logic;
SIGNAL \key_2|key_out~regout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[2]~127_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[2]~88_combout\ : std_logic;
SIGNAL \key_coding_1|Equal0~5_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[2]~126_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[1]~87\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[2]~89\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[3]~90_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[3]~91\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[4]~93\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[5]~95\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[6]~97\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[7]~98_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[7]~99\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[8]~100_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[8]~101\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[9]~103\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[10]~104_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[10]~105\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[11]~106_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[11]~107\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[12]~108_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[12]~109\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[13]~110_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[13]~111\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[14]~112_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[14]~113\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[15]~115\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[16]~117\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[17]~118_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[17]~119\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[18]~121\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[19]~122_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[19]~123\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[20]~124_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[6]~96_combout\ : std_logic;
SIGNAL \key_coding_1|f_control_temp[5]~94_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[0]~32_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[0]~33\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[1]~35\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[2]~36_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[2]~37\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[3]~39\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[4]~40_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[4]~41\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[5]~43\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[6]~45\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[7]~46_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[7]~47\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[8]~49\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[9]~50_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[9]~51\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[10]~53\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[11]~54_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[11]~55\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[12]~56_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[12]~57\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[13]~58_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[13]~59\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[14]~60_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[14]~61\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[15]~62_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[15]~63\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[16]~64_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[16]~65\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[17]~67\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[18]~68_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[18]~69\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[19]~71\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[20]~73\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[21]~75\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[22]~76_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[0]~feeder_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[22]~77\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[23]~78_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[23]~79\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[24]~80_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[2]~8_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[2]~39\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[3]~41_combout\ : std_logic;
SIGNAL \set_p_key_in~combout\ : std_logic;
SIGNAL \key_4|state.s0~1_combout\ : std_logic;
SIGNAL \key_4|state.s0~regout\ : std_logic;
SIGNAL \key_4|state~16_combout\ : std_logic;
SIGNAL \key_4|state.s1~regout\ : std_logic;
SIGNAL \key_4|state~17_combout\ : std_logic;
SIGNAL \key_4|state.s2~regout\ : std_logic;
SIGNAL \key_4|Selector0~1_combout\ : std_logic;
SIGNAL \key_4|Selector0~2_combout\ : std_logic;
SIGNAL \key_4|key_out~regout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[2]~40_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[2]~9\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[3]~10_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[24]~81\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[25]~82_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[25]~83\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[26]~84_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[3]~11\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[4]~12_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[3]~42\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[4]~44\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[5]~45_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[4]~13\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[5]~14_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[26]~85\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[27]~86_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[27]~87\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[28]~88_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[5]~15\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[6]~16_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[5]~46\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[6]~48\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[7]~49_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[6]~17\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[7]~18_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[7]~50\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[8]~51_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[7]~19\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[8]~20_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[28]~89\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[29]~90_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[29]~91\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[30]~92_combout\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[30]~93\ : std_logic;
SIGNAL \DDS_1|u2|data_32out[31]~94_combout\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[8]~52\ : std_logic;
SIGNAL \key_coding_1|p_control_temp[9]~53_combout\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[8]~21\ : std_logic;
SIGNAL \DDS_1|u4|data_10out[9]~22_combout\ : std_logic;
SIGNAL \set_waveform_key_in~combout\ : std_logic;
SIGNAL \key_1|state.s0~1_combout\ : std_logic;
SIGNAL \key_1|state.s0~regout\ : std_logic;
SIGNAL \key_1|state~16_combout\ : std_logic;
SIGNAL \key_1|state.s1~regout\ : std_logic;
SIGNAL \key_1|Selector1~0_combout\ : std_logic;
SIGNAL \key_1|state.s3~regout\ : std_logic;
SIGNAL \key_1|Selector0~1_combout\ : std_logic;
SIGNAL \key_1|Selector0~2_combout\ : std_logic;
SIGNAL \key_1|key_out~regout\ : std_logic;
SIGNAL \key_coding_1|Add0~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux0~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux0~1_combout\ : std_logic;
SIGNAL \DDS_1|Mux2~0_combout\ : std_logic;
SIGNAL \key_coding_1|Add0~1_combout\ : std_logic;
SIGNAL \DDS_1|Mux2~1_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ : std_logic;
SIGNAL \DDS_1|Mux1~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux1~1_combout\ : std_logic;
SIGNAL \DDS_1|Mux3~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux3~1_combout\ : std_logic;
SIGNAL \DDS_1|Mux6~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux6~1_combout\ : std_logic;
SIGNAL \DDS_1|Mux5~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux5~1_combout\ : std_logic;
SIGNAL \DDS_1|Mux4~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux4~1_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~34\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~36\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~38\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~40\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~42\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~44\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~46\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~48\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~50\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~52\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~54\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~55_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~53_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~51_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~47_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~45_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~43_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~41_combout\ : std_logic;
SIGNAL \DDS_1|Mux8~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux8~1_combout\ : std_logic;
SIGNAL \DDS_1|Mux9~0_combout\ : std_logic;
SIGNAL \DDS_1|Mux9~1_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_1~33_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~40_cout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~42\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~44\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~46\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~48\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~50\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~52\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~54\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~56\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~58\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~60\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~62\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~64\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~65_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~63_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~61_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~59_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~104_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~101_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~96_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~57_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~94_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~55_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~89_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~236_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~53_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~74_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~51_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~239_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~49_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[4]~6_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[6]~8_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[5]~7_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT2[0]~7_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT2[1]~5_combout\ : std_logic;
SIGNAL \TLC5615_1|Mux0~0_combout\ : std_logic;
SIGNAL \TLC5615_1|Mux0~1_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT2[2]~6_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT2[3]~4_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~1_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[9]~3_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~2_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~47_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~46_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~241_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~45_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~39_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~43_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~24_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~242_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~16_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~253_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~18_combout\ : std_logic;
SIGNAL \DDS_1|Mult0|auto_generated|op_3~41_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~19_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[0]~4_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN_REG[8]~5_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~3_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~4_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~5_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~6_combout\ : std_logic;
SIGNAL \TLC5615_1|DIN~regout\ : std_logic;
SIGNAL \TLC5615_1|COUNT1[0]~12_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT1~10_combout\ : std_logic;
SIGNAL \TLC5615_1|Add1~0_combout\ : std_logic;
SIGNAL \TLC5615_1|COUNT1~9_combout\ : std_logic;
SIGNAL \TLC5615_1|CS_REG~2_combout\ : std_logic;
SIGNAL \TLC5615_1|CS_REG~regout\ : std_logic;
SIGNAL \key_coding_1|a_control_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_coding_1|f_control_temp\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \key_coding_1|p_control_temp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \key_coding_1|set_waveform_temp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \TLC5615_1|COUNT1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TLC5615_1|COUNT2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TLC5615_1|COUNT3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TLC5615_1|DIN_REG\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u7|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u6|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u4|data_10out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DDS_1|u2|data_32out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DDS_1|Mult0|auto_generated|le3a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DDS_1|Mult0|auto_generated|le4a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DDS_1|Mult0|auto_generated|le5a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \key_2|ALT_INV_key_out~clkctrl_outclk\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \TLC5615_1|ALT_INV_SCLK_REG~clkctrl_outclk\ : std_logic;
SIGNAL \key_4|ALT_INV_key_out~clkctrl_outclk\ : std_logic;
SIGNAL \key_1|ALT_INV_key_out~clkctrl_outclk\ : std_logic;
SIGNAL \key_3|ALT_INV_key_out~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
sclk <= ww_sclk;
din <= ww_din;
cs <= ww_cs;
ww_set_waveform_key_in <= set_waveform_key_in;
ww_set_f_key_in <= set_f_key_in;
ww_set_a_key_in <= set_a_key_in;
ww_set_p_key_in <= set_p_key_in;
sin_data <= ww_sin_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u5|altsyncram_component|auto_generated|q_a\(8) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\DDS_1|u5|altsyncram_component|auto_generated|q_a\(9) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(9) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(9) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u5|altsyncram_component|auto_generated|q_a\(7) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(8) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(7) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(2);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(8) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(3);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u5|altsyncram_component|auto_generated|q_a\(6) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(6) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(7) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(6) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u5|altsyncram_component|auto_generated|q_a\(4) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\DDS_1|u5|altsyncram_component|auto_generated|q_a\(5) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(5) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(5) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u5|altsyncram_component|auto_generated|q_a\(3) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(4) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(3) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(4) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u5|altsyncram_component|auto_generated|q_a\(2) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(2) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(3) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(2) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u5|altsyncram_component|auto_generated|q_a\(0) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DDS_1|u5|altsyncram_component|auto_generated|q_a\(1) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\DDS_1|u7|altsyncram_component|auto_generated|q_a\(1) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(1) <= \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DDS_1|u4|data_10out\(9) & \DDS_1|u4|data_10out\(8) & \DDS_1|u4|data_10out\(7) & \DDS_1|u4|data_10out\(6) & \DDS_1|u4|data_10out\(5) & \DDS_1|u4|data_10out\(4) & 
\DDS_1|u4|data_10out\(3) & \DDS_1|u4|data_10out\(2) & \DDS_1|u4|data_10out\(1) & \DDS_1|u4|data_10out\(0));

\DDS_1|u7|altsyncram_component|auto_generated|q_a\(0) <= \DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DDS_1|u6|altsyncram_component|auto_generated|q_a\(0) <= \DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\TLC5615_1|SCLK_REG~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \TLC5615_1|SCLK_REG~regout\);

\key_4|key_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_4|key_out~regout\);

\key_2|key_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_2|key_out~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\key_1|key_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_1|key_out~regout\);

\key_3|key_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_3|key_out~regout\);
\key_2|ALT_INV_key_out~clkctrl_outclk\ <= NOT \key_2|key_out~clkctrl_outclk\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_10_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_12_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\;
\DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\ <= NOT \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\TLC5615_1|ALT_INV_SCLK_REG~clkctrl_outclk\ <= NOT \TLC5615_1|SCLK_REG~clkctrl_outclk\;
\key_4|ALT_INV_key_out~clkctrl_outclk\ <= NOT \key_4|key_out~clkctrl_outclk\;
\key_1|ALT_INV_key_out~clkctrl_outclk\ <= NOT \key_1|key_out~clkctrl_outclk\;
\key_3|ALT_INV_key_out~clkctrl_outclk\ <= NOT \key_3|key_out~clkctrl_outclk\;

\DDS_1|Mult0|auto_generated|op_1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~35_combout\ = \DDS_1|Mult0|auto_generated|le3a\(3) & !\DDS_1|Mult0|auto_generated|op_1~34\ # !\DDS_1|Mult0|auto_generated|le3a\(3) & (\DDS_1|Mult0|auto_generated|op_1~34\ # GND)
-- \DDS_1|Mult0|auto_generated|op_1~36\ = CARRY(!\DDS_1|Mult0|auto_generated|op_1~34\ # !\DDS_1|Mult0|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~34\,
	combout => \DDS_1|Mult0|auto_generated|op_1~35_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~36\);

\DDS_1|Mult0|auto_generated|op_1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~37_combout\ = (\DDS_1|Mult0|auto_generated|le4a\(2) $ \DDS_1|Mult0|auto_generated|le3a\(4) $ !\DDS_1|Mult0|auto_generated|op_1~36\) # GND
-- \DDS_1|Mult0|auto_generated|op_1~38\ = CARRY(\DDS_1|Mult0|auto_generated|le4a\(2) & (\DDS_1|Mult0|auto_generated|le3a\(4) # !\DDS_1|Mult0|auto_generated|op_1~36\) # !\DDS_1|Mult0|auto_generated|le4a\(2) & \DDS_1|Mult0|auto_generated|le3a\(4) & 
-- !\DDS_1|Mult0|auto_generated|op_1~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(2),
	datab => \DDS_1|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~36\,
	combout => \DDS_1|Mult0|auto_generated|op_1~37_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~38\);

\DDS_1|Mult0|auto_generated|op_1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~39_combout\ = \DDS_1|Mult0|auto_generated|le4a\(3) & (\DDS_1|Mult0|auto_generated|le3a\(5) & \DDS_1|Mult0|auto_generated|op_1~38\ & VCC # !\DDS_1|Mult0|auto_generated|le3a\(5) & !\DDS_1|Mult0|auto_generated|op_1~38\) # 
-- !\DDS_1|Mult0|auto_generated|le4a\(3) & (\DDS_1|Mult0|auto_generated|le3a\(5) & !\DDS_1|Mult0|auto_generated|op_1~38\ # !\DDS_1|Mult0|auto_generated|le3a\(5) & (\DDS_1|Mult0|auto_generated|op_1~38\ # GND))
-- \DDS_1|Mult0|auto_generated|op_1~40\ = CARRY(\DDS_1|Mult0|auto_generated|le4a\(3) & !\DDS_1|Mult0|auto_generated|le3a\(5) & !\DDS_1|Mult0|auto_generated|op_1~38\ # !\DDS_1|Mult0|auto_generated|le4a\(3) & (!\DDS_1|Mult0|auto_generated|op_1~38\ # 
-- !\DDS_1|Mult0|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(3),
	datab => \DDS_1|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~38\,
	combout => \DDS_1|Mult0|auto_generated|op_1~39_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~40\);

\DDS_1|Mult0|auto_generated|op_1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~49_combout\ = (\DDS_1|Mult0|auto_generated|le3a\(10) $ \DDS_1|Mult0|auto_generated|le4a\(8) $ !\DDS_1|Mult0|auto_generated|op_1~48\) # GND
-- \DDS_1|Mult0|auto_generated|op_1~50\ = CARRY(\DDS_1|Mult0|auto_generated|le3a\(10) & (\DDS_1|Mult0|auto_generated|le4a\(8) # !\DDS_1|Mult0|auto_generated|op_1~48\) # !\DDS_1|Mult0|auto_generated|le3a\(10) & \DDS_1|Mult0|auto_generated|le4a\(8) & 
-- !\DDS_1|Mult0|auto_generated|op_1~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le3a\(10),
	datab => \DDS_1|Mult0|auto_generated|le4a\(8),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~48\,
	combout => \DDS_1|Mult0|auto_generated|op_1~49_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~50\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = \DDS_1|Mult0|auto_generated|op_3~63_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC # !\DDS_1|Mult0|auto_generated|op_3~63_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY(!\DDS_1|Mult0|auto_generated|op_3~63_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|op_3~63_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = \DDS_1|Mult0|auto_generated|op_3~65_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ GND) # !\DDS_1|Mult0|auto_generated|op_3~65_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY(\DDS_1|Mult0|auto_generated|op_3~65_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|op_3~65_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~54_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~54_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~54_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"555555555555555555555555555555555555555555555555555555555555555555555555555555555555544444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333322222222222222222222222222222222222222222222222222222222222222222222222222222222222222",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|sin:u5|altsyncram:altsyncram_component|altsyncram_hk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"3333333333333333333333333333333333333333322222222222222222222226666666666666666666666777777777777777777777777777777777777777777BBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE222222222222222222222222222222222222222222222222222222222222222226666666666666666666666666666666666666666666666666666677777777777BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDD9999999999999999999999888888888888888888888888888888888888888888444444444445555555555555555555555555555555555555555555555555555511111111111111111111111111111111111111111111111111111111111111111DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD999999999999999999999999999999999999999999999999999998888888888844444444444444444444444444444444444444444455555555555555555555551111111111111111111111000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|sin:u5|altsyncram:altsyncram_component|altsyncram_hk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"7777777777777777777766666666666EEEEEEEEEEFFFFFFFFFFFFFFFFFFFFFE66666666666666666666667777777777FFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEE66666666666777777777777777777777FFFFFFFFFFFFFFEEEEEEEEEEEEEEEEEE66666666666666666666666666666666EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE666666666666666666666666666666666EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE66666666666666666677777777777777FFFFFFFFFFFFFFFFFFFFFEEEEEEEEEEE66666666666666666777777777777777FFFFFFFFFFEEEEEEEEEEEEEEEEEEEEEE67777777777777777777776666666666EEEEEEEEEEEFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"88888888888888888888999999999991111111111000000000000000000000199999999999999999999998888888888000000000000000111111111111111119999999999988888888888888888888800000000000000111111111111111111999999999999999999999999999999991111111111111111111111111111111119999999999999999999999999999999911111111111111111111111111111111999999999999999999888888888888880000000000000000000001111111111199999999999999999888888888888888000000000011111111111111111111119888888888888888888888999999999911111111111000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|sin:u5|altsyncram:altsyncram_component|altsyncram_hk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"777776666655555CCCCCFFFFFEEEEED5555444444777776EEEEDDDDDDCCCCCF7777766666555555CCCCCCFFFFFFEEEE6655555544444447FFFFFEEEEEEEDDDD5554444444477777FFFEEEEEEEEDDDDD5555444444444477FFFFFFFFFFEEEEEE6666666555555555DDDDDDDDCCCCCCCC4444444444444444CCCCCCCCCCCCCCCC44444444444444444CCCCCCCCCCCCCCCC4444444455555555DDDDDDDDDEEEEEEE6666667777777777FFCCCCCCCCCCDDDD5555566666666777FFFFFCCCCCCCCDDD5555666666677777FCCCCCCCDDDDDDEE6666777777444444DDDDDDEEEEEFFFFF7444445555556666EFFFFFCCCCCCDDDD5666667777744444DDDDDEEEEEFFFFFF",
	mem_init0 => X"8888899999AAAAA3333300000111112AAAABBBBBB88888911112222223333308888899999AAAAAA333333000000111199AAAAAABBBBBBB80000011111112222AAABBBBBBBB888880001111111122222AAAABBBBBBBBBB8800000000001111119999999AAAAAAAAA2222222233333333BBBBBBBBBBBBBBBB33333333333333333BBBBBBBBBBBBBBBB3333333333333333BBBBBBBBAAAAAAAA222222222111111199999988888888880033333333332222AAAAA999999998880000033333333222AAAA99999998888803333333222222119999888888BBBBBB22222211111000008BBBBBAAAAAA99991000003333332222A9999988888BBBBB2222211111000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|sin:u5|altsyncram:altsyncram_component|altsyncram_hk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"3326677AAABFEEE33226777AABBFEEF33227776AABBEEEF33227776AABBEEEF33226777AABBFEEE33326677BAAAFFFE22337666BBBAEEEF33226777BAAAFFFF22237776AAABFFFE22237776AAABFFFF22227777BAAAEEFF33336666AABBFFFF22226667BBBBFFFE22226666BBBBFFFF33337666AAAAEEEE22226666AAAAEEEE222226666AAAAEEEE22226666AAABFFFF33337777AAAAEEEE23337777BAAAEEEE33337766AAAAFFFF33226667BBBBEEEE33337666ABBBFEEE23337666ABBBFEEE33336667BBBAEEFF32226777AAABFFEE23336667BBAAEFFF22237766BBBAEEFF32227766ABBBEEFF32227766ABBBEEFF32237766BBBAEEFF22237666BBAAEFFF",
	mem_init0 => X"CCD998855540111CCDD988855440110CCDD888955441110CCDD888955441110CCDD988855440111CCCD998845550001DDCC899944451110CCDD988845550000DDDC888955540001DDDC888955540000DDDD888845551100CCCC999955440000DDDD999844440001DDDD999944440000CCCC899955551111DDDD9999555511111DDDD999955551111DDDD999955540000CCCC888855551111DCCC888845551111CCCC889955550000CCDD999844441111CCCC899954440111DCCC899954440111CCCC999844451100CDDD988855540011DCCC999844551000DDDC889944451100CDDD889954441100CDDD889954441100CDDC889944451100DDDC899944551000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|sin:u5|altsyncram:altsyncram_component|altsyncram_hk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"7EF66FE76EF67FE76FF67EE76FE67EF76FE77EF66FE77EF66FE77EF66FE77EF76FE67EE76FF67FE77EF66FE67EE76EF66FF67FE77EF76EF66FF67FE67EE77EE77EF76EF76EF76EF76EF76EF76EF77EE77EE77FE67FF66FF76EE77FE66FF76EE77FE66EF77FE66EF77FE66EE77FF77EE66EE67FF77FF76EE66EE66EE66EE66EE666EE66EE66EE66EE66EF77FF77FE66EE66FF77FF66EE67FF76EE67FF76EE67FF66EF77EE67FF66EF77EE77FE67FF66FF66FF76EF76EF76EF76EF76EF76EF76FF66FF66FE67FE77EE76EF76FF67FE77EE76EF66FE67EE76FF67FE77EF66FE67EF76FF67EE76FF67EE76FF67EE76FF67EF76FE67EF66FE77EF67FE76EF67EE76FF",
	mem_init0 => X"81099018910980189009811890198108901881099018810990188109901881089019811890098018810990198118910990098018810891099009801981188118810891089108910891089108910881188118801980099008911880199008911880199108801991088019911880088119911980088008911991199119911991119911991199119911991088008801991199008800991198008911980089119800991088119800991088118801980099009900891089108910891089108910890099009901980188118910890098018811891099019811890098018810990198108900981189009811890098118900981089019810990188109801891098118900",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|sin:u5|altsyncram:altsyncram_component|altsyncram_hk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"C5E7C5E6F4D6F4C5E7C5E7C4D6F4D6F4D6E7C5E7C5E7C5E7C5E7C5E7C5E7C6F4D6F4D6C5E7C6F4D6C5E7D6F5E7D6F5E7D6C5E4D7C6F5E4D7D6C5F5E4E7D7D6C6C5F5F5F5E4E4E4E4E4E4E4F5F5F5C6C6C7D7E4E5F6C6D7E4F5C7D4E5C6D4F5C7E5F6D4F6D4F6D4F6D4F7E5C7F6D4C7E6D5C4F6E6D5C4F7F6E6E5D5D5C4C4C4C44C4C4C4D5D5D6E6E7F7C4D5E6E7C4D5E6F4C5E7F4D6F7C5E7C5E7C5E7C5E7D6F4D7C5E4D6C5F4D7C6F5E4E7D6C6F5F4E4E4D7D7D7C6C6C6C6C6C6C6D7D7D7D4E4E5F5F6C6D7D4E5F5C6D7E4F5C6D4E5F6D7E5F6D7E5F6D4E5C7E4F6D4E5C7E5C7E4F6D4F6D4F6D4F6D4F6D4F6D4F6E5C7E5C7E5C4F6D4F6D4C7E5C7E6D4F6D4F",
	mem_init0 => X"3A183A190B290B3A183A183B290B290B29183A183A183A183A183A183A18390B290B293A18390B293A18290A18290A18293A1B28390A1B28293A0A1B182829393A0A0A0A1B1B1B1B1B1B1B0A0A0A393938281B1A0939281B0A382B1A392B0A381A092B092B092B092B081A38092B38192A3B09192A3B0809191A2A2A3B3B3B33B3B3B3B2A2A291918083B2A19183B2A190B3A180B29083A183A183A183A18290B283A1B293A0B28390A1B1829390A0B1B1B282828393939393939392828282B1B1A0A0939282B1A0A39281B0A392B1A09281A09281A092B1A381B092B1A381A381B092B092B092B092B092B092B091A381A381A3B092B092B381A38192B092B0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|sin:u5|altsyncram:altsyncram_component|altsyncram_hk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u5|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\key_coding_1|p_control_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[2]~38_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(2));

\key_coding_1|p_control_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[4]~43_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(4));

\key_coding_1|p_control_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[6]~47_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(6));

\DDS_1|u2|data_32out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(21));

\DDS_1|u2|data_32out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(20));

\DDS_1|u2|data_32out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(19));

\key_coding_1|f_control_temp[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[18]~120_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(18));

\DDS_1|u2|data_32out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(17));

\key_coding_1|f_control_temp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[16]~116_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(16));

\key_coding_1|f_control_temp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[15]~114_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(15));

\DDS_1|u2|data_32out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(10));

\key_coding_1|f_control_temp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[9]~102_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(9));

\DDS_1|u2|data_32out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(8));

\DDS_1|u2|data_32out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(6));

\DDS_1|u2|data_32out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(5));

\key_coding_1|f_control_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[4]~92_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(4));

\DDS_1|u2|data_32out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(3));

\DDS_1|u2|data_32out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(1));

\DDS_1|u2|data_32out[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[1]~34_combout\ = \DDS_1|u2|data_32out\(1) & (\key_coding_1|f_control_temp\(1) & \DDS_1|u2|data_32out[0]~33\ & VCC # !\key_coding_1|f_control_temp\(1) & !\DDS_1|u2|data_32out[0]~33\) # !\DDS_1|u2|data_32out\(1) & 
-- (\key_coding_1|f_control_temp\(1) & !\DDS_1|u2|data_32out[0]~33\ # !\key_coding_1|f_control_temp\(1) & (\DDS_1|u2|data_32out[0]~33\ # GND))
-- \DDS_1|u2|data_32out[1]~35\ = CARRY(\DDS_1|u2|data_32out\(1) & !\key_coding_1|f_control_temp\(1) & !\DDS_1|u2|data_32out[0]~33\ # !\DDS_1|u2|data_32out\(1) & (!\DDS_1|u2|data_32out[0]~33\ # !\key_coding_1|f_control_temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(1),
	datab => \key_coding_1|f_control_temp\(1),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[0]~33\,
	combout => \DDS_1|u2|data_32out[1]~34_combout\,
	cout => \DDS_1|u2|data_32out[1]~35\);

\DDS_1|u2|data_32out[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[3]~38_combout\ = \DDS_1|u2|data_32out\(3) & (\key_coding_1|f_control_temp\(3) & \DDS_1|u2|data_32out[2]~37\ & VCC # !\key_coding_1|f_control_temp\(3) & !\DDS_1|u2|data_32out[2]~37\) # !\DDS_1|u2|data_32out\(3) & 
-- (\key_coding_1|f_control_temp\(3) & !\DDS_1|u2|data_32out[2]~37\ # !\key_coding_1|f_control_temp\(3) & (\DDS_1|u2|data_32out[2]~37\ # GND))
-- \DDS_1|u2|data_32out[3]~39\ = CARRY(\DDS_1|u2|data_32out\(3) & !\key_coding_1|f_control_temp\(3) & !\DDS_1|u2|data_32out[2]~37\ # !\DDS_1|u2|data_32out\(3) & (!\DDS_1|u2|data_32out[2]~37\ # !\key_coding_1|f_control_temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(3),
	datab => \key_coding_1|f_control_temp\(3),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[2]~37\,
	combout => \DDS_1|u2|data_32out[3]~38_combout\,
	cout => \DDS_1|u2|data_32out[3]~39\);

\DDS_1|u2|data_32out[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[5]~42_combout\ = \DDS_1|u2|data_32out\(5) & (\key_coding_1|f_control_temp\(5) & \DDS_1|u2|data_32out[4]~41\ & VCC # !\key_coding_1|f_control_temp\(5) & !\DDS_1|u2|data_32out[4]~41\) # !\DDS_1|u2|data_32out\(5) & 
-- (\key_coding_1|f_control_temp\(5) & !\DDS_1|u2|data_32out[4]~41\ # !\key_coding_1|f_control_temp\(5) & (\DDS_1|u2|data_32out[4]~41\ # GND))
-- \DDS_1|u2|data_32out[5]~43\ = CARRY(\DDS_1|u2|data_32out\(5) & !\key_coding_1|f_control_temp\(5) & !\DDS_1|u2|data_32out[4]~41\ # !\DDS_1|u2|data_32out\(5) & (!\DDS_1|u2|data_32out[4]~41\ # !\key_coding_1|f_control_temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(5),
	datab => \key_coding_1|f_control_temp\(5),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[4]~41\,
	combout => \DDS_1|u2|data_32out[5]~42_combout\,
	cout => \DDS_1|u2|data_32out[5]~43\);

\DDS_1|u2|data_32out[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[6]~44_combout\ = (\DDS_1|u2|data_32out\(6) $ \key_coding_1|f_control_temp\(6) $ !\DDS_1|u2|data_32out[5]~43\) # GND
-- \DDS_1|u2|data_32out[6]~45\ = CARRY(\DDS_1|u2|data_32out\(6) & (\key_coding_1|f_control_temp\(6) # !\DDS_1|u2|data_32out[5]~43\) # !\DDS_1|u2|data_32out\(6) & \key_coding_1|f_control_temp\(6) & !\DDS_1|u2|data_32out[5]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(6),
	datab => \key_coding_1|f_control_temp\(6),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[5]~43\,
	combout => \DDS_1|u2|data_32out[6]~44_combout\,
	cout => \DDS_1|u2|data_32out[6]~45\);

\DDS_1|u2|data_32out[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[8]~48_combout\ = (\DDS_1|u2|data_32out\(8) $ \key_coding_1|f_control_temp\(8) $ !\DDS_1|u2|data_32out[7]~47\) # GND
-- \DDS_1|u2|data_32out[8]~49\ = CARRY(\DDS_1|u2|data_32out\(8) & (\key_coding_1|f_control_temp\(8) # !\DDS_1|u2|data_32out[7]~47\) # !\DDS_1|u2|data_32out\(8) & \key_coding_1|f_control_temp\(8) & !\DDS_1|u2|data_32out[7]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(8),
	datab => \key_coding_1|f_control_temp\(8),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[7]~47\,
	combout => \DDS_1|u2|data_32out[8]~48_combout\,
	cout => \DDS_1|u2|data_32out[8]~49\);

\DDS_1|u2|data_32out[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[10]~52_combout\ = (\DDS_1|u2|data_32out\(10) $ \key_coding_1|f_control_temp\(10) $ !\DDS_1|u2|data_32out[9]~51\) # GND
-- \DDS_1|u2|data_32out[10]~53\ = CARRY(\DDS_1|u2|data_32out\(10) & (\key_coding_1|f_control_temp\(10) # !\DDS_1|u2|data_32out[9]~51\) # !\DDS_1|u2|data_32out\(10) & \key_coding_1|f_control_temp\(10) & !\DDS_1|u2|data_32out[9]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(10),
	datab => \key_coding_1|f_control_temp\(10),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[9]~51\,
	combout => \DDS_1|u2|data_32out[10]~52_combout\,
	cout => \DDS_1|u2|data_32out[10]~53\);

\DDS_1|u2|data_32out[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[17]~66_combout\ = \DDS_1|u2|data_32out\(17) & (\key_coding_1|f_control_temp\(17) & \DDS_1|u2|data_32out[16]~65\ & VCC # !\key_coding_1|f_control_temp\(17) & !\DDS_1|u2|data_32out[16]~65\) # !\DDS_1|u2|data_32out\(17) & 
-- (\key_coding_1|f_control_temp\(17) & !\DDS_1|u2|data_32out[16]~65\ # !\key_coding_1|f_control_temp\(17) & (\DDS_1|u2|data_32out[16]~65\ # GND))
-- \DDS_1|u2|data_32out[17]~67\ = CARRY(\DDS_1|u2|data_32out\(17) & !\key_coding_1|f_control_temp\(17) & !\DDS_1|u2|data_32out[16]~65\ # !\DDS_1|u2|data_32out\(17) & (!\DDS_1|u2|data_32out[16]~65\ # !\key_coding_1|f_control_temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(17),
	datab => \key_coding_1|f_control_temp\(17),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[16]~65\,
	combout => \DDS_1|u2|data_32out[17]~66_combout\,
	cout => \DDS_1|u2|data_32out[17]~67\);

\DDS_1|u2|data_32out[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[19]~70_combout\ = \DDS_1|u2|data_32out\(19) & (\key_coding_1|f_control_temp\(19) & \DDS_1|u2|data_32out[18]~69\ & VCC # !\key_coding_1|f_control_temp\(19) & !\DDS_1|u2|data_32out[18]~69\) # !\DDS_1|u2|data_32out\(19) & 
-- (\key_coding_1|f_control_temp\(19) & !\DDS_1|u2|data_32out[18]~69\ # !\key_coding_1|f_control_temp\(19) & (\DDS_1|u2|data_32out[18]~69\ # GND))
-- \DDS_1|u2|data_32out[19]~71\ = CARRY(\DDS_1|u2|data_32out\(19) & !\key_coding_1|f_control_temp\(19) & !\DDS_1|u2|data_32out[18]~69\ # !\DDS_1|u2|data_32out\(19) & (!\DDS_1|u2|data_32out[18]~69\ # !\key_coding_1|f_control_temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(19),
	datab => \key_coding_1|f_control_temp\(19),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[18]~69\,
	combout => \DDS_1|u2|data_32out[19]~70_combout\,
	cout => \DDS_1|u2|data_32out[19]~71\);

\DDS_1|u2|data_32out[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[20]~72_combout\ = (\DDS_1|u2|data_32out\(20) $ \key_coding_1|f_control_temp\(20) $ !\DDS_1|u2|data_32out[19]~71\) # GND
-- \DDS_1|u2|data_32out[20]~73\ = CARRY(\DDS_1|u2|data_32out\(20) & (\key_coding_1|f_control_temp\(20) # !\DDS_1|u2|data_32out[19]~71\) # !\DDS_1|u2|data_32out\(20) & \key_coding_1|f_control_temp\(20) & !\DDS_1|u2|data_32out[19]~71\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(20),
	datab => \key_coding_1|f_control_temp\(20),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[19]~71\,
	combout => \DDS_1|u2|data_32out[20]~72_combout\,
	cout => \DDS_1|u2|data_32out[20]~73\);

\DDS_1|u2|data_32out[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[21]~74_combout\ = \DDS_1|u2|data_32out\(21) & !\DDS_1|u2|data_32out[20]~73\ # !\DDS_1|u2|data_32out\(21) & (\DDS_1|u2|data_32out[20]~73\ # GND)
-- \DDS_1|u2|data_32out[21]~75\ = CARRY(!\DDS_1|u2|data_32out[20]~73\ # !\DDS_1|u2|data_32out\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(21),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[20]~73\,
	combout => \DDS_1|u2|data_32out[21]~74_combout\,
	cout => \DDS_1|u2|data_32out[21]~75\);

\key_coding_1|p_control_temp[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[2]~38_combout\ = \key_coding_1|p_control_temp\(2) $ VCC
-- \key_coding_1|p_control_temp[2]~39\ = CARRY(\key_coding_1|p_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|p_control_temp\(2),
	datad => VCC,
	combout => \key_coding_1|p_control_temp[2]~38_combout\,
	cout => \key_coding_1|p_control_temp[2]~39\);

\key_coding_1|p_control_temp[4]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[4]~43_combout\ = \key_coding_1|p_control_temp\(4) & (\key_coding_1|p_control_temp[3]~42\ $ GND) # !\key_coding_1|p_control_temp\(4) & !\key_coding_1|p_control_temp[3]~42\ & VCC
-- \key_coding_1|p_control_temp[4]~44\ = CARRY(\key_coding_1|p_control_temp\(4) & !\key_coding_1|p_control_temp[3]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|p_control_temp\(4),
	datad => VCC,
	cin => \key_coding_1|p_control_temp[3]~42\,
	combout => \key_coding_1|p_control_temp[4]~43_combout\,
	cout => \key_coding_1|p_control_temp[4]~44\);

\key_coding_1|p_control_temp[6]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[6]~47_combout\ = \key_coding_1|p_control_temp\(6) & (GND # !\key_coding_1|p_control_temp[5]~46\) # !\key_coding_1|p_control_temp\(6) & (\key_coding_1|p_control_temp[5]~46\ $ GND)
-- \key_coding_1|p_control_temp[6]~48\ = CARRY(\key_coding_1|p_control_temp\(6) # !\key_coding_1|p_control_temp[5]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|p_control_temp\(6),
	datad => VCC,
	cin => \key_coding_1|p_control_temp[5]~46\,
	combout => \key_coding_1|p_control_temp[6]~47_combout\,
	cout => \key_coding_1|p_control_temp[6]~48\);

\key_coding_1|f_control_temp[4]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[4]~92_combout\ = \key_coding_1|f_control_temp\(4) & (\key_coding_1|f_control_temp[3]~91\ $ GND) # !\key_coding_1|f_control_temp\(4) & !\key_coding_1|f_control_temp[3]~91\ & VCC
-- \key_coding_1|f_control_temp[4]~93\ = CARRY(\key_coding_1|f_control_temp\(4) & !\key_coding_1|f_control_temp[3]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(4),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[3]~91\,
	combout => \key_coding_1|f_control_temp[4]~92_combout\,
	cout => \key_coding_1|f_control_temp[4]~93\);

\key_coding_1|f_control_temp[9]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[9]~102_combout\ = \key_coding_1|f_control_temp\(9) & !\key_coding_1|f_control_temp[8]~101\ # !\key_coding_1|f_control_temp\(9) & (\key_coding_1|f_control_temp[8]~101\ # GND)
-- \key_coding_1|f_control_temp[9]~103\ = CARRY(!\key_coding_1|f_control_temp[8]~101\ # !\key_coding_1|f_control_temp\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(9),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[8]~101\,
	combout => \key_coding_1|f_control_temp[9]~102_combout\,
	cout => \key_coding_1|f_control_temp[9]~103\);

\key_coding_1|f_control_temp[15]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[15]~114_combout\ = \key_coding_1|f_control_temp\(15) & !\key_coding_1|f_control_temp[14]~113\ # !\key_coding_1|f_control_temp\(15) & (\key_coding_1|f_control_temp[14]~113\ # GND)
-- \key_coding_1|f_control_temp[15]~115\ = CARRY(!\key_coding_1|f_control_temp[14]~113\ # !\key_coding_1|f_control_temp\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(15),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[14]~113\,
	combout => \key_coding_1|f_control_temp[15]~114_combout\,
	cout => \key_coding_1|f_control_temp[15]~115\);

\key_coding_1|f_control_temp[16]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[16]~116_combout\ = \key_coding_1|f_control_temp\(16) & (\key_coding_1|f_control_temp[15]~115\ $ GND) # !\key_coding_1|f_control_temp\(16) & !\key_coding_1|f_control_temp[15]~115\ & VCC
-- \key_coding_1|f_control_temp[16]~117\ = CARRY(\key_coding_1|f_control_temp\(16) & !\key_coding_1|f_control_temp[15]~115\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(16),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[15]~115\,
	combout => \key_coding_1|f_control_temp[16]~116_combout\,
	cout => \key_coding_1|f_control_temp[16]~117\);

\key_coding_1|f_control_temp[18]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[18]~120_combout\ = \key_coding_1|f_control_temp\(18) & (\key_coding_1|f_control_temp[17]~119\ $ GND) # !\key_coding_1|f_control_temp\(18) & !\key_coding_1|f_control_temp[17]~119\ & VCC
-- \key_coding_1|f_control_temp[18]~121\ = CARRY(\key_coding_1|f_control_temp\(18) & !\key_coding_1|f_control_temp[17]~119\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(18),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[17]~119\,
	combout => \key_coding_1|f_control_temp[18]~120_combout\,
	cout => \key_coding_1|f_control_temp[18]~121\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~106_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~106_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103_combout\ = \DDS_1|Mult0|auto_generated|op_3~61_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|op_3~61_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~109_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Mult0|auto_generated|op_3~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \DDS_1|Mult0|auto_generated|op_3~59_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~109_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~97_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93_combout\ = \DDS_1|Mult0|auto_generated|op_3~59_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_3~59_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~93_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~99_combout\ = \DDS_1|Mult0|auto_generated|op_3~57_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~57_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~99_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~86_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~86_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ = \DDS_1|Mult0|auto_generated|op_3~57_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~57_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \DDS_1|Mult0|auto_generated|op_3~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \DDS_1|Mult0|auto_generated|op_3~55_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~79_combout\ = \DDS_1|Mult0|auto_generated|op_3~53_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~53_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~79_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~67_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\ = \DDS_1|Mult0|auto_generated|op_3~51_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~51_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~64_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~56_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~56_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~54_combout\ = \DDS_1|Mult0|auto_generated|op_3~49_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~49_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~54_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~49_combout\ = \DDS_1|Mult0|auto_generated|op_3~47_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|op_3~47_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~49_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~36_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~36_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33_combout\ = \DDS_1|Mult0|auto_generated|op_3~47_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~47_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~33_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~34_combout\ = \DDS_1|Mult0|auto_generated|op_3~45_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~45_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~34_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~26_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~26_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~29_combout\ = \DDS_1|Mult0|auto_generated|op_3~43_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~43_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~29_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~17_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~17_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~13_combout\ = \DDS_1|Mult0|auto_generated|op_3~43_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~43_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~13_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~14_combout\ = \DDS_1|Mult0|auto_generated|op_3~41_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~41_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~14_combout\);

\TLC5615_1|COUNT3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT3\(1));

\TLC5615_1|DIN_REG[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(1));

\TLC5615_1|DIN_REG[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(2));

\TLC5615_1|DIN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN~0_combout\ = \TLC5615_1|COUNT2\(0) & \TLC5615_1|DIN_REG\(1) # !\TLC5615_1|COUNT2\(0) & (\TLC5615_1|DIN_REG\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TLC5615_1|DIN_REG\(1),
	datac => \TLC5615_1|DIN_REG\(2),
	datad => \TLC5615_1|COUNT2\(0),
	combout => \TLC5615_1|DIN~0_combout\);

\TLC5615_1|DIN_REG[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(7));

\TLC5615_1|DIN_REG[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(3));

\TLC5615_1|COUNT1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|ALT_INV_SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT1\(3));

\DDS_1|Mult0|auto_generated|le5a[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(8) = \DDS_1|Mux1~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(2) & \key_coding_1|a_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(2),
	datab => \key_coding_1|a_control_temp\(3),
	datac => \key_coding_1|a_control_temp\(1),
	datad => \DDS_1|Mux1~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le5a\(8));

\DDS_1|Mult0|auto_generated|le4a[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(9) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ \DDS_1|Mux0~1_combout\) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- (!\DDS_1|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(11),
	datab => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datac => \DDS_1|Mux0~1_combout\,
	datad => \DDS_1|Mux1~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(9));

\DDS_1|Mult0|auto_generated|le3a[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(10) = \key_coding_1|a_control_temp\(1) & (\key_coding_1|a_control_temp\(0) # !\DDS_1|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|a_control_temp\(0),
	datac => \DDS_1|Mux0~1_combout\,
	datad => \key_coding_1|a_control_temp\(1),
	combout => \DDS_1|Mult0|auto_generated|le3a\(10));

\DDS_1|Mult0|auto_generated|le3a[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(9) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ \DDS_1|Mux0~1_combout\) # !\key_coding_1|a_control_temp\(0) & \key_coding_1|a_control_temp\(1) & (!\DDS_1|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(0),
	datab => \key_coding_1|a_control_temp\(1),
	datac => \DDS_1|Mux0~1_combout\,
	datad => \DDS_1|Mux1~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(9));

\DDS_1|Mult0|auto_generated|le4a[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(6) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ \DDS_1|Mux3~1_combout\) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- (!\DDS_1|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datab => \DDS_1|Mult0|auto_generated|le4a\(11),
	datac => \DDS_1|Mux3~1_combout\,
	datad => \DDS_1|Mux4~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(6));

\DDS_1|Mult0|auto_generated|le4a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(5) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ \DDS_1|Mux4~1_combout\) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- (!\DDS_1|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datab => \DDS_1|Mult0|auto_generated|le4a\(11),
	datac => \DDS_1|Mux4~1_combout\,
	datad => \DDS_1|Mux5~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(5));

\DDS_1|Mult0|auto_generated|le3a[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(6) = \key_coding_1|a_control_temp\(0) & (\DDS_1|Mux3~1_combout\ $ \key_coding_1|a_control_temp\(1)) # !\key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) & !\DDS_1|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mux3~1_combout\,
	datab => \key_coding_1|a_control_temp\(1),
	datac => \key_coding_1|a_control_temp\(0),
	datad => \DDS_1|Mux4~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(6));

\DDS_1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux7~0_combout\ = \key_coding_1|set_waveform_temp\(0) & (\DDS_1|u6|altsyncram_component|auto_generated|q_a\(2)) # !\key_coding_1|set_waveform_temp\(0) & \DDS_1|u7|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(2),
	datac => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(2),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux7~0_combout\);

\DDS_1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux7~1_combout\ = \key_coding_1|set_waveform_temp\(0) & (\key_coding_1|set_waveform_temp\(1) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(2) # !\key_coding_1|set_waveform_temp\(1) & (\DDS_1|Mux7~0_combout\)) # 
-- !\key_coding_1|set_waveform_temp\(0) & (\key_coding_1|set_waveform_temp\(1) & (\DDS_1|Mux7~0_combout\) # !\key_coding_1|set_waveform_temp\(1) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|set_waveform_temp\(0),
	datab => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(2),
	datac => \key_coding_1|set_waveform_temp\(1),
	datad => \DDS_1|Mux7~0_combout\,
	combout => \DDS_1|Mux7~1_combout\);

\DDS_1|Mult0|auto_generated|le4a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(3) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mux6~1_combout\ $ \DDS_1|Mult0|auto_generated|le4a\(11)) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) & 
-- !\DDS_1|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datab => \DDS_1|Mux6~1_combout\,
	datac => \DDS_1|Mult0|auto_generated|le4a\(11),
	datad => \DDS_1|Mux7~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(3));

\DDS_1|Mult0|auto_generated|le4a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(2) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ (\DDS_1|Mux7~1_combout\)) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- !\DDS_1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datab => \DDS_1|Mult0|auto_generated|le4a\(11),
	datac => \DDS_1|Mux8~1_combout\,
	datad => \DDS_1|Mux7~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(2));

\DDS_1|Mult0|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(2) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ \DDS_1|Mux7~1_combout\) # !\key_coding_1|a_control_temp\(0) & !\DDS_1|Mux8~1_combout\ & \key_coding_1|a_control_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mux8~1_combout\,
	datab => \key_coding_1|a_control_temp\(1),
	datac => \key_coding_1|a_control_temp\(0),
	datad => \DDS_1|Mux7~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(2));

\DDS_1|Mult0|auto_generated|le5a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(5) = \DDS_1|Mux4~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(2) & \key_coding_1|a_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(2),
	datab => \key_coding_1|a_control_temp\(3),
	datac => \DDS_1|Mux4~1_combout\,
	datad => \key_coding_1|a_control_temp\(1),
	combout => \DDS_1|Mult0|auto_generated|le5a\(5));

\DDS_1|Mult0|auto_generated|le5a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(4) = \DDS_1|Mux5~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(3),
	datab => \key_coding_1|a_control_temp\(1),
	datac => \DDS_1|Mux5~1_combout\,
	datad => \key_coding_1|a_control_temp\(2),
	combout => \DDS_1|Mult0|auto_generated|le5a\(4));

\DDS_1|Mult0|auto_generated|le5a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(3) = \DDS_1|Mux6~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(2) & \key_coding_1|a_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(2),
	datab => \DDS_1|Mux6~1_combout\,
	datac => \key_coding_1|a_control_temp\(1),
	datad => \key_coding_1|a_control_temp\(3),
	combout => \DDS_1|Mult0|auto_generated|le5a\(3));

\DDS_1|Mult0|auto_generated|le5a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(2) = \DDS_1|Mux7~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(2) & \key_coding_1|a_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(2),
	datab => \key_coding_1|a_control_temp\(3),
	datac => \DDS_1|Mux7~1_combout\,
	datad => \key_coding_1|a_control_temp\(1),
	combout => \DDS_1|Mult0|auto_generated|le5a\(2));

\TLC5615_1|COUNT3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT3~5_combout\ = \TLC5615_1|COUNT3\(1) & (!\TLC5615_1|COUNT3\(0)) # !\TLC5615_1|COUNT3\(1) & \TLC5615_1|COUNT3\(0) & (\TLC5615_1|COUNT3\(2) # !\TLC5615_1|COUNT3\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT3\(3),
	datab => \TLC5615_1|COUNT3\(2),
	datac => \TLC5615_1|COUNT3\(1),
	datad => \TLC5615_1|COUNT3\(0),
	combout => \TLC5615_1|COUNT3~5_combout\);

\TLC5615_1|COUNT1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT1~8_combout\ = \TLC5615_1|COUNT1\(3) $ (\TLC5615_1|COUNT1\(2) & \TLC5615_1|COUNT1\(1) & \TLC5615_1|COUNT1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT1\(2),
	datab => \TLC5615_1|COUNT1\(1),
	datac => \TLC5615_1|COUNT1\(3),
	datad => \TLC5615_1|COUNT1\(0),
	combout => \TLC5615_1|COUNT1~8_combout\);

\key_1|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_1|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_1|state.s2~regout\);

\key_1|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_1|state~17_combout\ = !\set_waveform_key_in~combout\ & \key_1|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_waveform_key_in~combout\,
	datad => \key_1|state.s1~regout\,
	combout => \key_1|state~17_combout\);

\key_coding_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Equal0~0_combout\ = \key_coding_1|f_control_temp\(20) # \key_coding_1|f_control_temp\(17) # \key_coding_1|f_control_temp\(18) # \key_coding_1|f_control_temp\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(20),
	datab => \key_coding_1|f_control_temp\(17),
	datac => \key_coding_1|f_control_temp\(18),
	datad => \key_coding_1|f_control_temp\(19),
	combout => \key_coding_1|Equal0~0_combout\);

\key_coding_1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Equal0~1_combout\ = !\key_coding_1|f_control_temp\(16) # !\key_coding_1|f_control_temp\(14) # !\key_coding_1|f_control_temp\(13) # !\key_coding_1|f_control_temp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(15),
	datab => \key_coding_1|f_control_temp\(13),
	datac => \key_coding_1|f_control_temp\(14),
	datad => \key_coding_1|f_control_temp\(16),
	combout => \key_coding_1|Equal0~1_combout\);

\key_coding_1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Equal0~2_combout\ = !\key_coding_1|f_control_temp\(10) # !\key_coding_1|f_control_temp\(11) # !\key_coding_1|f_control_temp\(12) # !\key_coding_1|f_control_temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(9),
	datab => \key_coding_1|f_control_temp\(12),
	datac => \key_coding_1|f_control_temp\(11),
	datad => \key_coding_1|f_control_temp\(10),
	combout => \key_coding_1|Equal0~2_combout\);

\key_coding_1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Equal0~3_combout\ = !\key_coding_1|f_control_temp\(7) # !\key_coding_1|f_control_temp\(6) # !\key_coding_1|f_control_temp\(8) # !\key_coding_1|f_control_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(5),
	datab => \key_coding_1|f_control_temp\(8),
	datac => \key_coding_1|f_control_temp\(6),
	datad => \key_coding_1|f_control_temp\(7),
	combout => \key_coding_1|Equal0~3_combout\);

\key_coding_1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Equal0~4_combout\ = \key_coding_1|Equal0~1_combout\ # \key_coding_1|Equal0~2_combout\ # \key_coding_1|Equal0~3_combout\ # \key_coding_1|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|Equal0~1_combout\,
	datab => \key_coding_1|Equal0~2_combout\,
	datac => \key_coding_1|Equal0~3_combout\,
	datad => \key_coding_1|Equal0~0_combout\,
	combout => \key_coding_1|Equal0~4_combout\);

\key_4|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_4|state.s3~regout\);

\key_2|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_2|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_2|state.s2~regout\);

\key_2|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_2|state.s3~regout\);

\key_4|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_4|Selector1~0_combout\ = !\set_p_key_in~combout\ & \key_4|state.s0~regout\ & !\key_4|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_p_key_in~combout\,
	datab => \key_4|state.s0~regout\,
	datad => \key_4|state.s1~regout\,
	combout => \key_4|Selector1~0_combout\);

\key_2|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_2|state~17_combout\ = !\set_f_key_in~combout\ & \key_2|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_f_key_in~combout\,
	datad => \key_2|state.s1~regout\,
	combout => \key_2|state~17_combout\);

\key_2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_2|Selector1~0_combout\ = !\key_2|state.s1~regout\ & !\set_f_key_in~combout\ & \key_2|state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_2|state.s1~regout\,
	datac => \set_f_key_in~combout\,
	datad => \key_2|state.s0~regout\,
	combout => \key_2|Selector1~0_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~237_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\ # 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~237_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~238_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\ # 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~238_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~240_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\ # 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~240_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~243_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\ # 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~243_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~244_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \DDS_1|Mult0|auto_generated|op_3~63_combout\ # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \DDS_1|Mult0|auto_generated|op_3~63_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~244_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\DDS_1|Mult0|auto_generated|op_3~57_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \DDS_1|Mult0|auto_generated|op_3~57_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\);

\DDS_1|Mult0|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(0) = \key_coding_1|a_control_temp\(3) $ (\key_coding_1|a_control_temp\(1) & (\DDS_1|Mux9~1_combout\ # \key_coding_1|a_control_temp\(2)) # !\key_coding_1|a_control_temp\(1) & \DDS_1|Mux9~1_combout\ & 
-- \key_coding_1|a_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(3),
	datab => \key_coding_1|a_control_temp\(1),
	datac => \DDS_1|Mux9~1_combout\,
	datad => \key_coding_1|a_control_temp\(2),
	combout => \DDS_1|Mult0|auto_generated|le4a\(0));

\TLC5615_1|DIN_REG[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[1]~0_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[1]~0_combout\);

\TLC5615_1|DIN_REG[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[2]~1_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[2]~1_combout\);

\TLC5615_1|DIN_REG[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[7]~2_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[7]~2_combout\);

\TLC5615_1|DIN_REG[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[3]~9_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[3]~9_combout\);

\key_4|key_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \key_4|key_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_4|key_out~clkctrl_outclk\);

\key_2|key_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \key_2|key_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_2|key_out~clkctrl_outclk\);

\key_1|key_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \key_1|key_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_1|key_out~clkctrl_outclk\);

\key_3|key_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \key_3|key_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_3|key_out~clkctrl_outclk\);

\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

\TLC5615_1|COUNT3[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT3[0]~7_combout\ = !\TLC5615_1|COUNT3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TLC5615_1|COUNT3\(0),
	combout => \TLC5615_1|COUNT3[0]~7_combout\);

\TLC5615_1|COUNT3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT3[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT3\(0));

\TLC5615_1|COUNT3[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT3[2]~6_combout\ = \TLC5615_1|COUNT3\(2) $ (\TLC5615_1|COUNT3\(1) & \TLC5615_1|COUNT3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT3\(1),
	datac => \TLC5615_1|COUNT3\(2),
	datad => \TLC5615_1|COUNT3\(0),
	combout => \TLC5615_1|COUNT3[2]~6_combout\);

\TLC5615_1|COUNT3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT3[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT3\(2));

\TLC5615_1|COUNT3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT3~4_combout\ = \TLC5615_1|COUNT3\(1) & (\TLC5615_1|COUNT3\(3) $ (\TLC5615_1|COUNT3\(2) & \TLC5615_1|COUNT3\(0))) # !\TLC5615_1|COUNT3\(1) & \TLC5615_1|COUNT3\(3) & (\TLC5615_1|COUNT3\(2) # !\TLC5615_1|COUNT3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT3\(1),
	datab => \TLC5615_1|COUNT3\(2),
	datac => \TLC5615_1|COUNT3\(3),
	datad => \TLC5615_1|COUNT3\(0),
	combout => \TLC5615_1|COUNT3~4_combout\);

\TLC5615_1|COUNT3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT3\(3));

\TLC5615_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|Equal0~0_combout\ = !\TLC5615_1|COUNT3\(1) & !\TLC5615_1|COUNT3\(2) & \TLC5615_1|COUNT3\(3) & \TLC5615_1|COUNT3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT3\(1),
	datab => \TLC5615_1|COUNT3\(2),
	datac => \TLC5615_1|COUNT3\(3),
	datad => \TLC5615_1|COUNT3\(0),
	combout => \TLC5615_1|Equal0~0_combout\);

\TLC5615_1|SCLK_REG~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|SCLK_REG~0_combout\ = \TLC5615_1|SCLK_REG~regout\ $ \TLC5615_1|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TLC5615_1|SCLK_REG~regout\,
	datad => \TLC5615_1|Equal0~0_combout\,
	combout => \TLC5615_1|SCLK_REG~0_combout\);

\TLC5615_1|SCLK_REG\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \TLC5615_1|SCLK_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|SCLK_REG~regout\);

\TLC5615_1|SCLK_REG~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \TLC5615_1|SCLK_REG~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \TLC5615_1|SCLK_REG~clkctrl_outclk\);

\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

\key_coding_1|a_control_temp~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|a_control_temp~18_combout\ = !\reset~combout\ # !\key_coding_1|a_control_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(0),
	datac => \reset~combout\,
	combout => \key_coding_1|a_control_temp~18_combout\);

\set_a_key_in~I\ : cycloneii_io
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
	padio => ww_set_a_key_in,
	combout => \set_a_key_in~combout\);

\key_3|state.s0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_3|state.s0~1_combout\ = !\set_a_key_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_a_key_in~combout\,
	combout => \key_3|state.s0~1_combout\);

\key_3|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_3|state.s0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_3|state.s0~regout\);

\key_3|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_3|state~16_combout\ = !\set_a_key_in~combout\ & !\key_3|state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_a_key_in~combout\,
	datad => \key_3|state.s0~regout\,
	combout => \key_3|state~16_combout\);

\key_3|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_3|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_3|state.s1~regout\);

\key_3|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_3|state~17_combout\ = !\set_a_key_in~combout\ & \key_3|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_a_key_in~combout\,
	datad => \key_3|state.s1~regout\,
	combout => \key_3|state~17_combout\);

\key_3|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_3|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_3|state.s2~regout\);

\key_3|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_3|Selector0~1_combout\ = !\key_3|state.s2~regout\ & !\key_3|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_3|state.s2~regout\,
	datad => \key_3|state.s1~regout\,
	combout => \key_3|Selector0~1_combout\);

\key_3|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_3|Selector1~0_combout\ = !\key_3|state.s1~regout\ & !\set_a_key_in~combout\ & \key_3|state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_3|state.s1~regout\,
	datac => \set_a_key_in~combout\,
	datad => \key_3|state.s0~regout\,
	combout => \key_3|Selector1~0_combout\);

\key_3|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_3|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_3|state.s3~regout\);

\key_3|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_3|Selector0~2_combout\ = \set_a_key_in~combout\ & (\key_3|Selector0~1_combout\ # \key_3|key_out~regout\) # !\set_a_key_in~combout\ & !\key_3|state.s3~regout\ & (\key_3|Selector0~1_combout\ # \key_3|key_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_a_key_in~combout\,
	datab => \key_3|Selector0~1_combout\,
	datac => \key_3|key_out~regout\,
	datad => \key_3|state.s3~regout\,
	combout => \key_3|Selector0~2_combout\);

\key_3|key_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \key_3|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_3|key_out~regout\);

\key_coding_1|a_control_temp[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|a_control_temp[3]~16_combout\ = !\key_3|key_out~regout\ # !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \key_3|key_out~regout\,
	combout => \key_coding_1|a_control_temp[3]~16_combout\);

\key_coding_1|a_control_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3|ALT_INV_key_out~clkctrl_outclk\,
	sdata => \key_coding_1|a_control_temp~18_combout\,
	sload => VCC,
	ena => \key_coding_1|a_control_temp[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|a_control_temp\(0));

\key_coding_1|a_control_temp[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|a_control_temp[3]~14_combout\ = \reset~combout\ & (\key_coding_1|a_control_temp\(0) # !\DDS_1|Mult0|auto_generated|_~373_combout\ # !\key_coding_1|a_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \key_coding_1|a_control_temp\(0),
	datac => \key_coding_1|a_control_temp\(1),
	datad => \DDS_1|Mult0|auto_generated|_~373_combout\,
	combout => \key_coding_1|a_control_temp[3]~14_combout\);

\key_coding_1|a_control_temp~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|a_control_temp~19_combout\ = \key_coding_1|a_control_temp[3]~14_combout\ & (\key_coding_1|a_control_temp\(2) $ (\key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \key_coding_1|a_control_temp\(2),
	datac => \key_coding_1|a_control_temp\(0),
	datad => \key_coding_1|a_control_temp[3]~14_combout\,
	combout => \key_coding_1|a_control_temp~19_combout\);

\key_coding_1|a_control_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3|ALT_INV_key_out~clkctrl_outclk\,
	sdata => \key_coding_1|a_control_temp~19_combout\,
	sload => VCC,
	ena => \key_coding_1|a_control_temp[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|a_control_temp\(2));

\DDS_1|Mult0|auto_generated|_~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|_~373_combout\ = !\key_coding_1|a_control_temp\(2) & \key_coding_1|a_control_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_coding_1|a_control_temp\(2),
	datad => \key_coding_1|a_control_temp\(3),
	combout => \DDS_1|Mult0|auto_generated|_~373_combout\);

\key_coding_1|a_control_temp~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|a_control_temp~17_combout\ = \reset~combout\ & (\key_coding_1|a_control_temp\(1) & !\key_coding_1|a_control_temp\(0) & !\DDS_1|Mult0|auto_generated|_~373_combout\ # !\key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \reset~combout\,
	datac => \key_coding_1|a_control_temp\(0),
	datad => \DDS_1|Mult0|auto_generated|_~373_combout\,
	combout => \key_coding_1|a_control_temp~17_combout\);

\key_coding_1|a_control_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3|ALT_INV_key_out~clkctrl_outclk\,
	sdata => \key_coding_1|a_control_temp~17_combout\,
	sload => VCC,
	ena => \key_coding_1|a_control_temp[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|a_control_temp\(1));

\key_coding_1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Add2~0_combout\ = \key_coding_1|a_control_temp\(0) & \key_coding_1|a_control_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(0),
	datac => \key_coding_1|a_control_temp\(1),
	combout => \key_coding_1|Add2~0_combout\);

\key_coding_1|a_control_temp~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|a_control_temp~15_combout\ = \key_coding_1|a_control_temp[3]~14_combout\ & (\key_coding_1|a_control_temp\(3) $ (\key_coding_1|Add2~0_combout\ & \key_coding_1|a_control_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(3),
	datab => \key_coding_1|Add2~0_combout\,
	datac => \key_coding_1|a_control_temp\(2),
	datad => \key_coding_1|a_control_temp[3]~14_combout\,
	combout => \key_coding_1|a_control_temp~15_combout\);

\key_coding_1|a_control_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3|ALT_INV_key_out~clkctrl_outclk\,
	sdata => \key_coding_1|a_control_temp~15_combout\,
	sload => VCC,
	ena => \key_coding_1|a_control_temp[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|a_control_temp\(3));

\DDS_1|Mult0|auto_generated|le4a[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(11) = \key_coding_1|a_control_temp\(3) $ (\key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|a_control_temp\(3),
	datac => \key_coding_1|a_control_temp\(1),
	datad => \key_coding_1|a_control_temp\(2),
	combout => \DDS_1|Mult0|auto_generated|le4a\(11));

\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

\key_coding_1|f_control_temp[0]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[0]~84_combout\ = \key_coding_1|f_control_temp\(0) $ VCC
-- \key_coding_1|f_control_temp[0]~85\ = CARRY(\key_coding_1|f_control_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(0),
	datad => VCC,
	combout => \key_coding_1|f_control_temp[0]~84_combout\,
	cout => \key_coding_1|f_control_temp[0]~85\);

\key_coding_1|f_control_temp[1]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[1]~86_combout\ = \key_coding_1|f_control_temp\(1) & !\key_coding_1|f_control_temp[0]~85\ # !\key_coding_1|f_control_temp\(1) & (\key_coding_1|f_control_temp[0]~85\ # GND)
-- \key_coding_1|f_control_temp[1]~87\ = CARRY(!\key_coding_1|f_control_temp[0]~85\ # !\key_coding_1|f_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(1),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[0]~85\,
	combout => \key_coding_1|f_control_temp[1]~86_combout\,
	cout => \key_coding_1|f_control_temp[1]~87\);

\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\reset~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset~_wirecell_combout\ = !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~combout\,
	combout => \reset~_wirecell_combout\);

\set_f_key_in~I\ : cycloneii_io
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
	padio => ww_set_f_key_in,
	combout => \set_f_key_in~combout\);

\key_2|state.s0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_2|state.s0~1_combout\ = !\set_f_key_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_f_key_in~combout\,
	combout => \key_2|state.s0~1_combout\);

\key_2|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_2|state.s0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_2|state.s0~regout\);

\key_2|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_2|state~16_combout\ = !\set_f_key_in~combout\ & !\key_2|state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_f_key_in~combout\,
	datad => \key_2|state.s0~regout\,
	combout => \key_2|state~16_combout\);

\key_2|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_2|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_2|state.s1~regout\);

\key_2|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_2|Selector0~1_combout\ = !\key_2|state.s2~regout\ & !\key_2|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_2|state.s2~regout\,
	datad => \key_2|state.s1~regout\,
	combout => \key_2|Selector0~1_combout\);

\key_2|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_2|Selector0~2_combout\ = \key_2|state.s3~regout\ & \set_f_key_in~combout\ & (\key_2|key_out~regout\ # \key_2|Selector0~1_combout\) # !\key_2|state.s3~regout\ & (\key_2|key_out~regout\ # \key_2|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_2|state.s3~regout\,
	datab => \set_f_key_in~combout\,
	datac => \key_2|key_out~regout\,
	datad => \key_2|Selector0~1_combout\,
	combout => \key_2|Selector0~2_combout\);

\key_2|key_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \key_2|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_2|key_out~regout\);

\key_coding_1|f_control_temp[2]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[2]~127_combout\ = !\reset~combout\ # !\key_2|key_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_2|key_out~regout\,
	datad => \reset~combout\,
	combout => \key_coding_1|f_control_temp[2]~127_combout\);

\key_coding_1|f_control_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[0]~84_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(0));

\key_coding_1|f_control_temp[2]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[2]~88_combout\ = \key_coding_1|f_control_temp\(2) & (\key_coding_1|f_control_temp[1]~87\ $ GND) # !\key_coding_1|f_control_temp\(2) & !\key_coding_1|f_control_temp[1]~87\ & VCC
-- \key_coding_1|f_control_temp[2]~89\ = CARRY(\key_coding_1|f_control_temp\(2) & !\key_coding_1|f_control_temp[1]~87\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(2),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[1]~87\,
	combout => \key_coding_1|f_control_temp[2]~88_combout\,
	cout => \key_coding_1|f_control_temp[2]~89\);

\key_coding_1|f_control_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[2]~88_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(2));

\key_coding_1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Equal0~5_combout\ = !\key_coding_1|f_control_temp\(3) # !\key_coding_1|f_control_temp\(2) # !\key_coding_1|f_control_temp\(1) # !\key_coding_1|f_control_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(4),
	datab => \key_coding_1|f_control_temp\(1),
	datac => \key_coding_1|f_control_temp\(2),
	datad => \key_coding_1|f_control_temp\(3),
	combout => \key_coding_1|Equal0~5_combout\);

\key_coding_1|f_control_temp[2]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[2]~126_combout\ = !\key_coding_1|Equal0~4_combout\ & \key_coding_1|f_control_temp\(0) & !\key_coding_1|Equal0~5_combout\ # !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|Equal0~4_combout\,
	datab => \key_coding_1|f_control_temp\(0),
	datac => \key_coding_1|Equal0~5_combout\,
	datad => \reset~combout\,
	combout => \key_coding_1|f_control_temp[2]~126_combout\);

\key_coding_1|f_control_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[1]~86_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(1));

\key_coding_1|f_control_temp[3]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[3]~90_combout\ = \key_coding_1|f_control_temp\(3) & \key_coding_1|f_control_temp[2]~89\ & VCC # !\key_coding_1|f_control_temp\(3) & !\key_coding_1|f_control_temp[2]~89\
-- \key_coding_1|f_control_temp[3]~91\ = CARRY(!\key_coding_1|f_control_temp\(3) & !\key_coding_1|f_control_temp[2]~89\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(3),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[2]~89\,
	combout => \key_coding_1|f_control_temp[3]~90_combout\,
	cout => \key_coding_1|f_control_temp[3]~91\);

\key_coding_1|f_control_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[3]~90_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(3));

\key_coding_1|f_control_temp[5]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[5]~94_combout\ = \key_coding_1|f_control_temp\(5) & !\key_coding_1|f_control_temp[4]~93\ # !\key_coding_1|f_control_temp\(5) & (\key_coding_1|f_control_temp[4]~93\ # GND)
-- \key_coding_1|f_control_temp[5]~95\ = CARRY(!\key_coding_1|f_control_temp[4]~93\ # !\key_coding_1|f_control_temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(5),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[4]~93\,
	combout => \key_coding_1|f_control_temp[5]~94_combout\,
	cout => \key_coding_1|f_control_temp[5]~95\);

\key_coding_1|f_control_temp[6]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[6]~96_combout\ = \key_coding_1|f_control_temp\(6) & (\key_coding_1|f_control_temp[5]~95\ $ GND) # !\key_coding_1|f_control_temp\(6) & !\key_coding_1|f_control_temp[5]~95\ & VCC
-- \key_coding_1|f_control_temp[6]~97\ = CARRY(\key_coding_1|f_control_temp\(6) & !\key_coding_1|f_control_temp[5]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(6),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[5]~95\,
	combout => \key_coding_1|f_control_temp[6]~96_combout\,
	cout => \key_coding_1|f_control_temp[6]~97\);

\key_coding_1|f_control_temp[7]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[7]~98_combout\ = \key_coding_1|f_control_temp\(7) & \key_coding_1|f_control_temp[6]~97\ & VCC # !\key_coding_1|f_control_temp\(7) & !\key_coding_1|f_control_temp[6]~97\
-- \key_coding_1|f_control_temp[7]~99\ = CARRY(!\key_coding_1|f_control_temp\(7) & !\key_coding_1|f_control_temp[6]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(7),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[6]~97\,
	combout => \key_coding_1|f_control_temp[7]~98_combout\,
	cout => \key_coding_1|f_control_temp[7]~99\);

\key_coding_1|f_control_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[7]~98_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(7));

\key_coding_1|f_control_temp[8]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[8]~100_combout\ = \key_coding_1|f_control_temp\(8) & (GND # !\key_coding_1|f_control_temp[7]~99\) # !\key_coding_1|f_control_temp\(8) & (\key_coding_1|f_control_temp[7]~99\ $ GND)
-- \key_coding_1|f_control_temp[8]~101\ = CARRY(\key_coding_1|f_control_temp\(8) # !\key_coding_1|f_control_temp[7]~99\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(8),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[7]~99\,
	combout => \key_coding_1|f_control_temp[8]~100_combout\,
	cout => \key_coding_1|f_control_temp[8]~101\);

\key_coding_1|f_control_temp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[8]~100_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(8));

\key_coding_1|f_control_temp[10]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[10]~104_combout\ = \key_coding_1|f_control_temp\(10) & (\key_coding_1|f_control_temp[9]~103\ $ GND) # !\key_coding_1|f_control_temp\(10) & !\key_coding_1|f_control_temp[9]~103\ & VCC
-- \key_coding_1|f_control_temp[10]~105\ = CARRY(\key_coding_1|f_control_temp\(10) & !\key_coding_1|f_control_temp[9]~103\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(10),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[9]~103\,
	combout => \key_coding_1|f_control_temp[10]~104_combout\,
	cout => \key_coding_1|f_control_temp[10]~105\);

\key_coding_1|f_control_temp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[10]~104_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(10));

\key_coding_1|f_control_temp[11]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[11]~106_combout\ = \key_coding_1|f_control_temp\(11) & !\key_coding_1|f_control_temp[10]~105\ # !\key_coding_1|f_control_temp\(11) & (\key_coding_1|f_control_temp[10]~105\ # GND)
-- \key_coding_1|f_control_temp[11]~107\ = CARRY(!\key_coding_1|f_control_temp[10]~105\ # !\key_coding_1|f_control_temp\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(11),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[10]~105\,
	combout => \key_coding_1|f_control_temp[11]~106_combout\,
	cout => \key_coding_1|f_control_temp[11]~107\);

\key_coding_1|f_control_temp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[11]~106_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(11));

\key_coding_1|f_control_temp[12]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[12]~108_combout\ = \key_coding_1|f_control_temp\(12) & (\key_coding_1|f_control_temp[11]~107\ $ GND) # !\key_coding_1|f_control_temp\(12) & !\key_coding_1|f_control_temp[11]~107\ & VCC
-- \key_coding_1|f_control_temp[12]~109\ = CARRY(\key_coding_1|f_control_temp\(12) & !\key_coding_1|f_control_temp[11]~107\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(12),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[11]~107\,
	combout => \key_coding_1|f_control_temp[12]~108_combout\,
	cout => \key_coding_1|f_control_temp[12]~109\);

\key_coding_1|f_control_temp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[12]~108_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(12));

\key_coding_1|f_control_temp[13]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[13]~110_combout\ = \key_coding_1|f_control_temp\(13) & \key_coding_1|f_control_temp[12]~109\ & VCC # !\key_coding_1|f_control_temp\(13) & !\key_coding_1|f_control_temp[12]~109\
-- \key_coding_1|f_control_temp[13]~111\ = CARRY(!\key_coding_1|f_control_temp\(13) & !\key_coding_1|f_control_temp[12]~109\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(13),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[12]~109\,
	combout => \key_coding_1|f_control_temp[13]~110_combout\,
	cout => \key_coding_1|f_control_temp[13]~111\);

\key_coding_1|f_control_temp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[13]~110_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(13));

\key_coding_1|f_control_temp[14]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[14]~112_combout\ = \key_coding_1|f_control_temp\(14) & (\key_coding_1|f_control_temp[13]~111\ $ GND) # !\key_coding_1|f_control_temp\(14) & !\key_coding_1|f_control_temp[13]~111\ & VCC
-- \key_coding_1|f_control_temp[14]~113\ = CARRY(\key_coding_1|f_control_temp\(14) & !\key_coding_1|f_control_temp[13]~111\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(14),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[13]~111\,
	combout => \key_coding_1|f_control_temp[14]~112_combout\,
	cout => \key_coding_1|f_control_temp[14]~113\);

\key_coding_1|f_control_temp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[14]~112_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(14));

\key_coding_1|f_control_temp[17]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[17]~118_combout\ = \key_coding_1|f_control_temp\(17) & !\key_coding_1|f_control_temp[16]~117\ # !\key_coding_1|f_control_temp\(17) & (\key_coding_1|f_control_temp[16]~117\ # GND)
-- \key_coding_1|f_control_temp[17]~119\ = CARRY(!\key_coding_1|f_control_temp[16]~117\ # !\key_coding_1|f_control_temp\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(17),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[16]~117\,
	combout => \key_coding_1|f_control_temp[17]~118_combout\,
	cout => \key_coding_1|f_control_temp[17]~119\);

\key_coding_1|f_control_temp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[17]~118_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(17));

\key_coding_1|f_control_temp[19]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[19]~122_combout\ = \key_coding_1|f_control_temp\(19) & !\key_coding_1|f_control_temp[18]~121\ # !\key_coding_1|f_control_temp\(19) & (\key_coding_1|f_control_temp[18]~121\ # GND)
-- \key_coding_1|f_control_temp[19]~123\ = CARRY(!\key_coding_1|f_control_temp[18]~121\ # !\key_coding_1|f_control_temp\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|f_control_temp\(19),
	datad => VCC,
	cin => \key_coding_1|f_control_temp[18]~121\,
	combout => \key_coding_1|f_control_temp[19]~122_combout\,
	cout => \key_coding_1|f_control_temp[19]~123\);

\key_coding_1|f_control_temp[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[19]~122_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(19));

\key_coding_1|f_control_temp[20]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|f_control_temp[20]~124_combout\ = \key_coding_1|f_control_temp\(20) $ !\key_coding_1|f_control_temp[19]~123\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(20),
	cin => \key_coding_1|f_control_temp[19]~123\,
	combout => \key_coding_1|f_control_temp[20]~124_combout\);

\key_coding_1|f_control_temp[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[20]~124_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(20));

\key_coding_1|f_control_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[6]~96_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(6));

\key_coding_1|f_control_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|f_control_temp[5]~94_combout\,
	sdata => \~GND~combout\,
	sload => \key_coding_1|f_control_temp[2]~126_combout\,
	ena => \key_coding_1|f_control_temp[2]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|f_control_temp\(5));

\DDS_1|u2|data_32out[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[0]~32_combout\ = \key_coding_1|f_control_temp\(0) & (\DDS_1|u2|data_32out\(0) $ VCC) # !\key_coding_1|f_control_temp\(0) & \DDS_1|u2|data_32out\(0) & VCC
-- \DDS_1|u2|data_32out[0]~33\ = CARRY(\key_coding_1|f_control_temp\(0) & \DDS_1|u2|data_32out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(0),
	datab => \DDS_1|u2|data_32out\(0),
	datad => VCC,
	combout => \DDS_1|u2|data_32out[0]~32_combout\,
	cout => \DDS_1|u2|data_32out[0]~33\);

\DDS_1|u2|data_32out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(0));

\DDS_1|u2|data_32out[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[2]~36_combout\ = (\key_coding_1|f_control_temp\(2) $ \DDS_1|u2|data_32out\(2) $ !\DDS_1|u2|data_32out[1]~35\) # GND
-- \DDS_1|u2|data_32out[2]~37\ = CARRY(\key_coding_1|f_control_temp\(2) & (\DDS_1|u2|data_32out\(2) # !\DDS_1|u2|data_32out[1]~35\) # !\key_coding_1|f_control_temp\(2) & \DDS_1|u2|data_32out\(2) & !\DDS_1|u2|data_32out[1]~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(2),
	datab => \DDS_1|u2|data_32out\(2),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[1]~35\,
	combout => \DDS_1|u2|data_32out[2]~36_combout\,
	cout => \DDS_1|u2|data_32out[2]~37\);

\DDS_1|u2|data_32out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(2));

\DDS_1|u2|data_32out[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[4]~40_combout\ = (\key_coding_1|f_control_temp\(4) $ \DDS_1|u2|data_32out\(4) $ !\DDS_1|u2|data_32out[3]~39\) # GND
-- \DDS_1|u2|data_32out[4]~41\ = CARRY(\key_coding_1|f_control_temp\(4) & (\DDS_1|u2|data_32out\(4) # !\DDS_1|u2|data_32out[3]~39\) # !\key_coding_1|f_control_temp\(4) & \DDS_1|u2|data_32out\(4) & !\DDS_1|u2|data_32out[3]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(4),
	datab => \DDS_1|u2|data_32out\(4),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[3]~39\,
	combout => \DDS_1|u2|data_32out[4]~40_combout\,
	cout => \DDS_1|u2|data_32out[4]~41\);

\DDS_1|u2|data_32out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(4));

\DDS_1|u2|data_32out[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[7]~46_combout\ = \key_coding_1|f_control_temp\(7) & (\DDS_1|u2|data_32out\(7) & \DDS_1|u2|data_32out[6]~45\ & VCC # !\DDS_1|u2|data_32out\(7) & !\DDS_1|u2|data_32out[6]~45\) # !\key_coding_1|f_control_temp\(7) & 
-- (\DDS_1|u2|data_32out\(7) & !\DDS_1|u2|data_32out[6]~45\ # !\DDS_1|u2|data_32out\(7) & (\DDS_1|u2|data_32out[6]~45\ # GND))
-- \DDS_1|u2|data_32out[7]~47\ = CARRY(\key_coding_1|f_control_temp\(7) & !\DDS_1|u2|data_32out\(7) & !\DDS_1|u2|data_32out[6]~45\ # !\key_coding_1|f_control_temp\(7) & (!\DDS_1|u2|data_32out[6]~45\ # !\DDS_1|u2|data_32out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(7),
	datab => \DDS_1|u2|data_32out\(7),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[6]~45\,
	combout => \DDS_1|u2|data_32out[7]~46_combout\,
	cout => \DDS_1|u2|data_32out[7]~47\);

\DDS_1|u2|data_32out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(7));

\DDS_1|u2|data_32out[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[9]~50_combout\ = \key_coding_1|f_control_temp\(9) & (\DDS_1|u2|data_32out\(9) & \DDS_1|u2|data_32out[8]~49\ & VCC # !\DDS_1|u2|data_32out\(9) & !\DDS_1|u2|data_32out[8]~49\) # !\key_coding_1|f_control_temp\(9) & 
-- (\DDS_1|u2|data_32out\(9) & !\DDS_1|u2|data_32out[8]~49\ # !\DDS_1|u2|data_32out\(9) & (\DDS_1|u2|data_32out[8]~49\ # GND))
-- \DDS_1|u2|data_32out[9]~51\ = CARRY(\key_coding_1|f_control_temp\(9) & !\DDS_1|u2|data_32out\(9) & !\DDS_1|u2|data_32out[8]~49\ # !\key_coding_1|f_control_temp\(9) & (!\DDS_1|u2|data_32out[8]~49\ # !\DDS_1|u2|data_32out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(9),
	datab => \DDS_1|u2|data_32out\(9),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[8]~49\,
	combout => \DDS_1|u2|data_32out[9]~50_combout\,
	cout => \DDS_1|u2|data_32out[9]~51\);

\DDS_1|u2|data_32out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(9));

\DDS_1|u2|data_32out[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[11]~54_combout\ = \key_coding_1|f_control_temp\(11) & (\DDS_1|u2|data_32out\(11) & \DDS_1|u2|data_32out[10]~53\ & VCC # !\DDS_1|u2|data_32out\(11) & !\DDS_1|u2|data_32out[10]~53\) # !\key_coding_1|f_control_temp\(11) & 
-- (\DDS_1|u2|data_32out\(11) & !\DDS_1|u2|data_32out[10]~53\ # !\DDS_1|u2|data_32out\(11) & (\DDS_1|u2|data_32out[10]~53\ # GND))
-- \DDS_1|u2|data_32out[11]~55\ = CARRY(\key_coding_1|f_control_temp\(11) & !\DDS_1|u2|data_32out\(11) & !\DDS_1|u2|data_32out[10]~53\ # !\key_coding_1|f_control_temp\(11) & (!\DDS_1|u2|data_32out[10]~53\ # !\DDS_1|u2|data_32out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(11),
	datab => \DDS_1|u2|data_32out\(11),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[10]~53\,
	combout => \DDS_1|u2|data_32out[11]~54_combout\,
	cout => \DDS_1|u2|data_32out[11]~55\);

\DDS_1|u2|data_32out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(11));

\DDS_1|u2|data_32out[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[12]~56_combout\ = (\key_coding_1|f_control_temp\(12) $ \DDS_1|u2|data_32out\(12) $ !\DDS_1|u2|data_32out[11]~55\) # GND
-- \DDS_1|u2|data_32out[12]~57\ = CARRY(\key_coding_1|f_control_temp\(12) & (\DDS_1|u2|data_32out\(12) # !\DDS_1|u2|data_32out[11]~55\) # !\key_coding_1|f_control_temp\(12) & \DDS_1|u2|data_32out\(12) & !\DDS_1|u2|data_32out[11]~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(12),
	datab => \DDS_1|u2|data_32out\(12),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[11]~55\,
	combout => \DDS_1|u2|data_32out[12]~56_combout\,
	cout => \DDS_1|u2|data_32out[12]~57\);

\DDS_1|u2|data_32out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(12));

\DDS_1|u2|data_32out[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[13]~58_combout\ = \key_coding_1|f_control_temp\(13) & (\DDS_1|u2|data_32out\(13) & \DDS_1|u2|data_32out[12]~57\ & VCC # !\DDS_1|u2|data_32out\(13) & !\DDS_1|u2|data_32out[12]~57\) # !\key_coding_1|f_control_temp\(13) & 
-- (\DDS_1|u2|data_32out\(13) & !\DDS_1|u2|data_32out[12]~57\ # !\DDS_1|u2|data_32out\(13) & (\DDS_1|u2|data_32out[12]~57\ # GND))
-- \DDS_1|u2|data_32out[13]~59\ = CARRY(\key_coding_1|f_control_temp\(13) & !\DDS_1|u2|data_32out\(13) & !\DDS_1|u2|data_32out[12]~57\ # !\key_coding_1|f_control_temp\(13) & (!\DDS_1|u2|data_32out[12]~57\ # !\DDS_1|u2|data_32out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(13),
	datab => \DDS_1|u2|data_32out\(13),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[12]~57\,
	combout => \DDS_1|u2|data_32out[13]~58_combout\,
	cout => \DDS_1|u2|data_32out[13]~59\);

\DDS_1|u2|data_32out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(13));

\DDS_1|u2|data_32out[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[14]~60_combout\ = (\key_coding_1|f_control_temp\(14) $ \DDS_1|u2|data_32out\(14) $ !\DDS_1|u2|data_32out[13]~59\) # GND
-- \DDS_1|u2|data_32out[14]~61\ = CARRY(\key_coding_1|f_control_temp\(14) & (\DDS_1|u2|data_32out\(14) # !\DDS_1|u2|data_32out[13]~59\) # !\key_coding_1|f_control_temp\(14) & \DDS_1|u2|data_32out\(14) & !\DDS_1|u2|data_32out[13]~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(14),
	datab => \DDS_1|u2|data_32out\(14),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[13]~59\,
	combout => \DDS_1|u2|data_32out[14]~60_combout\,
	cout => \DDS_1|u2|data_32out[14]~61\);

\DDS_1|u2|data_32out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(14));

\DDS_1|u2|data_32out[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[15]~62_combout\ = \key_coding_1|f_control_temp\(15) & (\DDS_1|u2|data_32out\(15) & \DDS_1|u2|data_32out[14]~61\ & VCC # !\DDS_1|u2|data_32out\(15) & !\DDS_1|u2|data_32out[14]~61\) # !\key_coding_1|f_control_temp\(15) & 
-- (\DDS_1|u2|data_32out\(15) & !\DDS_1|u2|data_32out[14]~61\ # !\DDS_1|u2|data_32out\(15) & (\DDS_1|u2|data_32out[14]~61\ # GND))
-- \DDS_1|u2|data_32out[15]~63\ = CARRY(\key_coding_1|f_control_temp\(15) & !\DDS_1|u2|data_32out\(15) & !\DDS_1|u2|data_32out[14]~61\ # !\key_coding_1|f_control_temp\(15) & (!\DDS_1|u2|data_32out[14]~61\ # !\DDS_1|u2|data_32out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(15),
	datab => \DDS_1|u2|data_32out\(15),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[14]~61\,
	combout => \DDS_1|u2|data_32out[15]~62_combout\,
	cout => \DDS_1|u2|data_32out[15]~63\);

\DDS_1|u2|data_32out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(15));

\DDS_1|u2|data_32out[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[16]~64_combout\ = (\key_coding_1|f_control_temp\(16) $ \DDS_1|u2|data_32out\(16) $ !\DDS_1|u2|data_32out[15]~63\) # GND
-- \DDS_1|u2|data_32out[16]~65\ = CARRY(\key_coding_1|f_control_temp\(16) & (\DDS_1|u2|data_32out\(16) # !\DDS_1|u2|data_32out[15]~63\) # !\key_coding_1|f_control_temp\(16) & \DDS_1|u2|data_32out\(16) & !\DDS_1|u2|data_32out[15]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(16),
	datab => \DDS_1|u2|data_32out\(16),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[15]~63\,
	combout => \DDS_1|u2|data_32out[16]~64_combout\,
	cout => \DDS_1|u2|data_32out[16]~65\);

\DDS_1|u2|data_32out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(16));

\DDS_1|u2|data_32out[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[18]~68_combout\ = (\key_coding_1|f_control_temp\(18) $ \DDS_1|u2|data_32out\(18) $ !\DDS_1|u2|data_32out[17]~67\) # GND
-- \DDS_1|u2|data_32out[18]~69\ = CARRY(\key_coding_1|f_control_temp\(18) & (\DDS_1|u2|data_32out\(18) # !\DDS_1|u2|data_32out[17]~67\) # !\key_coding_1|f_control_temp\(18) & \DDS_1|u2|data_32out\(18) & !\DDS_1|u2|data_32out[17]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|f_control_temp\(18),
	datab => \DDS_1|u2|data_32out\(18),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[17]~67\,
	combout => \DDS_1|u2|data_32out[18]~68_combout\,
	cout => \DDS_1|u2|data_32out[18]~69\);

\DDS_1|u2|data_32out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(18));

\DDS_1|u2|data_32out[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[22]~76_combout\ = \DDS_1|u2|data_32out\(22) & (\DDS_1|u2|data_32out[21]~75\ $ GND) # !\DDS_1|u2|data_32out\(22) & !\DDS_1|u2|data_32out[21]~75\ & VCC
-- \DDS_1|u2|data_32out[22]~77\ = CARRY(\DDS_1|u2|data_32out\(22) & !\DDS_1|u2|data_32out[21]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(22),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[21]~75\,
	combout => \DDS_1|u2|data_32out[22]~76_combout\,
	cout => \DDS_1|u2|data_32out[22]~77\);

\DDS_1|u2|data_32out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(22));

\DDS_1|u4|data_10out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[0]~feeder_combout\ = \DDS_1|u2|data_32out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|u2|data_32out\(22),
	combout => \DDS_1|u4|data_10out[0]~feeder_combout\);

\DDS_1|u4|data_10out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(0));

\DDS_1|u2|data_32out[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[23]~78_combout\ = \DDS_1|u2|data_32out\(23) & !\DDS_1|u2|data_32out[22]~77\ # !\DDS_1|u2|data_32out\(23) & (\DDS_1|u2|data_32out[22]~77\ # GND)
-- \DDS_1|u2|data_32out[23]~79\ = CARRY(!\DDS_1|u2|data_32out[22]~77\ # !\DDS_1|u2|data_32out\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u2|data_32out\(23),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[22]~77\,
	combout => \DDS_1|u2|data_32out[23]~78_combout\,
	cout => \DDS_1|u2|data_32out[23]~79\);

\DDS_1|u2|data_32out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(23));

\DDS_1|u4|data_10out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \DDS_1|u2|data_32out\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(1));

\DDS_1|u2|data_32out[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[24]~80_combout\ = \DDS_1|u2|data_32out\(24) & (\DDS_1|u2|data_32out[23]~79\ $ GND) # !\DDS_1|u2|data_32out\(24) & !\DDS_1|u2|data_32out[23]~79\ & VCC
-- \DDS_1|u2|data_32out[24]~81\ = CARRY(\DDS_1|u2|data_32out\(24) & !\DDS_1|u2|data_32out[23]~79\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(24),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[23]~79\,
	combout => \DDS_1|u2|data_32out[24]~80_combout\,
	cout => \DDS_1|u2|data_32out[24]~81\);

\DDS_1|u2|data_32out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(24));

\DDS_1|u4|data_10out[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[2]~8_combout\ = \key_coding_1|p_control_temp\(2) & (\DDS_1|u2|data_32out\(24) $ VCC) # !\key_coding_1|p_control_temp\(2) & \DDS_1|u2|data_32out\(24) & VCC
-- \DDS_1|u4|data_10out[2]~9\ = CARRY(\key_coding_1|p_control_temp\(2) & \DDS_1|u2|data_32out\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|p_control_temp\(2),
	datab => \DDS_1|u2|data_32out\(24),
	datad => VCC,
	combout => \DDS_1|u4|data_10out[2]~8_combout\,
	cout => \DDS_1|u4|data_10out[2]~9\);

\DDS_1|u4|data_10out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(2));

\key_coding_1|p_control_temp[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[3]~41_combout\ = \key_coding_1|p_control_temp\(3) & !\key_coding_1|p_control_temp[2]~39\ # !\key_coding_1|p_control_temp\(3) & (\key_coding_1|p_control_temp[2]~39\ # GND)
-- \key_coding_1|p_control_temp[3]~42\ = CARRY(!\key_coding_1|p_control_temp[2]~39\ # !\key_coding_1|p_control_temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|p_control_temp\(3),
	datad => VCC,
	cin => \key_coding_1|p_control_temp[2]~39\,
	combout => \key_coding_1|p_control_temp[3]~41_combout\,
	cout => \key_coding_1|p_control_temp[3]~42\);

\set_p_key_in~I\ : cycloneii_io
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
	padio => ww_set_p_key_in,
	combout => \set_p_key_in~combout\);

\key_4|state.s0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_4|state.s0~1_combout\ = !\set_p_key_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \set_p_key_in~combout\,
	combout => \key_4|state.s0~1_combout\);

\key_4|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_4|state.s0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_4|state.s0~regout\);

\key_4|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_4|state~16_combout\ = !\key_4|state.s0~regout\ & !\set_p_key_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_4|state.s0~regout\,
	datad => \set_p_key_in~combout\,
	combout => \key_4|state~16_combout\);

\key_4|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_4|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_4|state.s1~regout\);

\key_4|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_4|state~17_combout\ = \key_4|state.s1~regout\ & !\set_p_key_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_4|state.s1~regout\,
	datad => \set_p_key_in~combout\,
	combout => \key_4|state~17_combout\);

\key_4|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_4|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_4|state.s2~regout\);

\key_4|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_4|Selector0~1_combout\ = !\key_4|state.s2~regout\ & !\key_4|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_4|state.s2~regout\,
	datad => \key_4|state.s1~regout\,
	combout => \key_4|Selector0~1_combout\);

\key_4|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_4|Selector0~2_combout\ = \key_4|state.s3~regout\ & \set_p_key_in~combout\ & (\key_4|Selector0~1_combout\ # \key_4|key_out~regout\) # !\key_4|state.s3~regout\ & (\key_4|Selector0~1_combout\ # \key_4|key_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_4|state.s3~regout\,
	datab => \key_4|Selector0~1_combout\,
	datac => \key_4|key_out~regout\,
	datad => \set_p_key_in~combout\,
	combout => \key_4|Selector0~2_combout\);

\key_4|key_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \key_4|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_4|key_out~regout\);

\key_coding_1|p_control_temp[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[2]~40_combout\ = !\key_4|key_out~regout\ # !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \key_4|key_out~regout\,
	combout => \key_coding_1|p_control_temp[2]~40_combout\);

\key_coding_1|p_control_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[3]~41_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(3));

\DDS_1|u4|data_10out[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[3]~10_combout\ = \DDS_1|u2|data_32out\(25) & (\key_coding_1|p_control_temp\(3) & \DDS_1|u4|data_10out[2]~9\ & VCC # !\key_coding_1|p_control_temp\(3) & !\DDS_1|u4|data_10out[2]~9\) # !\DDS_1|u2|data_32out\(25) & 
-- (\key_coding_1|p_control_temp\(3) & !\DDS_1|u4|data_10out[2]~9\ # !\key_coding_1|p_control_temp\(3) & (\DDS_1|u4|data_10out[2]~9\ # GND))
-- \DDS_1|u4|data_10out[3]~11\ = CARRY(\DDS_1|u2|data_32out\(25) & !\key_coding_1|p_control_temp\(3) & !\DDS_1|u4|data_10out[2]~9\ # !\DDS_1|u2|data_32out\(25) & (!\DDS_1|u4|data_10out[2]~9\ # !\key_coding_1|p_control_temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(25),
	datab => \key_coding_1|p_control_temp\(3),
	datad => VCC,
	cin => \DDS_1|u4|data_10out[2]~9\,
	combout => \DDS_1|u4|data_10out[3]~10_combout\,
	cout => \DDS_1|u4|data_10out[3]~11\);

\DDS_1|u4|data_10out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(3));

\DDS_1|u2|data_32out[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[25]~82_combout\ = \DDS_1|u2|data_32out\(25) & !\DDS_1|u2|data_32out[24]~81\ # !\DDS_1|u2|data_32out\(25) & (\DDS_1|u2|data_32out[24]~81\ # GND)
-- \DDS_1|u2|data_32out[25]~83\ = CARRY(!\DDS_1|u2|data_32out[24]~81\ # !\DDS_1|u2|data_32out\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u2|data_32out\(25),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[24]~81\,
	combout => \DDS_1|u2|data_32out[25]~82_combout\,
	cout => \DDS_1|u2|data_32out[25]~83\);

\DDS_1|u2|data_32out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(25));

\DDS_1|u2|data_32out[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[26]~84_combout\ = \DDS_1|u2|data_32out\(26) & (\DDS_1|u2|data_32out[25]~83\ $ GND) # !\DDS_1|u2|data_32out\(26) & !\DDS_1|u2|data_32out[25]~83\ & VCC
-- \DDS_1|u2|data_32out[26]~85\ = CARRY(\DDS_1|u2|data_32out\(26) & !\DDS_1|u2|data_32out[25]~83\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(26),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[25]~83\,
	combout => \DDS_1|u2|data_32out[26]~84_combout\,
	cout => \DDS_1|u2|data_32out[26]~85\);

\DDS_1|u2|data_32out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(26));

\DDS_1|u4|data_10out[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[4]~12_combout\ = (\key_coding_1|p_control_temp\(4) $ \DDS_1|u2|data_32out\(26) $ !\DDS_1|u4|data_10out[3]~11\) # GND
-- \DDS_1|u4|data_10out[4]~13\ = CARRY(\key_coding_1|p_control_temp\(4) & (\DDS_1|u2|data_32out\(26) # !\DDS_1|u4|data_10out[3]~11\) # !\key_coding_1|p_control_temp\(4) & \DDS_1|u2|data_32out\(26) & !\DDS_1|u4|data_10out[3]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|p_control_temp\(4),
	datab => \DDS_1|u2|data_32out\(26),
	datad => VCC,
	cin => \DDS_1|u4|data_10out[3]~11\,
	combout => \DDS_1|u4|data_10out[4]~12_combout\,
	cout => \DDS_1|u4|data_10out[4]~13\);

\DDS_1|u4|data_10out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(4));

\key_coding_1|p_control_temp[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[5]~45_combout\ = \key_coding_1|p_control_temp\(5) & \key_coding_1|p_control_temp[4]~44\ & VCC # !\key_coding_1|p_control_temp\(5) & !\key_coding_1|p_control_temp[4]~44\
-- \key_coding_1|p_control_temp[5]~46\ = CARRY(!\key_coding_1|p_control_temp\(5) & !\key_coding_1|p_control_temp[4]~44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|p_control_temp\(5),
	datad => VCC,
	cin => \key_coding_1|p_control_temp[4]~44\,
	combout => \key_coding_1|p_control_temp[5]~45_combout\,
	cout => \key_coding_1|p_control_temp[5]~46\);

\key_coding_1|p_control_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[5]~45_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(5));

\DDS_1|u4|data_10out[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[5]~14_combout\ = \DDS_1|u2|data_32out\(27) & (\key_coding_1|p_control_temp\(5) & \DDS_1|u4|data_10out[4]~13\ & VCC # !\key_coding_1|p_control_temp\(5) & !\DDS_1|u4|data_10out[4]~13\) # !\DDS_1|u2|data_32out\(27) & 
-- (\key_coding_1|p_control_temp\(5) & !\DDS_1|u4|data_10out[4]~13\ # !\key_coding_1|p_control_temp\(5) & (\DDS_1|u4|data_10out[4]~13\ # GND))
-- \DDS_1|u4|data_10out[5]~15\ = CARRY(\DDS_1|u2|data_32out\(27) & !\key_coding_1|p_control_temp\(5) & !\DDS_1|u4|data_10out[4]~13\ # !\DDS_1|u2|data_32out\(27) & (!\DDS_1|u4|data_10out[4]~13\ # !\key_coding_1|p_control_temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(27),
	datab => \key_coding_1|p_control_temp\(5),
	datad => VCC,
	cin => \DDS_1|u4|data_10out[4]~13\,
	combout => \DDS_1|u4|data_10out[5]~14_combout\,
	cout => \DDS_1|u4|data_10out[5]~15\);

\DDS_1|u4|data_10out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(5));

\DDS_1|u2|data_32out[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[27]~86_combout\ = \DDS_1|u2|data_32out\(27) & !\DDS_1|u2|data_32out[26]~85\ # !\DDS_1|u2|data_32out\(27) & (\DDS_1|u2|data_32out[26]~85\ # GND)
-- \DDS_1|u2|data_32out[27]~87\ = CARRY(!\DDS_1|u2|data_32out[26]~85\ # !\DDS_1|u2|data_32out\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u2|data_32out\(27),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[26]~85\,
	combout => \DDS_1|u2|data_32out[27]~86_combout\,
	cout => \DDS_1|u2|data_32out[27]~87\);

\DDS_1|u2|data_32out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(27));

\DDS_1|u2|data_32out[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[28]~88_combout\ = \DDS_1|u2|data_32out\(28) & (\DDS_1|u2|data_32out[27]~87\ $ GND) # !\DDS_1|u2|data_32out\(28) & !\DDS_1|u2|data_32out[27]~87\ & VCC
-- \DDS_1|u2|data_32out[28]~89\ = CARRY(\DDS_1|u2|data_32out\(28) & !\DDS_1|u2|data_32out[27]~87\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(28),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[27]~87\,
	combout => \DDS_1|u2|data_32out[28]~88_combout\,
	cout => \DDS_1|u2|data_32out[28]~89\);

\DDS_1|u2|data_32out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(28));

\DDS_1|u4|data_10out[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[6]~16_combout\ = (\key_coding_1|p_control_temp\(6) $ \DDS_1|u2|data_32out\(28) $ !\DDS_1|u4|data_10out[5]~15\) # GND
-- \DDS_1|u4|data_10out[6]~17\ = CARRY(\key_coding_1|p_control_temp\(6) & (\DDS_1|u2|data_32out\(28) # !\DDS_1|u4|data_10out[5]~15\) # !\key_coding_1|p_control_temp\(6) & \DDS_1|u2|data_32out\(28) & !\DDS_1|u4|data_10out[5]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|p_control_temp\(6),
	datab => \DDS_1|u2|data_32out\(28),
	datad => VCC,
	cin => \DDS_1|u4|data_10out[5]~15\,
	combout => \DDS_1|u4|data_10out[6]~16_combout\,
	cout => \DDS_1|u4|data_10out[6]~17\);

\DDS_1|u4|data_10out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(6));

\key_coding_1|p_control_temp[7]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[7]~49_combout\ = \key_coding_1|p_control_temp\(7) & !\key_coding_1|p_control_temp[6]~48\ # !\key_coding_1|p_control_temp\(7) & (\key_coding_1|p_control_temp[6]~48\ # GND)
-- \key_coding_1|p_control_temp[7]~50\ = CARRY(!\key_coding_1|p_control_temp[6]~48\ # !\key_coding_1|p_control_temp\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|p_control_temp\(7),
	datad => VCC,
	cin => \key_coding_1|p_control_temp[6]~48\,
	combout => \key_coding_1|p_control_temp[7]~49_combout\,
	cout => \key_coding_1|p_control_temp[7]~50\);

\key_coding_1|p_control_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[7]~49_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(7));

\DDS_1|u4|data_10out[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[7]~18_combout\ = \DDS_1|u2|data_32out\(29) & (\key_coding_1|p_control_temp\(7) & \DDS_1|u4|data_10out[6]~17\ & VCC # !\key_coding_1|p_control_temp\(7) & !\DDS_1|u4|data_10out[6]~17\) # !\DDS_1|u2|data_32out\(29) & 
-- (\key_coding_1|p_control_temp\(7) & !\DDS_1|u4|data_10out[6]~17\ # !\key_coding_1|p_control_temp\(7) & (\DDS_1|u4|data_10out[6]~17\ # GND))
-- \DDS_1|u4|data_10out[7]~19\ = CARRY(\DDS_1|u2|data_32out\(29) & !\key_coding_1|p_control_temp\(7) & !\DDS_1|u4|data_10out[6]~17\ # !\DDS_1|u2|data_32out\(29) & (!\DDS_1|u4|data_10out[6]~17\ # !\key_coding_1|p_control_temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(29),
	datab => \key_coding_1|p_control_temp\(7),
	datad => VCC,
	cin => \DDS_1|u4|data_10out[6]~17\,
	combout => \DDS_1|u4|data_10out[7]~18_combout\,
	cout => \DDS_1|u4|data_10out[7]~19\);

\DDS_1|u4|data_10out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(7));

\key_coding_1|p_control_temp[8]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[8]~51_combout\ = \key_coding_1|p_control_temp\(8) & (\key_coding_1|p_control_temp[7]~50\ $ GND) # !\key_coding_1|p_control_temp\(8) & !\key_coding_1|p_control_temp[7]~50\ & VCC
-- \key_coding_1|p_control_temp[8]~52\ = CARRY(\key_coding_1|p_control_temp\(8) & !\key_coding_1|p_control_temp[7]~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|p_control_temp\(8),
	datad => VCC,
	cin => \key_coding_1|p_control_temp[7]~50\,
	combout => \key_coding_1|p_control_temp[8]~51_combout\,
	cout => \key_coding_1|p_control_temp[8]~52\);

\key_coding_1|p_control_temp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[8]~51_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(8));

\DDS_1|u4|data_10out[8]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[8]~20_combout\ = (\DDS_1|u2|data_32out\(30) $ \key_coding_1|p_control_temp\(8) $ !\DDS_1|u4|data_10out[7]~19\) # GND
-- \DDS_1|u4|data_10out[8]~21\ = CARRY(\DDS_1|u2|data_32out\(30) & (\key_coding_1|p_control_temp\(8) # !\DDS_1|u4|data_10out[7]~19\) # !\DDS_1|u2|data_32out\(30) & \key_coding_1|p_control_temp\(8) & !\DDS_1|u4|data_10out[7]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u2|data_32out\(30),
	datab => \key_coding_1|p_control_temp\(8),
	datad => VCC,
	cin => \DDS_1|u4|data_10out[7]~19\,
	combout => \DDS_1|u4|data_10out[8]~20_combout\,
	cout => \DDS_1|u4|data_10out[8]~21\);

\DDS_1|u4|data_10out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(8));

\DDS_1|u2|data_32out[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[29]~90_combout\ = \DDS_1|u2|data_32out\(29) & !\DDS_1|u2|data_32out[28]~89\ # !\DDS_1|u2|data_32out\(29) & (\DDS_1|u2|data_32out[28]~89\ # GND)
-- \DDS_1|u2|data_32out[29]~91\ = CARRY(!\DDS_1|u2|data_32out[28]~89\ # !\DDS_1|u2|data_32out\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u2|data_32out\(29),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[28]~89\,
	combout => \DDS_1|u2|data_32out[29]~90_combout\,
	cout => \DDS_1|u2|data_32out[29]~91\);

\DDS_1|u2|data_32out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(29));

\DDS_1|u2|data_32out[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[30]~92_combout\ = \DDS_1|u2|data_32out\(30) & (\DDS_1|u2|data_32out[29]~91\ $ GND) # !\DDS_1|u2|data_32out\(30) & !\DDS_1|u2|data_32out[29]~91\ & VCC
-- \DDS_1|u2|data_32out[30]~93\ = CARRY(\DDS_1|u2|data_32out\(30) & !\DDS_1|u2|data_32out[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u2|data_32out\(30),
	datad => VCC,
	cin => \DDS_1|u2|data_32out[29]~91\,
	combout => \DDS_1|u2|data_32out[30]~92_combout\,
	cout => \DDS_1|u2|data_32out[30]~93\);

\DDS_1|u2|data_32out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(30));

\DDS_1|u2|data_32out[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u2|data_32out[31]~94_combout\ = \DDS_1|u2|data_32out[30]~93\ $ \DDS_1|u2|data_32out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|u2|data_32out\(31),
	cin => \DDS_1|u2|data_32out[30]~93\,
	combout => \DDS_1|u2|data_32out[31]~94_combout\);

\DDS_1|u2|data_32out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u2|data_32out[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u2|data_32out\(31));

\key_coding_1|p_control_temp[9]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|p_control_temp[9]~53_combout\ = \key_coding_1|p_control_temp[8]~52\ $ \key_coding_1|p_control_temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \key_coding_1|p_control_temp\(9),
	cin => \key_coding_1|p_control_temp[8]~52\,
	combout => \key_coding_1|p_control_temp[9]~53_combout\);

\key_coding_1|p_control_temp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_4|ALT_INV_key_out~clkctrl_outclk\,
	datain => \key_coding_1|p_control_temp[9]~53_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \key_coding_1|p_control_temp[2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|p_control_temp\(9));

\DDS_1|u4|data_10out[9]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|u4|data_10out[9]~22_combout\ = \DDS_1|u2|data_32out\(31) $ \DDS_1|u4|data_10out[8]~21\ $ \key_coding_1|p_control_temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u2|data_32out\(31),
	datad => \key_coding_1|p_control_temp\(9),
	cin => \DDS_1|u4|data_10out[8]~21\,
	combout => \DDS_1|u4|data_10out[9]~22_combout\);

\DDS_1|u4|data_10out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DDS_1|u4|data_10out[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DDS_1|u4|data_10out\(9));

\set_waveform_key_in~I\ : cycloneii_io
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
	padio => ww_set_waveform_key_in,
	combout => \set_waveform_key_in~combout\);

\key_1|state.s0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_1|state.s0~1_combout\ = !\set_waveform_key_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \set_waveform_key_in~combout\,
	combout => \key_1|state.s0~1_combout\);

\key_1|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_1|state.s0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_1|state.s0~regout\);

\key_1|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_1|state~16_combout\ = !\set_waveform_key_in~combout\ & !\key_1|state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_waveform_key_in~combout\,
	datad => \key_1|state.s0~regout\,
	combout => \key_1|state~16_combout\);

\key_1|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_1|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_1|state.s1~regout\);

\key_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_1|Selector1~0_combout\ = !\set_waveform_key_in~combout\ & !\key_1|state.s1~regout\ & \key_1|state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_waveform_key_in~combout\,
	datab => \key_1|state.s1~regout\,
	datad => \key_1|state.s0~regout\,
	combout => \key_1|Selector1~0_combout\);

\key_1|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \key_1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_1|state.s3~regout\);

\key_1|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_1|Selector0~1_combout\ = !\key_1|state.s2~regout\ & !\key_1|state.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_1|state.s2~regout\,
	datad => \key_1|state.s1~regout\,
	combout => \key_1|Selector0~1_combout\);

\key_1|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_1|Selector0~2_combout\ = \set_waveform_key_in~combout\ & (\key_1|key_out~regout\ # \key_1|Selector0~1_combout\) # !\set_waveform_key_in~combout\ & !\key_1|state.s3~regout\ & (\key_1|key_out~regout\ # \key_1|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_waveform_key_in~combout\,
	datab => \key_1|state.s3~regout\,
	datac => \key_1|key_out~regout\,
	datad => \key_1|Selector0~1_combout\,
	combout => \key_1|Selector0~2_combout\);

\key_1|key_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \key_1|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_1|key_out~regout\);

\key_coding_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Add0~0_combout\ = \key_coding_1|set_waveform_temp\(0) $ !\key_1|key_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_coding_1|set_waveform_temp\(0),
	datad => \key_1|key_out~regout\,
	combout => \key_coding_1|Add0~0_combout\);

\key_coding_1|set_waveform_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_1|ALT_INV_key_out~clkctrl_outclk\,
	sdata => \key_coding_1|Add0~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|set_waveform_temp\(0));

\DDS_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux0~0_combout\ = \key_coding_1|set_waveform_temp\(0) & (\DDS_1|u6|altsyncram_component|auto_generated|q_a\(9)) # !\key_coding_1|set_waveform_temp\(0) & \DDS_1|u7|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(9),
	datac => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(9),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux0~0_combout\);

\DDS_1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux0~1_combout\ = \key_coding_1|set_waveform_temp\(1) & (\key_coding_1|set_waveform_temp\(0) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(9) # !\key_coding_1|set_waveform_temp\(0) & (\DDS_1|Mux0~0_combout\)) # 
-- !\key_coding_1|set_waveform_temp\(1) & (\key_coding_1|set_waveform_temp\(0) & (\DDS_1|Mux0~0_combout\) # !\key_coding_1|set_waveform_temp\(0) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|set_waveform_temp\(1),
	datab => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(9),
	datac => \key_coding_1|set_waveform_temp\(0),
	datad => \DDS_1|Mux0~0_combout\,
	combout => \DDS_1|Mux0~1_combout\);

\DDS_1|Mult0|auto_generated|le5a[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(9) = \DDS_1|Mux0~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(2) & \key_coding_1|a_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(2),
	datab => \key_coding_1|a_control_temp\(3),
	datac => \DDS_1|Mux0~1_combout\,
	datad => \key_coding_1|a_control_temp\(1),
	combout => \DDS_1|Mult0|auto_generated|le5a\(9));

\DDS_1|Mult0|auto_generated|le4a[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(10) = \DDS_1|Mux0~1_combout\ & \key_coding_1|a_control_temp\(3) & (\key_coding_1|a_control_temp\(1) $ \key_coding_1|a_control_temp\(2)) # !\DDS_1|Mux0~1_combout\ & (\key_coding_1|a_control_temp\(3) $ 
-- (\key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(3),
	datab => \key_coding_1|a_control_temp\(1),
	datac => \DDS_1|Mux0~1_combout\,
	datad => \key_coding_1|a_control_temp\(2),
	combout => \DDS_1|Mult0|auto_generated|le4a\(10));

\DDS_1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux2~0_combout\ = \key_coding_1|set_waveform_temp\(0) & \DDS_1|u6|altsyncram_component|auto_generated|q_a\(7) # !\key_coding_1|set_waveform_temp\(0) & (\DDS_1|u7|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(7),
	datac => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(7),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux2~0_combout\);

\key_coding_1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \key_coding_1|Add0~1_combout\ = \key_coding_1|set_waveform_temp\(1) $ (\key_coding_1|set_waveform_temp\(0) & !\key_1|key_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|set_waveform_temp\(1),
	datac => \key_coding_1|set_waveform_temp\(0),
	datad => \key_1|key_out~regout\,
	combout => \key_coding_1|Add0~1_combout\);

\key_coding_1|set_waveform_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_1|ALT_INV_key_out~clkctrl_outclk\,
	sdata => \key_coding_1|Add0~1_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \key_coding_1|set_waveform_temp\(1));

\DDS_1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux2~1_combout\ = \DDS_1|u5|altsyncram_component|auto_generated|q_a\(7) & (\DDS_1|Mux2~0_combout\ # \key_coding_1|set_waveform_temp\(0) $ !\key_coding_1|set_waveform_temp\(1)) # !\DDS_1|u5|altsyncram_component|auto_generated|q_a\(7) & 
-- \DDS_1|Mux2~0_combout\ & (\key_coding_1|set_waveform_temp\(0) $ \key_coding_1|set_waveform_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(7),
	datab => \key_coding_1|set_waveform_temp\(0),
	datac => \DDS_1|Mux2~0_combout\,
	datad => \key_coding_1|set_waveform_temp\(1),
	combout => \DDS_1|Mux2~1_combout\);

\DDS_1|Mult0|auto_generated|le5a[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(7) = \DDS_1|Mux2~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \key_coding_1|a_control_temp\(2),
	datac => \key_coding_1|a_control_temp\(3),
	datad => \DDS_1|Mux2~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le5a\(7));

\DDS_1|Mult0|auto_generated|cs2a[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ = \key_coding_1|a_control_temp\(1) $ \key_coding_1|a_control_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datac => \key_coding_1|a_control_temp\(2),
	combout => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\);

\DDS_1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux1~0_combout\ = \key_coding_1|set_waveform_temp\(0) & \DDS_1|u6|altsyncram_component|auto_generated|q_a\(8) # !\key_coding_1|set_waveform_temp\(0) & (\DDS_1|u7|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(8),
	datac => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(8),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux1~0_combout\);

\DDS_1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux1~1_combout\ = \DDS_1|u5|altsyncram_component|auto_generated|q_a\(8) & (\DDS_1|Mux1~0_combout\ # \key_coding_1|set_waveform_temp\(0) $ !\key_coding_1|set_waveform_temp\(1)) # !\DDS_1|u5|altsyncram_component|auto_generated|q_a\(8) & 
-- \DDS_1|Mux1~0_combout\ & (\key_coding_1|set_waveform_temp\(0) $ \key_coding_1|set_waveform_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(8),
	datab => \key_coding_1|set_waveform_temp\(0),
	datac => \key_coding_1|set_waveform_temp\(1),
	datad => \DDS_1|Mux1~0_combout\,
	combout => \DDS_1|Mux1~1_combout\);

\DDS_1|Mult0|auto_generated|le4a[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(8) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ (\DDS_1|Mux1~1_combout\)) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- !\DDS_1|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(11),
	datab => \DDS_1|Mux2~1_combout\,
	datac => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datad => \DDS_1|Mux1~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(8));

\DDS_1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux3~0_combout\ = \key_coding_1|set_waveform_temp\(0) & (\DDS_1|u6|altsyncram_component|auto_generated|q_a\(6)) # !\key_coding_1|set_waveform_temp\(0) & \DDS_1|u7|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(6),
	datac => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(6),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux3~0_combout\);

\DDS_1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux3~1_combout\ = \DDS_1|u5|altsyncram_component|auto_generated|q_a\(6) & (\DDS_1|Mux3~0_combout\ # \key_coding_1|set_waveform_temp\(0) $ !\key_coding_1|set_waveform_temp\(1)) # !\DDS_1|u5|altsyncram_component|auto_generated|q_a\(6) & 
-- \DDS_1|Mux3~0_combout\ & (\key_coding_1|set_waveform_temp\(0) $ \key_coding_1|set_waveform_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(6),
	datab => \key_coding_1|set_waveform_temp\(0),
	datac => \DDS_1|Mux3~0_combout\,
	datad => \key_coding_1|set_waveform_temp\(1),
	combout => \DDS_1|Mux3~1_combout\);

\DDS_1|Mult0|auto_generated|le4a[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(7) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ (\DDS_1|Mux2~1_combout\)) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- !\DDS_1|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(11),
	datab => \DDS_1|Mux3~1_combout\,
	datac => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datad => \DDS_1|Mux2~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(7));

\DDS_1|Mult0|auto_generated|le3a[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(8) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ (\DDS_1|Mux1~1_combout\)) # !\key_coding_1|a_control_temp\(0) & \key_coding_1|a_control_temp\(1) & !\DDS_1|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \DDS_1|Mux2~1_combout\,
	datac => \key_coding_1|a_control_temp\(0),
	datad => \DDS_1|Mux1~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(8));

\DDS_1|Mult0|auto_generated|le3a[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(7) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ \DDS_1|Mux2~1_combout\) # !\key_coding_1|a_control_temp\(0) & !\DDS_1|Mux3~1_combout\ & \key_coding_1|a_control_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mux3~1_combout\,
	datab => \key_coding_1|a_control_temp\(1),
	datac => \key_coding_1|a_control_temp\(0),
	datad => \DDS_1|Mux2~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(7));

\DDS_1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux6~0_combout\ = \key_coding_1|set_waveform_temp\(0) & \DDS_1|u6|altsyncram_component|auto_generated|q_a\(3) # !\key_coding_1|set_waveform_temp\(0) & (\DDS_1|u7|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(3),
	datac => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(3),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux6~0_combout\);

\DDS_1|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux6~1_combout\ = \key_coding_1|set_waveform_temp\(0) & (\key_coding_1|set_waveform_temp\(1) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(3) # !\key_coding_1|set_waveform_temp\(1) & (\DDS_1|Mux6~0_combout\)) # 
-- !\key_coding_1|set_waveform_temp\(0) & (\key_coding_1|set_waveform_temp\(1) & (\DDS_1|Mux6~0_combout\) # !\key_coding_1|set_waveform_temp\(1) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|set_waveform_temp\(0),
	datab => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(3),
	datac => \key_coding_1|set_waveform_temp\(1),
	datad => \DDS_1|Mux6~0_combout\,
	combout => \DDS_1|Mux6~1_combout\);

\DDS_1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux5~0_combout\ = \key_coding_1|set_waveform_temp\(0) & (\DDS_1|u6|altsyncram_component|auto_generated|q_a\(4)) # !\key_coding_1|set_waveform_temp\(0) & \DDS_1|u7|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(4),
	datac => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(4),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux5~0_combout\);

\DDS_1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux5~1_combout\ = \key_coding_1|set_waveform_temp\(0) & (\key_coding_1|set_waveform_temp\(1) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(4) # !\key_coding_1|set_waveform_temp\(1) & (\DDS_1|Mux5~0_combout\)) # 
-- !\key_coding_1|set_waveform_temp\(0) & (\key_coding_1|set_waveform_temp\(1) & (\DDS_1|Mux5~0_combout\) # !\key_coding_1|set_waveform_temp\(1) & \DDS_1|u5|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|set_waveform_temp\(0),
	datab => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(4),
	datac => \key_coding_1|set_waveform_temp\(1),
	datad => \DDS_1|Mux5~0_combout\,
	combout => \DDS_1|Mux5~1_combout\);

\DDS_1|Mult0|auto_generated|le4a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(4) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ (\DDS_1|Mux5~1_combout\)) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- !\DDS_1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datab => \DDS_1|Mult0|auto_generated|le4a\(11),
	datac => \DDS_1|Mux6~1_combout\,
	datad => \DDS_1|Mux5~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(4));

\DDS_1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux4~0_combout\ = \key_coding_1|set_waveform_temp\(0) & (\DDS_1|u6|altsyncram_component|auto_generated|q_a\(5)) # !\key_coding_1|set_waveform_temp\(0) & \DDS_1|u7|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(5),
	datac => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(5),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux4~0_combout\);

\DDS_1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux4~1_combout\ = \DDS_1|u5|altsyncram_component|auto_generated|q_a\(5) & (\DDS_1|Mux4~0_combout\ # \key_coding_1|set_waveform_temp\(1) $ !\key_coding_1|set_waveform_temp\(0)) # !\DDS_1|u5|altsyncram_component|auto_generated|q_a\(5) & 
-- \DDS_1|Mux4~0_combout\ & (\key_coding_1|set_waveform_temp\(1) $ \key_coding_1|set_waveform_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(5),
	datab => \key_coding_1|set_waveform_temp\(1),
	datac => \key_coding_1|set_waveform_temp\(0),
	datad => \DDS_1|Mux4~0_combout\,
	combout => \DDS_1|Mux4~1_combout\);

\DDS_1|Mult0|auto_generated|le3a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(5) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ \DDS_1|Mux4~1_combout\) # !\key_coding_1|a_control_temp\(0) & \key_coding_1|a_control_temp\(1) & (!\DDS_1|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \DDS_1|Mux4~1_combout\,
	datac => \key_coding_1|a_control_temp\(0),
	datad => \DDS_1|Mux5~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(5));

\DDS_1|Mult0|auto_generated|le3a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(4) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ (\DDS_1|Mux5~1_combout\)) # !\key_coding_1|a_control_temp\(0) & \key_coding_1|a_control_temp\(1) & !\DDS_1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \key_coding_1|a_control_temp\(0),
	datac => \DDS_1|Mux6~1_combout\,
	datad => \DDS_1|Mux5~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(4));

\DDS_1|Mult0|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(3) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ \DDS_1|Mux6~1_combout\) # !\key_coding_1|a_control_temp\(0) & !\DDS_1|Mux7~1_combout\ & \key_coding_1|a_control_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mux7~1_combout\,
	datab => \key_coding_1|a_control_temp\(0),
	datac => \key_coding_1|a_control_temp\(1),
	datad => \DDS_1|Mux6~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(3));

\DDS_1|Mult0|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~33_combout\ = \DDS_1|Mult0|auto_generated|le3a\(2) & (\DDS_1|Mult0|auto_generated|le4a\(11) $ VCC) # !\DDS_1|Mult0|auto_generated|le3a\(2) & \DDS_1|Mult0|auto_generated|le4a\(11) & VCC
-- \DDS_1|Mult0|auto_generated|op_1~34\ = CARRY(\DDS_1|Mult0|auto_generated|le3a\(2) & \DDS_1|Mult0|auto_generated|le4a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le3a\(2),
	datab => \DDS_1|Mult0|auto_generated|le4a\(11),
	datad => VCC,
	combout => \DDS_1|Mult0|auto_generated|op_1~33_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~34\);

\DDS_1|Mult0|auto_generated|op_1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~41_combout\ = (\DDS_1|Mult0|auto_generated|le3a\(6) $ \DDS_1|Mult0|auto_generated|le4a\(4) $ !\DDS_1|Mult0|auto_generated|op_1~40\) # GND
-- \DDS_1|Mult0|auto_generated|op_1~42\ = CARRY(\DDS_1|Mult0|auto_generated|le3a\(6) & (\DDS_1|Mult0|auto_generated|le4a\(4) # !\DDS_1|Mult0|auto_generated|op_1~40\) # !\DDS_1|Mult0|auto_generated|le3a\(6) & \DDS_1|Mult0|auto_generated|le4a\(4) & 
-- !\DDS_1|Mult0|auto_generated|op_1~40\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le3a\(6),
	datab => \DDS_1|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~40\,
	combout => \DDS_1|Mult0|auto_generated|op_1~41_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~42\);

\DDS_1|Mult0|auto_generated|op_1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~43_combout\ = \DDS_1|Mult0|auto_generated|le4a\(5) & (\DDS_1|Mult0|auto_generated|le3a\(7) & \DDS_1|Mult0|auto_generated|op_1~42\ & VCC # !\DDS_1|Mult0|auto_generated|le3a\(7) & !\DDS_1|Mult0|auto_generated|op_1~42\) # 
-- !\DDS_1|Mult0|auto_generated|le4a\(5) & (\DDS_1|Mult0|auto_generated|le3a\(7) & !\DDS_1|Mult0|auto_generated|op_1~42\ # !\DDS_1|Mult0|auto_generated|le3a\(7) & (\DDS_1|Mult0|auto_generated|op_1~42\ # GND))
-- \DDS_1|Mult0|auto_generated|op_1~44\ = CARRY(\DDS_1|Mult0|auto_generated|le4a\(5) & !\DDS_1|Mult0|auto_generated|le3a\(7) & !\DDS_1|Mult0|auto_generated|op_1~42\ # !\DDS_1|Mult0|auto_generated|le4a\(5) & (!\DDS_1|Mult0|auto_generated|op_1~42\ # 
-- !\DDS_1|Mult0|auto_generated|le3a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(5),
	datab => \DDS_1|Mult0|auto_generated|le3a\(7),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~42\,
	combout => \DDS_1|Mult0|auto_generated|op_1~43_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~44\);

\DDS_1|Mult0|auto_generated|op_1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~45_combout\ = (\DDS_1|Mult0|auto_generated|le4a\(6) $ \DDS_1|Mult0|auto_generated|le3a\(8) $ !\DDS_1|Mult0|auto_generated|op_1~44\) # GND
-- \DDS_1|Mult0|auto_generated|op_1~46\ = CARRY(\DDS_1|Mult0|auto_generated|le4a\(6) & (\DDS_1|Mult0|auto_generated|le3a\(8) # !\DDS_1|Mult0|auto_generated|op_1~44\) # !\DDS_1|Mult0|auto_generated|le4a\(6) & \DDS_1|Mult0|auto_generated|le3a\(8) & 
-- !\DDS_1|Mult0|auto_generated|op_1~44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(6),
	datab => \DDS_1|Mult0|auto_generated|le3a\(8),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~44\,
	combout => \DDS_1|Mult0|auto_generated|op_1~45_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~46\);

\DDS_1|Mult0|auto_generated|op_1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~47_combout\ = \DDS_1|Mult0|auto_generated|le3a\(9) & (\DDS_1|Mult0|auto_generated|le4a\(7) & \DDS_1|Mult0|auto_generated|op_1~46\ & VCC # !\DDS_1|Mult0|auto_generated|le4a\(7) & !\DDS_1|Mult0|auto_generated|op_1~46\) # 
-- !\DDS_1|Mult0|auto_generated|le3a\(9) & (\DDS_1|Mult0|auto_generated|le4a\(7) & !\DDS_1|Mult0|auto_generated|op_1~46\ # !\DDS_1|Mult0|auto_generated|le4a\(7) & (\DDS_1|Mult0|auto_generated|op_1~46\ # GND))
-- \DDS_1|Mult0|auto_generated|op_1~48\ = CARRY(\DDS_1|Mult0|auto_generated|le3a\(9) & !\DDS_1|Mult0|auto_generated|le4a\(7) & !\DDS_1|Mult0|auto_generated|op_1~46\ # !\DDS_1|Mult0|auto_generated|le3a\(9) & (!\DDS_1|Mult0|auto_generated|op_1~46\ # 
-- !\DDS_1|Mult0|auto_generated|le4a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le3a\(9),
	datab => \DDS_1|Mult0|auto_generated|le4a\(7),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~46\,
	combout => \DDS_1|Mult0|auto_generated|op_1~47_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~48\);

\DDS_1|Mult0|auto_generated|op_1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~51_combout\ = \DDS_1|Mult0|auto_generated|le4a\(9) & (\DDS_1|Mult0|auto_generated|le5a\(7) & \DDS_1|Mult0|auto_generated|op_1~50\ & VCC # !\DDS_1|Mult0|auto_generated|le5a\(7) & !\DDS_1|Mult0|auto_generated|op_1~50\) # 
-- !\DDS_1|Mult0|auto_generated|le4a\(9) & (\DDS_1|Mult0|auto_generated|le5a\(7) & !\DDS_1|Mult0|auto_generated|op_1~50\ # !\DDS_1|Mult0|auto_generated|le5a\(7) & (\DDS_1|Mult0|auto_generated|op_1~50\ # GND))
-- \DDS_1|Mult0|auto_generated|op_1~52\ = CARRY(\DDS_1|Mult0|auto_generated|le4a\(9) & !\DDS_1|Mult0|auto_generated|le5a\(7) & !\DDS_1|Mult0|auto_generated|op_1~50\ # !\DDS_1|Mult0|auto_generated|le4a\(9) & (!\DDS_1|Mult0|auto_generated|op_1~50\ # 
-- !\DDS_1|Mult0|auto_generated|le5a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(9),
	datab => \DDS_1|Mult0|auto_generated|le5a\(7),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~50\,
	combout => \DDS_1|Mult0|auto_generated|op_1~51_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~52\);

\DDS_1|Mult0|auto_generated|op_1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~53_combout\ = (\DDS_1|Mult0|auto_generated|le5a\(8) $ \DDS_1|Mult0|auto_generated|le4a\(10) $ !\DDS_1|Mult0|auto_generated|op_1~52\) # GND
-- \DDS_1|Mult0|auto_generated|op_1~54\ = CARRY(\DDS_1|Mult0|auto_generated|le5a\(8) & (\DDS_1|Mult0|auto_generated|le4a\(10) # !\DDS_1|Mult0|auto_generated|op_1~52\) # !\DDS_1|Mult0|auto_generated|le5a\(8) & \DDS_1|Mult0|auto_generated|le4a\(10) & 
-- !\DDS_1|Mult0|auto_generated|op_1~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le5a\(8),
	datab => \DDS_1|Mult0|auto_generated|le4a\(10),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_1~52\,
	combout => \DDS_1|Mult0|auto_generated|op_1~53_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_1~54\);

\DDS_1|Mult0|auto_generated|op_1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_1~55_combout\ = \DDS_1|Mult0|auto_generated|le4a\(11) $ \DDS_1|Mult0|auto_generated|op_1~54\ $ !\DDS_1|Mult0|auto_generated|le5a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|le4a\(11),
	datad => \DDS_1|Mult0|auto_generated|le5a\(9),
	cin => \DDS_1|Mult0|auto_generated|op_1~54\,
	combout => \DDS_1|Mult0|auto_generated|op_1~55_combout\);

\DDS_1|Mult0|auto_generated|le5a[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(6) = \DDS_1|Mux3~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(3),
	datab => \key_coding_1|a_control_temp\(1),
	datac => \DDS_1|Mux3~1_combout\,
	datad => \key_coding_1|a_control_temp\(2),
	combout => \DDS_1|Mult0|auto_generated|le5a\(6));

\DDS_1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux8~0_combout\ = \key_coding_1|set_waveform_temp\(0) & \DDS_1|u6|altsyncram_component|auto_generated|q_a\(1) # !\key_coding_1|set_waveform_temp\(0) & (\DDS_1|u7|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(1),
	datab => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(1),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux8~0_combout\);

\DDS_1|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux8~1_combout\ = \DDS_1|u5|altsyncram_component|auto_generated|q_a\(1) & (\DDS_1|Mux8~0_combout\ # \key_coding_1|set_waveform_temp\(0) $ !\key_coding_1|set_waveform_temp\(1)) # !\DDS_1|u5|altsyncram_component|auto_generated|q_a\(1) & 
-- \DDS_1|Mux8~0_combout\ & (\key_coding_1|set_waveform_temp\(0) $ \key_coding_1|set_waveform_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(1),
	datab => \key_coding_1|set_waveform_temp\(0),
	datac => \DDS_1|Mux8~0_combout\,
	datad => \key_coding_1|set_waveform_temp\(1),
	combout => \DDS_1|Mux8~1_combout\);

\DDS_1|Mult0|auto_generated|le5a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(1) = \DDS_1|Mux8~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(2) & \key_coding_1|a_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(2),
	datab => \key_coding_1|a_control_temp\(1),
	datac => \DDS_1|Mux8~1_combout\,
	datad => \key_coding_1|a_control_temp\(3),
	combout => \DDS_1|Mult0|auto_generated|le5a\(1));

\DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "squ_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:DDS_1|squ:u7|altsyncram:altsyncram_component|altsyncram_d281:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DDS_1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\DDS_1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux9~0_combout\ = \key_coding_1|set_waveform_temp\(0) & \DDS_1|u6|altsyncram_component|auto_generated|q_a\(0) # !\key_coding_1|set_waveform_temp\(0) & (\DDS_1|u7|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|u6|altsyncram_component|auto_generated|q_a\(0),
	datac => \DDS_1|u7|altsyncram_component|auto_generated|q_a\(0),
	datad => \key_coding_1|set_waveform_temp\(0),
	combout => \DDS_1|Mux9~0_combout\);

\DDS_1|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mux9~1_combout\ = \DDS_1|u5|altsyncram_component|auto_generated|q_a\(0) & (\DDS_1|Mux9~0_combout\ # \key_coding_1|set_waveform_temp\(0) $ !\key_coding_1|set_waveform_temp\(1)) # !\DDS_1|u5|altsyncram_component|auto_generated|q_a\(0) & 
-- \DDS_1|Mux9~0_combout\ & (\key_coding_1|set_waveform_temp\(0) $ \key_coding_1|set_waveform_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|u5|altsyncram_component|auto_generated|q_a\(0),
	datab => \key_coding_1|set_waveform_temp\(0),
	datac => \key_coding_1|set_waveform_temp\(1),
	datad => \DDS_1|Mux9~0_combout\,
	combout => \DDS_1|Mux9~1_combout\);

\DDS_1|Mult0|auto_generated|le5a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le5a\(0) = \DDS_1|Mux9~1_combout\ & (\key_coding_1|a_control_temp\(3) # \key_coding_1|a_control_temp\(1) & \key_coding_1|a_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(3),
	datab => \key_coding_1|a_control_temp\(1),
	datac => \DDS_1|Mux9~1_combout\,
	datad => \key_coding_1|a_control_temp\(2),
	combout => \DDS_1|Mult0|auto_generated|le5a\(0));

\DDS_1|Mult0|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le4a\(1) = \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(11) $ \DDS_1|Mux8~1_combout\) # !\DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\ & \DDS_1|Mult0|auto_generated|le4a\(11) & 
-- (!\DDS_1|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(11),
	datab => \DDS_1|Mult0|auto_generated|cs2a[1]~4_combout\,
	datac => \DDS_1|Mux8~1_combout\,
	datad => \DDS_1|Mux9~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le4a\(1));

\DDS_1|Mult0|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(1) = \key_coding_1|a_control_temp\(0) & (\key_coding_1|a_control_temp\(1) $ \DDS_1|Mux8~1_combout\) # !\key_coding_1|a_control_temp\(0) & \key_coding_1|a_control_temp\(1) & (!\DDS_1|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \key_coding_1|a_control_temp\(0),
	datac => \DDS_1|Mux8~1_combout\,
	datad => \DDS_1|Mux9~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(1));

\DDS_1|Mult0|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|le3a\(0) = \key_coding_1|a_control_temp\(1) $ (\key_coding_1|a_control_temp\(0) & \DDS_1|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_coding_1|a_control_temp\(1),
	datac => \key_coding_1|a_control_temp\(0),
	datad => \DDS_1|Mux9~1_combout\,
	combout => \DDS_1|Mult0|auto_generated|le3a\(0));

\DDS_1|Mult0|auto_generated|op_3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~40_cout\ = CARRY(\key_coding_1|a_control_temp\(1) & \DDS_1|Mult0|auto_generated|le3a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \DDS_1|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	cout => \DDS_1|Mult0|auto_generated|op_3~40_cout\);

\DDS_1|Mult0|auto_generated|op_3~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~41_combout\ = \DDS_1|Mult0|auto_generated|le3a\(1) & !\DDS_1|Mult0|auto_generated|op_3~40_cout\ # !\DDS_1|Mult0|auto_generated|le3a\(1) & (\DDS_1|Mult0|auto_generated|op_3~40_cout\ # GND)
-- \DDS_1|Mult0|auto_generated|op_3~42\ = CARRY(!\DDS_1|Mult0|auto_generated|op_3~40_cout\ # !\DDS_1|Mult0|auto_generated|le3a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~40_cout\,
	combout => \DDS_1|Mult0|auto_generated|op_3~41_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~42\);

\DDS_1|Mult0|auto_generated|op_3~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~43_combout\ = (\DDS_1|Mult0|auto_generated|le4a\(0) $ \DDS_1|Mult0|auto_generated|op_1~33_combout\ $ !\DDS_1|Mult0|auto_generated|op_3~42\) # GND
-- \DDS_1|Mult0|auto_generated|op_3~44\ = CARRY(\DDS_1|Mult0|auto_generated|le4a\(0) & (\DDS_1|Mult0|auto_generated|op_1~33_combout\ # !\DDS_1|Mult0|auto_generated|op_3~42\) # !\DDS_1|Mult0|auto_generated|le4a\(0) & 
-- \DDS_1|Mult0|auto_generated|op_1~33_combout\ & !\DDS_1|Mult0|auto_generated|op_3~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le4a\(0),
	datab => \DDS_1|Mult0|auto_generated|op_1~33_combout\,
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~42\,
	combout => \DDS_1|Mult0|auto_generated|op_3~43_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~44\);

\DDS_1|Mult0|auto_generated|op_3~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~45_combout\ = \DDS_1|Mult0|auto_generated|op_1~35_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(1) & \DDS_1|Mult0|auto_generated|op_3~44\ & VCC # !\DDS_1|Mult0|auto_generated|le4a\(1) & 
-- !\DDS_1|Mult0|auto_generated|op_3~44\) # !\DDS_1|Mult0|auto_generated|op_1~35_combout\ & (\DDS_1|Mult0|auto_generated|le4a\(1) & !\DDS_1|Mult0|auto_generated|op_3~44\ # !\DDS_1|Mult0|auto_generated|le4a\(1) & (\DDS_1|Mult0|auto_generated|op_3~44\ # GND))
-- \DDS_1|Mult0|auto_generated|op_3~46\ = CARRY(\DDS_1|Mult0|auto_generated|op_1~35_combout\ & !\DDS_1|Mult0|auto_generated|le4a\(1) & !\DDS_1|Mult0|auto_generated|op_3~44\ # !\DDS_1|Mult0|auto_generated|op_1~35_combout\ & 
-- (!\DDS_1|Mult0|auto_generated|op_3~44\ # !\DDS_1|Mult0|auto_generated|le4a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_1~35_combout\,
	datab => \DDS_1|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~44\,
	combout => \DDS_1|Mult0|auto_generated|op_3~45_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~46\);

\DDS_1|Mult0|auto_generated|op_3~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~47_combout\ = (\DDS_1|Mult0|auto_generated|op_1~37_combout\ $ \DDS_1|Mult0|auto_generated|le5a\(0) $ !\DDS_1|Mult0|auto_generated|op_3~46\) # GND
-- \DDS_1|Mult0|auto_generated|op_3~48\ = CARRY(\DDS_1|Mult0|auto_generated|op_1~37_combout\ & (\DDS_1|Mult0|auto_generated|le5a\(0) # !\DDS_1|Mult0|auto_generated|op_3~46\) # !\DDS_1|Mult0|auto_generated|op_1~37_combout\ & 
-- \DDS_1|Mult0|auto_generated|le5a\(0) & !\DDS_1|Mult0|auto_generated|op_3~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_1~37_combout\,
	datab => \DDS_1|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~46\,
	combout => \DDS_1|Mult0|auto_generated|op_3~47_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~48\);

\DDS_1|Mult0|auto_generated|op_3~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~49_combout\ = \DDS_1|Mult0|auto_generated|op_1~39_combout\ & (\DDS_1|Mult0|auto_generated|le5a\(1) & \DDS_1|Mult0|auto_generated|op_3~48\ & VCC # !\DDS_1|Mult0|auto_generated|le5a\(1) & 
-- !\DDS_1|Mult0|auto_generated|op_3~48\) # !\DDS_1|Mult0|auto_generated|op_1~39_combout\ & (\DDS_1|Mult0|auto_generated|le5a\(1) & !\DDS_1|Mult0|auto_generated|op_3~48\ # !\DDS_1|Mult0|auto_generated|le5a\(1) & (\DDS_1|Mult0|auto_generated|op_3~48\ # GND))
-- \DDS_1|Mult0|auto_generated|op_3~50\ = CARRY(\DDS_1|Mult0|auto_generated|op_1~39_combout\ & !\DDS_1|Mult0|auto_generated|le5a\(1) & !\DDS_1|Mult0|auto_generated|op_3~48\ # !\DDS_1|Mult0|auto_generated|op_1~39_combout\ & 
-- (!\DDS_1|Mult0|auto_generated|op_3~48\ # !\DDS_1|Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_1~39_combout\,
	datab => \DDS_1|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~48\,
	combout => \DDS_1|Mult0|auto_generated|op_3~49_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~50\);

\DDS_1|Mult0|auto_generated|op_3~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~51_combout\ = (\DDS_1|Mult0|auto_generated|le5a\(2) $ \DDS_1|Mult0|auto_generated|op_1~41_combout\ $ !\DDS_1|Mult0|auto_generated|op_3~50\) # GND
-- \DDS_1|Mult0|auto_generated|op_3~52\ = CARRY(\DDS_1|Mult0|auto_generated|le5a\(2) & (\DDS_1|Mult0|auto_generated|op_1~41_combout\ # !\DDS_1|Mult0|auto_generated|op_3~50\) # !\DDS_1|Mult0|auto_generated|le5a\(2) & 
-- \DDS_1|Mult0|auto_generated|op_1~41_combout\ & !\DDS_1|Mult0|auto_generated|op_3~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le5a\(2),
	datab => \DDS_1|Mult0|auto_generated|op_1~41_combout\,
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~50\,
	combout => \DDS_1|Mult0|auto_generated|op_3~51_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~52\);

\DDS_1|Mult0|auto_generated|op_3~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~53_combout\ = \DDS_1|Mult0|auto_generated|le5a\(3) & (\DDS_1|Mult0|auto_generated|op_1~43_combout\ & \DDS_1|Mult0|auto_generated|op_3~52\ & VCC # !\DDS_1|Mult0|auto_generated|op_1~43_combout\ & 
-- !\DDS_1|Mult0|auto_generated|op_3~52\) # !\DDS_1|Mult0|auto_generated|le5a\(3) & (\DDS_1|Mult0|auto_generated|op_1~43_combout\ & !\DDS_1|Mult0|auto_generated|op_3~52\ # !\DDS_1|Mult0|auto_generated|op_1~43_combout\ & (\DDS_1|Mult0|auto_generated|op_3~52\ 
-- # GND))
-- \DDS_1|Mult0|auto_generated|op_3~54\ = CARRY(\DDS_1|Mult0|auto_generated|le5a\(3) & !\DDS_1|Mult0|auto_generated|op_1~43_combout\ & !\DDS_1|Mult0|auto_generated|op_3~52\ # !\DDS_1|Mult0|auto_generated|le5a\(3) & (!\DDS_1|Mult0|auto_generated|op_3~52\ # 
-- !\DDS_1|Mult0|auto_generated|op_1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le5a\(3),
	datab => \DDS_1|Mult0|auto_generated|op_1~43_combout\,
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~52\,
	combout => \DDS_1|Mult0|auto_generated|op_3~53_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~54\);

\DDS_1|Mult0|auto_generated|op_3~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~55_combout\ = (\DDS_1|Mult0|auto_generated|le5a\(4) $ \DDS_1|Mult0|auto_generated|op_1~45_combout\ $ !\DDS_1|Mult0|auto_generated|op_3~54\) # GND
-- \DDS_1|Mult0|auto_generated|op_3~56\ = CARRY(\DDS_1|Mult0|auto_generated|le5a\(4) & (\DDS_1|Mult0|auto_generated|op_1~45_combout\ # !\DDS_1|Mult0|auto_generated|op_3~54\) # !\DDS_1|Mult0|auto_generated|le5a\(4) & 
-- \DDS_1|Mult0|auto_generated|op_1~45_combout\ & !\DDS_1|Mult0|auto_generated|op_3~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le5a\(4),
	datab => \DDS_1|Mult0|auto_generated|op_1~45_combout\,
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~54\,
	combout => \DDS_1|Mult0|auto_generated|op_3~55_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~56\);

\DDS_1|Mult0|auto_generated|op_3~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~57_combout\ = \DDS_1|Mult0|auto_generated|le5a\(5) & (\DDS_1|Mult0|auto_generated|op_1~47_combout\ & \DDS_1|Mult0|auto_generated|op_3~56\ & VCC # !\DDS_1|Mult0|auto_generated|op_1~47_combout\ & 
-- !\DDS_1|Mult0|auto_generated|op_3~56\) # !\DDS_1|Mult0|auto_generated|le5a\(5) & (\DDS_1|Mult0|auto_generated|op_1~47_combout\ & !\DDS_1|Mult0|auto_generated|op_3~56\ # !\DDS_1|Mult0|auto_generated|op_1~47_combout\ & (\DDS_1|Mult0|auto_generated|op_3~56\ 
-- # GND))
-- \DDS_1|Mult0|auto_generated|op_3~58\ = CARRY(\DDS_1|Mult0|auto_generated|le5a\(5) & !\DDS_1|Mult0|auto_generated|op_1~47_combout\ & !\DDS_1|Mult0|auto_generated|op_3~56\ # !\DDS_1|Mult0|auto_generated|le5a\(5) & (!\DDS_1|Mult0|auto_generated|op_3~56\ # 
-- !\DDS_1|Mult0|auto_generated|op_1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|le5a\(5),
	datab => \DDS_1|Mult0|auto_generated|op_1~47_combout\,
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~56\,
	combout => \DDS_1|Mult0|auto_generated|op_3~57_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~58\);

\DDS_1|Mult0|auto_generated|op_3~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~59_combout\ = (\DDS_1|Mult0|auto_generated|op_1~49_combout\ $ \DDS_1|Mult0|auto_generated|le5a\(6) $ !\DDS_1|Mult0|auto_generated|op_3~58\) # GND
-- \DDS_1|Mult0|auto_generated|op_3~60\ = CARRY(\DDS_1|Mult0|auto_generated|op_1~49_combout\ & (\DDS_1|Mult0|auto_generated|le5a\(6) # !\DDS_1|Mult0|auto_generated|op_3~58\) # !\DDS_1|Mult0|auto_generated|op_1~49_combout\ & 
-- \DDS_1|Mult0|auto_generated|le5a\(6) & !\DDS_1|Mult0|auto_generated|op_3~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_1~49_combout\,
	datab => \DDS_1|Mult0|auto_generated|le5a\(6),
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~58\,
	combout => \DDS_1|Mult0|auto_generated|op_3~59_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~60\);

\DDS_1|Mult0|auto_generated|op_3~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~61_combout\ = \key_coding_1|a_control_temp\(1) & (\DDS_1|Mult0|auto_generated|op_1~51_combout\ & \DDS_1|Mult0|auto_generated|op_3~60\ & VCC # !\DDS_1|Mult0|auto_generated|op_1~51_combout\ & 
-- !\DDS_1|Mult0|auto_generated|op_3~60\) # !\key_coding_1|a_control_temp\(1) & (\DDS_1|Mult0|auto_generated|op_1~51_combout\ & !\DDS_1|Mult0|auto_generated|op_3~60\ # !\DDS_1|Mult0|auto_generated|op_1~51_combout\ & (\DDS_1|Mult0|auto_generated|op_3~60\ # 
-- GND))
-- \DDS_1|Mult0|auto_generated|op_3~62\ = CARRY(\key_coding_1|a_control_temp\(1) & !\DDS_1|Mult0|auto_generated|op_1~51_combout\ & !\DDS_1|Mult0|auto_generated|op_3~60\ # !\key_coding_1|a_control_temp\(1) & (!\DDS_1|Mult0|auto_generated|op_3~60\ # 
-- !\DDS_1|Mult0|auto_generated|op_1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \DDS_1|Mult0|auto_generated|op_1~51_combout\,
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~60\,
	combout => \DDS_1|Mult0|auto_generated|op_3~61_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~62\);

\DDS_1|Mult0|auto_generated|op_3~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~63_combout\ = (\key_coding_1|a_control_temp\(1) $ \DDS_1|Mult0|auto_generated|op_1~53_combout\ $ !\DDS_1|Mult0|auto_generated|op_3~62\) # GND
-- \DDS_1|Mult0|auto_generated|op_3~64\ = CARRY(\key_coding_1|a_control_temp\(1) & (\DDS_1|Mult0|auto_generated|op_1~53_combout\ # !\DDS_1|Mult0|auto_generated|op_3~62\) # !\key_coding_1|a_control_temp\(1) & \DDS_1|Mult0|auto_generated|op_1~53_combout\ & 
-- !\DDS_1|Mult0|auto_generated|op_3~62\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datab => \DDS_1|Mult0|auto_generated|op_1~53_combout\,
	datad => VCC,
	cin => \DDS_1|Mult0|auto_generated|op_3~62\,
	combout => \DDS_1|Mult0|auto_generated|op_3~63_combout\,
	cout => \DDS_1|Mult0|auto_generated|op_3~64\);

\DDS_1|Mult0|auto_generated|op_3~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Mult0|auto_generated|op_3~65_combout\ = \key_coding_1|a_control_temp\(1) $ \DDS_1|Mult0|auto_generated|op_3~64\ $ !\DDS_1|Mult0|auto_generated|op_1~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key_coding_1|a_control_temp\(1),
	datad => \DDS_1|Mult0|auto_generated|op_1~55_combout\,
	cin => \DDS_1|Mult0|auto_generated|op_3~64\,
	combout => \DDS_1|Mult0|auto_generated|op_3~65_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \DDS_1|Mult0|auto_generated|op_3~61_combout\ $ VCC
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\DDS_1|Mult0|auto_generated|op_3~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|op_3~61_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~104_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Mult0|auto_generated|op_3~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \DDS_1|Mult0|auto_generated|op_3~59_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~104_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~109_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~104_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~109_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~109_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[15]~104_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~101_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Mult0|auto_generated|op_3~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \DDS_1|Mult0|auto_generated|op_3~65_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~101_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Mult0|auto_generated|op_3~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \DDS_1|Mult0|auto_generated|op_3~63_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~103_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[16]~108_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~107_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[17]~102_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~106_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~101_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~106_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[18]~101_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~96_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~96_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\DDS_1|Mult0|auto_generated|op_3~61_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \DDS_1|Mult0|auto_generated|op_3~61_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[21]~98_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~94_combout\ = \DDS_1|Mult0|auto_generated|op_3~57_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~57_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~94_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~99_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~94_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~99_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~99_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[20]~94_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~244_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~96_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~244_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[23]~96_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \DDS_1|Mult0|auto_generated|op_3~59_combout\ # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_3~59_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~89_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \DDS_1|Mult0|auto_generated|op_3~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \DDS_1|Mult0|auto_generated|op_3~55_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~89_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~89_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[25]~89_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[26]~88_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~87_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[27]~246_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~236_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\ # 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[22]~245_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~236_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~86_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~236_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~86_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[28]~236_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\ = \DDS_1|Mult0|auto_generated|op_3~55_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~55_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~74_combout\ = \DDS_1|Mult0|auto_generated|op_3~53_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~53_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~74_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~79_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~74_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~79_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~79_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[30]~74_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~247_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~237_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~237_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~66_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~66_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \DDS_1|Mult0|auto_generated|op_3~55_combout\ # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_3~55_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\ = \DDS_1|Mult0|auto_generated|op_3~53_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~53_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[36]~63_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\ = \DDS_1|Mult0|auto_generated|op_3~51_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~51_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~238_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~66_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~238_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~239_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\ # 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[37]~248_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~239_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \DDS_1|Mult0|auto_generated|op_3~53_combout\ # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_3~53_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53_combout\ = \DDS_1|Mult0|auto_generated|op_3~51_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~51_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ = \DDS_1|Mult0|auto_generated|op_3~49_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~49_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~58_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[41]~53_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~57_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[42]~249_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~56_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~239_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~56_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[43]~239_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

\TLC5615_1|DIN_REG[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[4]~6_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[4]~6_combout\);

\TLC5615_1|DIN_REG[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(4));

\TLC5615_1|DIN_REG[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[6]~8_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[6]~8_combout\);

\TLC5615_1|DIN_REG[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(6));

\TLC5615_1|DIN_REG[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[5]~7_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[5]~7_combout\);

\TLC5615_1|DIN_REG[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(5));

\TLC5615_1|COUNT2[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT2[0]~7_combout\ = !\TLC5615_1|COUNT2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TLC5615_1|COUNT2\(0),
	combout => \TLC5615_1|COUNT2[0]~7_combout\);

\TLC5615_1|COUNT2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT2[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT2\(0));

\TLC5615_1|COUNT2[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT2[1]~5_combout\ = \TLC5615_1|COUNT2\(1) $ \TLC5615_1|COUNT2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TLC5615_1|COUNT2\(1),
	datad => \TLC5615_1|COUNT2\(0),
	combout => \TLC5615_1|COUNT2[1]~5_combout\);

\TLC5615_1|COUNT2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT2\(1));

\TLC5615_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|Mux0~0_combout\ = \TLC5615_1|COUNT2\(0) & (\TLC5615_1|DIN_REG\(5) # \TLC5615_1|COUNT2\(1)) # !\TLC5615_1|COUNT2\(0) & \TLC5615_1|DIN_REG\(6) & (!\TLC5615_1|COUNT2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT2\(0),
	datab => \TLC5615_1|DIN_REG\(6),
	datac => \TLC5615_1|DIN_REG\(5),
	datad => \TLC5615_1|COUNT2\(1),
	combout => \TLC5615_1|Mux0~0_combout\);

\TLC5615_1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|Mux0~1_combout\ = \TLC5615_1|Mux0~0_combout\ & (\TLC5615_1|DIN_REG\(3) # !\TLC5615_1|COUNT2\(1)) # !\TLC5615_1|Mux0~0_combout\ & (\TLC5615_1|DIN_REG\(4) & \TLC5615_1|COUNT2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|DIN_REG\(3),
	datab => \TLC5615_1|DIN_REG\(4),
	datac => \TLC5615_1|Mux0~0_combout\,
	datad => \TLC5615_1|COUNT2\(1),
	combout => \TLC5615_1|Mux0~1_combout\);

\TLC5615_1|COUNT2[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT2[2]~6_combout\ = \TLC5615_1|COUNT2\(2) $ (\TLC5615_1|COUNT2\(0) & \TLC5615_1|COUNT2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT2\(0),
	datac => \TLC5615_1|COUNT2\(2),
	datad => \TLC5615_1|COUNT2\(1),
	combout => \TLC5615_1|COUNT2[2]~6_combout\);

\TLC5615_1|COUNT2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT2[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT2\(2));

\TLC5615_1|COUNT2[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT2[3]~4_combout\ = \TLC5615_1|COUNT2\(3) $ (\TLC5615_1|COUNT2\(0) & \TLC5615_1|COUNT2\(2) & \TLC5615_1|COUNT2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT2\(0),
	datab => \TLC5615_1|COUNT2\(2),
	datac => \TLC5615_1|COUNT2\(3),
	datad => \TLC5615_1|COUNT2\(1),
	combout => \TLC5615_1|COUNT2[3]~4_combout\);

\TLC5615_1|COUNT2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT2[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT2\(3));

\TLC5615_1|DIN~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN~1_combout\ = \TLC5615_1|DIN~0_combout\ & \TLC5615_1|COUNT2\(3) & !\TLC5615_1|COUNT2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|DIN~0_combout\,
	datab => \TLC5615_1|COUNT2\(3),
	datad => \TLC5615_1|COUNT2\(1),
	combout => \TLC5615_1|DIN~1_combout\);

\TLC5615_1|DIN_REG[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[9]~3_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[9]~3_combout\);

\TLC5615_1|DIN_REG[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(9));

\TLC5615_1|DIN~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN~2_combout\ = !\TLC5615_1|COUNT2\(3) & (\TLC5615_1|COUNT2\(1) & \TLC5615_1|DIN_REG\(7) # !\TLC5615_1|COUNT2\(1) & (\TLC5615_1|DIN_REG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|DIN_REG\(7),
	datab => \TLC5615_1|DIN_REG\(9),
	datac => \TLC5615_1|COUNT2\(3),
	datad => \TLC5615_1|COUNT2\(1),
	combout => \TLC5615_1|DIN~2_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\ = \DDS_1|Mult0|auto_generated|op_3~47_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DDS_1|Mult0|auto_generated|op_3~47_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~49_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~49_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~49_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[45]~44_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~46_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~46_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~47_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43_combout\ = \DDS_1|Mult0|auto_generated|op_3~49_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~49_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43_combout\
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~48_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[46]~43_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~240_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~46_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~240_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[48]~46_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (\DDS_1|Mult0|auto_generated|op_3~51_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \DDS_1|Mult0|auto_generated|op_3~51_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~241_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[47]~250_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~241_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~37_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[51]~38_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~39_combout\ = \DDS_1|Mult0|auto_generated|op_3~45_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~45_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~39_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~34_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~39_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~34_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~34_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[50]~39_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~36_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~241_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~36_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[53]~241_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- \DDS_1|Mult0|auto_generated|op_3~47_combout\ # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_3~47_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23_combout\ = \DDS_1|Mult0|auto_generated|op_3~45_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~45_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[56]~23_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~24_combout\ = \DDS_1|Mult0|auto_generated|op_3~43_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~43_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~24_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (\DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~29_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~24_combout\)
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~29_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~29_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[55]~24_combout\,
	datad => VCC,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\))
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~27_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[57]~252_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\DDS_1|Mult0|auto_generated|op_3~49_combout\) # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \DDS_1|Mult0|auto_generated|op_3~49_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~242_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\ # 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[52]~251_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~242_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~26_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~242_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~26_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[58]~242_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~16_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~16_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~253_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & 
-- \DDS_1|Mult0|auto_generated|op_3~45_combout\ # !\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (\DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Mult0|auto_generated|op_3~45_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~253_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~18_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~18_combout\);

\DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~19_combout\ = \DDS_1|Mult0|auto_generated|op_3~41_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DDS_1|Mult0|auto_generated|op_3~41_combout\,
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~19_combout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\ = CARRY(\DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~14_combout\ # \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~14_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[60]~19_combout\,
	datad => VCC,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~13_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~18_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~13_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[61]~18_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\ & (\DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~17_combout\ # 
-- \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~253_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~17_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[62]~253_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ = CARRY(!\DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~243_combout\ & !\DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~16_combout\ & 
-- !\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~243_combout\,
	datab => \DDS_1|Div0|auto_generated|divider|divider|StageOut[63]~16_combout\,
	datad => VCC,
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\,
	cout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\);

\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\,
	combout => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\);

\TLC5615_1|DIN_REG[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[0]~4_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[0]~4_combout\);

\TLC5615_1|DIN_REG[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(0));

\TLC5615_1|DIN_REG[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN_REG[8]~5_combout\ = !\DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DDS_1|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \TLC5615_1|DIN_REG[8]~5_combout\);

\TLC5615_1|DIN_REG[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLC5615_1|DIN_REG[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN_REG\(8));

\TLC5615_1|DIN~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN~3_combout\ = \TLC5615_1|COUNT2\(1) & (\TLC5615_1|COUNT2\(3) & \TLC5615_1|DIN_REG\(0) # !\TLC5615_1|COUNT2\(3) & (\TLC5615_1|DIN_REG\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT2\(1),
	datab => \TLC5615_1|COUNT2\(3),
	datac => \TLC5615_1|DIN_REG\(0),
	datad => \TLC5615_1|DIN_REG\(8),
	combout => \TLC5615_1|DIN~3_combout\);

\TLC5615_1|DIN~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN~4_combout\ = \TLC5615_1|DIN~1_combout\ # \TLC5615_1|COUNT2\(0) & \TLC5615_1|DIN~2_combout\ # !\TLC5615_1|COUNT2\(0) & (\TLC5615_1|DIN~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT2\(0),
	datab => \TLC5615_1|DIN~1_combout\,
	datac => \TLC5615_1|DIN~2_combout\,
	datad => \TLC5615_1|DIN~3_combout\,
	combout => \TLC5615_1|DIN~4_combout\);

\TLC5615_1|DIN~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN~5_combout\ = \TLC5615_1|COUNT2\(2) & !\TLC5615_1|COUNT2\(3) & \TLC5615_1|Mux0~1_combout\ # !\TLC5615_1|COUNT2\(2) & (\TLC5615_1|DIN~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT2\(3),
	datab => \TLC5615_1|Mux0~1_combout\,
	datac => \TLC5615_1|COUNT2\(2),
	datad => \TLC5615_1|DIN~4_combout\,
	combout => \TLC5615_1|DIN~5_combout\);

\TLC5615_1|DIN~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|DIN~6_combout\ = \TLC5615_1|CS_REG~regout\ & \TLC5615_1|DIN~regout\ # !\TLC5615_1|CS_REG~regout\ & (\TLC5615_1|DIN~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|CS_REG~regout\,
	datac => \TLC5615_1|DIN~regout\,
	datad => \TLC5615_1|DIN~5_combout\,
	combout => \TLC5615_1|DIN~6_combout\);

\TLC5615_1|DIN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|DIN~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|DIN~regout\);

\TLC5615_1|COUNT1[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT1[0]~12_combout\ = !\TLC5615_1|COUNT1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TLC5615_1|COUNT1\(0),
	combout => \TLC5615_1|COUNT1[0]~12_combout\);

\TLC5615_1|COUNT1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|ALT_INV_SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT1[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT1\(0));

\TLC5615_1|COUNT1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT1~10_combout\ = \TLC5615_1|COUNT1\(1) $ \TLC5615_1|COUNT1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TLC5615_1|COUNT1\(1),
	datad => \TLC5615_1|COUNT1\(0),
	combout => \TLC5615_1|COUNT1~10_combout\);

\TLC5615_1|COUNT1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|ALT_INV_SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT1\(1));

\TLC5615_1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|Add1~0_combout\ = \TLC5615_1|COUNT1\(1) & \TLC5615_1|COUNT1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TLC5615_1|COUNT1\(1),
	datad => \TLC5615_1|COUNT1\(0),
	combout => \TLC5615_1|Add1~0_combout\);

\TLC5615_1|COUNT1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|COUNT1~9_combout\ = \TLC5615_1|COUNT1\(2) $ (\TLC5615_1|COUNT1\(1) & \TLC5615_1|COUNT1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TLC5615_1|COUNT1\(1),
	datac => \TLC5615_1|COUNT1\(2),
	datad => \TLC5615_1|COUNT1\(0),
	combout => \TLC5615_1|COUNT1~9_combout\);

\TLC5615_1|COUNT1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|ALT_INV_SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|COUNT1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|COUNT1\(2));

\TLC5615_1|CS_REG~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLC5615_1|CS_REG~2_combout\ = \TLC5615_1|COUNT1\(3) & \TLC5615_1|COUNT1\(2) & (\TLC5615_1|CS_REG~regout\ # !\TLC5615_1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TLC5615_1|COUNT1\(3),
	datab => \TLC5615_1|Add1~0_combout\,
	datac => \TLC5615_1|CS_REG~regout\,
	datad => \TLC5615_1|COUNT1\(2),
	combout => \TLC5615_1|CS_REG~2_combout\);

\TLC5615_1|CS_REG\ : cycloneii_lcell_ff
PORT MAP (
	clk => \TLC5615_1|ALT_INV_SCLK_REG~clkctrl_outclk\,
	datain => \TLC5615_1|CS_REG~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLC5615_1|CS_REG~regout\);

\sclk~I\ : cycloneii_io
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
	datain => \TLC5615_1|SCLK_REG~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sclk);

\din~I\ : cycloneii_io
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
	datain => \TLC5615_1|DIN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_din);

\cs~I\ : cycloneii_io
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
	datain => \TLC5615_1|CS_REG~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cs);

\sin_data[0]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(0));

\sin_data[1]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_12_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(1));

\sin_data[2]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(2));

\sin_data[3]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_10_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(3));

\sin_data[4]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(4));

\sin_data[5]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_8_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(5));

\sin_data[6]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(6));

\sin_data[7]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(7));

\sin_data[8]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(8));

\sin_data[9]~I\ : cycloneii_io
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
	datain => \DDS_1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sin_data(9));
END structure;


