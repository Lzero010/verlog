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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "10/22/2023 13:30:59"

-- 
-- Device: Altera EP4CE15F23C8L Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dds_top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	set_waveform_key_in : IN std_logic;
	set_f_key_in : IN std_logic;
	set_a_key_in : IN std_logic;
	set_p_key_in : IN std_logic;
	sclk : BUFFER std_logic;
	din : BUFFER std_logic;
	cs : BUFFER std_logic
	);
END dds_top;

-- Design Ports Information
-- sclk	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- din	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cs	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- set_a_key_in	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set_waveform_key_in	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set_p_key_in	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set_f_key_in	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dds_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_set_waveform_key_in : std_logic;
SIGNAL ww_set_f_key_in : std_logic;
SIGNAL ww_set_a_key_in : std_logic;
SIGNAL ww_set_p_key_in : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u7|SCLK_REG~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|key_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|key_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|key_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \set_a_key_in~input_o\ : std_logic;
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \din~output_o\ : std_logic;
SIGNAL \cs~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u7|COUNT3[0]~3_combout\ : std_logic;
SIGNAL \u7|COUNT3[2]~2_combout\ : std_logic;
SIGNAL \u7|COUNT3~0_combout\ : std_logic;
SIGNAL \u7|COUNT3~1_combout\ : std_logic;
SIGNAL \u7|Equal0~0_combout\ : std_logic;
SIGNAL \u7|SCLK_REG~0_combout\ : std_logic;
SIGNAL \u7|SCLK_REG~feeder_combout\ : std_logic;
SIGNAL \u7|SCLK_REG~q\ : std_logic;
SIGNAL \u7|SCLK_REG~clkctrl_outclk\ : std_logic;
SIGNAL \u7|COUNT1[0]~4_combout\ : std_logic;
SIGNAL \u7|COUNT1~2_combout\ : std_logic;
SIGNAL \u7|COUNT1~1_combout\ : std_logic;
SIGNAL \u7|COUNT1~0_combout\ : std_logic;
SIGNAL \u7|CS_REG~0_combout\ : std_logic;
SIGNAL \u7|CS_REG~1_combout\ : std_logic;
SIGNAL \u7|CS_REG~q\ : std_logic;
SIGNAL \u7|COUNT2[0]~3_combout\ : std_logic;
SIGNAL \u7|COUNT2[1]~1_combout\ : std_logic;
SIGNAL \u7|COUNT2[2]~0_combout\ : std_logic;
SIGNAL \u7|COUNT2[3]~2_combout\ : std_logic;
SIGNAL \set_waveform_key_in~input_o\ : std_logic;
SIGNAL \u2|state.s0~0_combout\ : std_logic;
SIGNAL \u2|state.s0~q\ : std_logic;
SIGNAL \u2|state~6_combout\ : std_logic;
SIGNAL \u2|state.s1~q\ : std_logic;
SIGNAL \u2|state~7_combout\ : std_logic;
SIGNAL \u2|state.s2~q\ : std_logic;
SIGNAL \u2|Selector1~0_combout\ : std_logic;
SIGNAL \u2|state.s3~q\ : std_logic;
SIGNAL \u2|Selector0~0_combout\ : std_logic;
SIGNAL \u2|Selector0~1_combout\ : std_logic;
SIGNAL \u2|key_out~feeder_combout\ : std_logic;
SIGNAL \u2|key_out~q\ : std_logic;
SIGNAL \u2|key_out~clkctrl_outclk\ : std_logic;
SIGNAL \u6|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \set_f_key_in~input_o\ : std_logic;
SIGNAL \u3|state.s0~0_combout\ : std_logic;
SIGNAL \u3|state.s0~q\ : std_logic;
SIGNAL \u3|state~6_combout\ : std_logic;
SIGNAL \u3|state.s1~q\ : std_logic;
SIGNAL \u3|state~7_combout\ : std_logic;
SIGNAL \u3|state.s2~q\ : std_logic;
SIGNAL \u3|Selector1~0_combout\ : std_logic;
SIGNAL \u3|state.s3~q\ : std_logic;
SIGNAL \u3|Selector0~0_combout\ : std_logic;
SIGNAL \u3|Selector0~1_combout\ : std_logic;
SIGNAL \u3|key_out~q\ : std_logic;
SIGNAL \u3|key_out~clkctrl_outclk\ : std_logic;
SIGNAL \u6|f_control_temp[1]~15_combout\ : std_logic;
SIGNAL \reset~_wirecell_combout\ : std_logic;
SIGNAL \u6|f_control_temp~47_combout\ : std_logic;
SIGNAL \u6|Equal0~0_combout\ : std_logic;
SIGNAL \u6|Equal0~3_combout\ : std_logic;
SIGNAL \u6|Equal0~1_combout\ : std_logic;
SIGNAL \u6|Equal0~2_combout\ : std_logic;
SIGNAL \u6|Equal0~4_combout\ : std_logic;
SIGNAL \u6|f_control_temp[13]~45_combout\ : std_logic;
SIGNAL \u6|f_control_temp[13]~46_combout\ : std_logic;
SIGNAL \u6|f_control_temp[1]~16\ : std_logic;
SIGNAL \u6|f_control_temp[2]~17_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u6|f_control_temp[2]~18\ : std_logic;
SIGNAL \u6|f_control_temp[3]~19_combout\ : std_logic;
SIGNAL \u6|f_control_temp[3]~20\ : std_logic;
SIGNAL \u6|f_control_temp[4]~21_combout\ : std_logic;
SIGNAL \u6|f_control_temp[4]~22\ : std_logic;
SIGNAL \u6|f_control_temp[5]~23_combout\ : std_logic;
SIGNAL \u6|f_control_temp[5]~24\ : std_logic;
SIGNAL \u6|f_control_temp[6]~25_combout\ : std_logic;
SIGNAL \u6|f_control_temp[6]~26\ : std_logic;
SIGNAL \u6|f_control_temp[7]~27_combout\ : std_logic;
SIGNAL \u6|f_control_temp[7]~28\ : std_logic;
SIGNAL \u6|f_control_temp[8]~29_combout\ : std_logic;
SIGNAL \u6|f_control_temp[8]~30\ : std_logic;
SIGNAL \u6|f_control_temp[9]~31_combout\ : std_logic;
SIGNAL \u6|f_control_temp[9]~32\ : std_logic;
SIGNAL \u6|f_control_temp[10]~33_combout\ : std_logic;
SIGNAL \u6|f_control_temp[10]~34\ : std_logic;
SIGNAL \u6|f_control_temp[11]~35_combout\ : std_logic;
SIGNAL \u6|f_control_temp[11]~36\ : std_logic;
SIGNAL \u6|f_control_temp[12]~37_combout\ : std_logic;
SIGNAL \u6|f_control_temp[12]~38\ : std_logic;
SIGNAL \u6|f_control_temp[13]~39_combout\ : std_logic;
SIGNAL \u6|f_control_temp[13]~40\ : std_logic;
SIGNAL \u6|f_control_temp[14]~41_combout\ : std_logic;
SIGNAL \u6|f_control_temp[14]~42\ : std_logic;
SIGNAL \u6|f_control_temp[15]~43_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[0]~32_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[0]~33\ : std_logic;
SIGNAL \u1|u2|data_32out[1]~34_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[1]~35\ : std_logic;
SIGNAL \u1|u2|data_32out[2]~36_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[2]~37\ : std_logic;
SIGNAL \u1|u2|data_32out[3]~38_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[3]~39\ : std_logic;
SIGNAL \u1|u2|data_32out[4]~40_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[4]~41\ : std_logic;
SIGNAL \u1|u2|data_32out[5]~42_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[5]~43\ : std_logic;
SIGNAL \u1|u2|data_32out[6]~44_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[6]~45\ : std_logic;
SIGNAL \u1|u2|data_32out[7]~46_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[7]~47\ : std_logic;
SIGNAL \u1|u2|data_32out[8]~48_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[8]~49\ : std_logic;
SIGNAL \u1|u2|data_32out[9]~50_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[9]~51\ : std_logic;
SIGNAL \u1|u2|data_32out[10]~52_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[10]~53\ : std_logic;
SIGNAL \u1|u2|data_32out[11]~54_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[11]~55\ : std_logic;
SIGNAL \u1|u2|data_32out[12]~56_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[12]~57\ : std_logic;
SIGNAL \u1|u2|data_32out[13]~58_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[13]~59\ : std_logic;
SIGNAL \u1|u2|data_32out[14]~60_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[14]~61\ : std_logic;
SIGNAL \u1|u2|data_32out[15]~62_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[15]~63\ : std_logic;
SIGNAL \u1|u2|data_32out[16]~64_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[16]~65\ : std_logic;
SIGNAL \u1|u2|data_32out[17]~66_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[17]~67\ : std_logic;
SIGNAL \u1|u2|data_32out[18]~68_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[18]~69\ : std_logic;
SIGNAL \u1|u2|data_32out[19]~70_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[19]~71\ : std_logic;
SIGNAL \u1|u2|data_32out[20]~72_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[20]~73\ : std_logic;
SIGNAL \u1|u2|data_32out[21]~74_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[21]~75\ : std_logic;
SIGNAL \u1|u2|data_32out[22]~76_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[0]~feeder_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[22]~77\ : std_logic;
SIGNAL \u1|u2|data_32out[23]~78_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[1]~feeder_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[23]~79\ : std_logic;
SIGNAL \u1|u2|data_32out[24]~80_combout\ : std_logic;
SIGNAL \set_p_key_in~input_o\ : std_logic;
SIGNAL \u5|state.s0~0_combout\ : std_logic;
SIGNAL \u5|state.s0~q\ : std_logic;
SIGNAL \u5|state~6_combout\ : std_logic;
SIGNAL \u5|state.s1~q\ : std_logic;
SIGNAL \u5|state~7_combout\ : std_logic;
SIGNAL \u5|state.s2~q\ : std_logic;
SIGNAL \u5|Selector1~0_combout\ : std_logic;
SIGNAL \u5|state.s3~q\ : std_logic;
SIGNAL \u5|Selector0~0_combout\ : std_logic;
SIGNAL \u5|Selector0~1_combout\ : std_logic;
SIGNAL \u5|key_out~q\ : std_logic;
SIGNAL \u5|key_out~clkctrl_outclk\ : std_logic;
SIGNAL \u6|p_control_temp[2]~8_combout\ : std_logic;
SIGNAL \u6|p_control_temp[6]~10_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[2]~8_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[24]~81\ : std_logic;
SIGNAL \u1|u2|data_32out[25]~82_combout\ : std_logic;
SIGNAL \u6|p_control_temp[2]~9\ : std_logic;
SIGNAL \u6|p_control_temp[3]~11_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[2]~9\ : std_logic;
SIGNAL \u1|u4|data_10out[3]~10_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[25]~83\ : std_logic;
SIGNAL \u1|u2|data_32out[26]~84_combout\ : std_logic;
SIGNAL \u6|p_control_temp[3]~12\ : std_logic;
SIGNAL \u6|p_control_temp[4]~13_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[3]~11\ : std_logic;
SIGNAL \u1|u4|data_10out[4]~12_combout\ : std_logic;
SIGNAL \u6|p_control_temp[4]~14\ : std_logic;
SIGNAL \u6|p_control_temp[5]~15_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[26]~85\ : std_logic;
SIGNAL \u1|u2|data_32out[27]~86_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[4]~13\ : std_logic;
SIGNAL \u1|u4|data_10out[5]~14_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[27]~87\ : std_logic;
SIGNAL \u1|u2|data_32out[28]~88_combout\ : std_logic;
SIGNAL \u6|p_control_temp[5]~16\ : std_logic;
SIGNAL \u6|p_control_temp[6]~17_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[5]~15\ : std_logic;
SIGNAL \u1|u4|data_10out[6]~16_combout\ : std_logic;
SIGNAL \u6|p_control_temp[6]~18\ : std_logic;
SIGNAL \u6|p_control_temp[7]~19_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[28]~89\ : std_logic;
SIGNAL \u1|u2|data_32out[29]~90_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[6]~17\ : std_logic;
SIGNAL \u1|u4|data_10out[7]~18_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[29]~91\ : std_logic;
SIGNAL \u1|u2|data_32out[30]~92_combout\ : std_logic;
SIGNAL \u6|p_control_temp[7]~20\ : std_logic;
SIGNAL \u6|p_control_temp[8]~21_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[7]~19\ : std_logic;
SIGNAL \u1|u4|data_10out[8]~20_combout\ : std_logic;
SIGNAL \u1|u2|data_32out[30]~93\ : std_logic;
SIGNAL \u1|u2|data_32out[31]~94_combout\ : std_logic;
SIGNAL \u6|p_control_temp[8]~22\ : std_logic;
SIGNAL \u6|p_control_temp[9]~23_combout\ : std_logic;
SIGNAL \u1|u4|data_10out[8]~21\ : std_logic;
SIGNAL \u1|u4|data_10out[9]~22_combout\ : std_logic;
SIGNAL \u6|Add0~1_combout\ : std_logic;
SIGNAL \u1|Mux6~0_combout\ : std_logic;
SIGNAL \u1|Mux6~1_combout\ : std_logic;
SIGNAL \u1|Mux5~0_combout\ : std_logic;
SIGNAL \u1|Mux5~1_combout\ : std_logic;
SIGNAL \u1|Mux3~0_combout\ : std_logic;
SIGNAL \u1|Mux3~1_combout\ : std_logic;
SIGNAL \u1|Mux4~0_combout\ : std_logic;
SIGNAL \u1|Mux4~1_combout\ : std_logic;
SIGNAL \u7|DIN_REG[5]~feeder_combout\ : std_logic;
SIGNAL \u7|Mux0~0_combout\ : std_logic;
SIGNAL \u7|Mux0~1_combout\ : std_logic;
SIGNAL \u7|DIN~4_combout\ : std_logic;
SIGNAL \u1|Mux7~0_combout\ : std_logic;
SIGNAL \u1|Mux7~1_combout\ : std_logic;
SIGNAL \u1|Mux8~0_combout\ : std_logic;
SIGNAL \u1|Mux8~1_combout\ : std_logic;
SIGNAL \u7|DIN_REG[1]~feeder_combout\ : std_logic;
SIGNAL \u7|DIN~3_combout\ : std_logic;
SIGNAL \u1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|Mux1~1_combout\ : std_logic;
SIGNAL \u1|Mux9~0_combout\ : std_logic;
SIGNAL \u1|Mux9~1_combout\ : std_logic;
SIGNAL \u7|DIN_REG[0]~feeder_combout\ : std_logic;
SIGNAL \u7|DIN~1_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|Mux0~1_combout\ : std_logic;
SIGNAL \u1|Mux2~0_combout\ : std_logic;
SIGNAL \u1|Mux2~1_combout\ : std_logic;
SIGNAL \u7|DIN_REG[7]~feeder_combout\ : std_logic;
SIGNAL \u7|DIN~0_combout\ : std_logic;
SIGNAL \u7|DIN~2_combout\ : std_logic;
SIGNAL \u7|DIN~5_combout\ : std_logic;
SIGNAL \u7|DIN~6_combout\ : std_logic;
SIGNAL \u7|DIN~q\ : std_logic;
SIGNAL \u1|u2|data_32out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u6|set_waveform_temp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|u7|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u6|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u4|data_10out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u8|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u6|p_control_temp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u1|u5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u6|f_control_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u7|COUNT3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|COUNT2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|DIN_REG\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u7|COUNT1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|dds_data_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|ALT_INV_key_out~clkctrl_outclk\ : std_logic;
SIGNAL \u2|ALT_INV_key_out~clkctrl_outclk\ : std_logic;
SIGNAL \u3|ALT_INV_key_out~clkctrl_outclk\ : std_logic;
SIGNAL \u7|ALT_INV_SCLK_REG~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_set_waveform_key_in <= set_waveform_key_in;
ww_set_f_key_in <= set_f_key_in;
ww_set_a_key_in <= set_a_key_in;
ww_set_p_key_in <= set_p_key_in;
sclk <= ww_sclk;
din <= ww_din;
cs <= ww_cs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u1|u4|data_10out\(9) & \u1|u4|data_10out\(8) & \u1|u4|data_10out\(7) & \u1|u4|data_10out\(6) & \u1|u4|data_10out\(5) & \u1|u4|data_10out\(4) & \u1|u4|data_10out\(3)
& \u1|u4|data_10out\(2) & \u1|u4|data_10out\(1) & \u1|u4|data_10out\(0));

\u1|u7|altsyncram_component|auto_generated|q_a\(0) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u1|u7|altsyncram_component|auto_generated|q_a\(7) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u1|u7|altsyncram_component|auto_generated|q_a\(9) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u1|u5|altsyncram_component|auto_generated|q_a\(7) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u1|u5|altsyncram_component|auto_generated|q_a\(9) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u1|u8|altsyncram_component|auto_generated|q_a\(7) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u1|u8|altsyncram_component|auto_generated|q_a\(9) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u1|u6|altsyncram_component|auto_generated|q_a\(7) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\u1|u6|altsyncram_component|auto_generated|q_a\(9) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\u1|u4|data_10out\(9) & \u1|u4|data_10out\(8) & \u1|u4|data_10out\(7) & \u1|u4|data_10out\(6) & \u1|u4|data_10out\(5) & \u1|u4|data_10out\(4) & \u1|u4|data_10out\(3)
& \u1|u4|data_10out\(2) & \u1|u4|data_10out\(1) & \u1|u4|data_10out\(0));

\u1|u7|altsyncram_component|auto_generated|q_a\(1) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\u1|u7|altsyncram_component|auto_generated|q_a\(8) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\u1|u5|altsyncram_component|auto_generated|q_a\(0) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\u1|u5|altsyncram_component|auto_generated|q_a\(8) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\u1|u8|altsyncram_component|auto_generated|q_a\(0) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\u1|u8|altsyncram_component|auto_generated|q_a\(8) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\u1|u6|altsyncram_component|auto_generated|q_a\(0) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\u1|u6|altsyncram_component|auto_generated|q_a\(1) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\u1|u6|altsyncram_component|auto_generated|q_a\(8) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);

\u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\u1|u4|data_10out\(9) & \u1|u4|data_10out\(8) & \u1|u4|data_10out\(7) & \u1|u4|data_10out\(6) & \u1|u4|data_10out\(5) & \u1|u4|data_10out\(4) & \u1|u4|data_10out\(3)
& \u1|u4|data_10out\(2) & \u1|u4|data_10out\(1) & \u1|u4|data_10out\(0));

\u1|u7|altsyncram_component|auto_generated|q_a\(2) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\u1|u7|altsyncram_component|auto_generated|q_a\(4) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\u1|u5|altsyncram_component|auto_generated|q_a\(1) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\u1|u5|altsyncram_component|auto_generated|q_a\(2) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);
\u1|u5|altsyncram_component|auto_generated|q_a\(4) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(4);
\u1|u8|altsyncram_component|auto_generated|q_a\(1) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(5);
\u1|u8|altsyncram_component|auto_generated|q_a\(2) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(6);
\u1|u6|altsyncram_component|auto_generated|q_a\(2) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(7);
\u1|u6|altsyncram_component|auto_generated|q_a\(4) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(8);

\u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\u1|u4|data_10out\(9) & \u1|u4|data_10out\(8) & \u1|u4|data_10out\(7) & \u1|u4|data_10out\(6) & \u1|u4|data_10out\(5) & \u1|u4|data_10out\(4) & \u1|u4|data_10out\(3)
& \u1|u4|data_10out\(2) & \u1|u4|data_10out\(1) & \u1|u4|data_10out\(0));

\u1|u7|altsyncram_component|auto_generated|q_a\(5) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\u1|u7|altsyncram_component|auto_generated|q_a\(6) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);
\u1|u5|altsyncram_component|auto_generated|q_a\(5) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(2);
\u1|u5|altsyncram_component|auto_generated|q_a\(6) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(3);
\u1|u8|altsyncram_component|auto_generated|q_a\(4) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(4);
\u1|u8|altsyncram_component|auto_generated|q_a\(5) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(5);
\u1|u8|altsyncram_component|auto_generated|q_a\(6) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(6);
\u1|u6|altsyncram_component|auto_generated|q_a\(5) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(7);
\u1|u6|altsyncram_component|auto_generated|q_a\(6) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(8);

\u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\u1|u4|data_10out\(9) & \u1|u4|data_10out\(8) & \u1|u4|data_10out\(7) & \u1|u4|data_10out\(6) & \u1|u4|data_10out\(5) & \u1|u4|data_10out\(4) & \u1|u4|data_10out\(3)
& \u1|u4|data_10out\(2) & \u1|u4|data_10out\(1) & \u1|u4|data_10out\(0));

\u1|u7|altsyncram_component|auto_generated|q_a\(3) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\u1|u5|altsyncram_component|auto_generated|q_a\(3) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\u1|u8|altsyncram_component|auto_generated|q_a\(3) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\u1|u6|altsyncram_component|auto_generated|q_a\(3) <= \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);

\u7|SCLK_REG~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u7|SCLK_REG~q\);

\u3|key_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|key_out~q\);

\u2|key_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|key_out~q\);

\u5|key_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u5|key_out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\u5|ALT_INV_key_out~clkctrl_outclk\ <= NOT \u5|key_out~clkctrl_outclk\;
\u2|ALT_INV_key_out~clkctrl_outclk\ <= NOT \u2|key_out~clkctrl_outclk\;
\u3|ALT_INV_key_out~clkctrl_outclk\ <= NOT \u3|key_out~clkctrl_outclk\;
\u7|ALT_INV_SCLK_REG~clkctrl_outclk\ <= NOT \u7|SCLK_REG~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X19_Y29_N30
\sclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|SCLK_REG~q\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\din~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|DIN~q\,
	devoe => ww_devoe,
	o => \din~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\cs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|CS_REG~q\,
	devoe => ww_devoe,
	o => \cs~output_o\);

-- Location: IOIBUF_X0_Y14_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y27_N24
\u7|COUNT3[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT3[0]~3_combout\ = !\u7|COUNT3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|COUNT3\(0),
	combout => \u7|COUNT3[0]~3_combout\);

-- Location: FF_X19_Y27_N25
\u7|COUNT3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|COUNT3[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT3\(0));

-- Location: LCCOMB_X19_Y27_N30
\u7|COUNT3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT3[2]~2_combout\ = \u7|COUNT3\(2) $ (((\u7|COUNT3\(0) & \u7|COUNT3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT3\(0),
	datac => \u7|COUNT3\(2),
	datad => \u7|COUNT3\(1),
	combout => \u7|COUNT3[2]~2_combout\);

-- Location: FF_X19_Y27_N31
\u7|COUNT3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|COUNT3[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT3\(2));

-- Location: LCCOMB_X19_Y27_N26
\u7|COUNT3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT3~0_combout\ = (\u7|COUNT3\(0) & ((\u7|COUNT3\(1) & (\u7|COUNT3\(3) $ (\u7|COUNT3\(2)))) # (!\u7|COUNT3\(1) & (\u7|COUNT3\(3) & \u7|COUNT3\(2))))) # (!\u7|COUNT3\(0) & (((\u7|COUNT3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT3\(0),
	datab => \u7|COUNT3\(1),
	datac => \u7|COUNT3\(3),
	datad => \u7|COUNT3\(2),
	combout => \u7|COUNT3~0_combout\);

-- Location: FF_X19_Y27_N27
\u7|COUNT3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|COUNT3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT3\(3));

-- Location: LCCOMB_X19_Y27_N22
\u7|COUNT3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT3~1_combout\ = (\u7|COUNT3\(0) & (!\u7|COUNT3\(1) & ((\u7|COUNT3\(2)) # (!\u7|COUNT3\(3))))) # (!\u7|COUNT3\(0) & (((\u7|COUNT3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT3\(0),
	datab => \u7|COUNT3\(3),
	datac => \u7|COUNT3\(1),
	datad => \u7|COUNT3\(2),
	combout => \u7|COUNT3~1_combout\);

-- Location: FF_X19_Y27_N23
\u7|COUNT3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|COUNT3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT3\(1));

-- Location: LCCOMB_X19_Y27_N28
\u7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Equal0~0_combout\ = (!\u7|COUNT3\(1) & (!\u7|COUNT3\(2) & (\u7|COUNT3\(3) & \u7|COUNT3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT3\(1),
	datab => \u7|COUNT3\(2),
	datac => \u7|COUNT3\(3),
	datad => \u7|COUNT3\(0),
	combout => \u7|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y27_N14
\u7|SCLK_REG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|SCLK_REG~0_combout\ = \u7|SCLK_REG~q\ $ (\u7|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|SCLK_REG~q\,
	datad => \u7|Equal0~0_combout\,
	combout => \u7|SCLK_REG~0_combout\);

-- Location: LCCOMB_X19_Y27_N20
\u7|SCLK_REG~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|SCLK_REG~feeder_combout\ = \u7|SCLK_REG~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|SCLK_REG~0_combout\,
	combout => \u7|SCLK_REG~feeder_combout\);

-- Location: FF_X19_Y27_N21
\u7|SCLK_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|SCLK_REG~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|SCLK_REG~q\);

-- Location: CLKCTRL_G13
\u7|SCLK_REG~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u7|SCLK_REG~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u7|SCLK_REG~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y25_N8
\u7|COUNT1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT1[0]~4_combout\ = !\u7|COUNT1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|COUNT1\(0),
	combout => \u7|COUNT1[0]~4_combout\);

-- Location: FF_X16_Y25_N9
\u7|COUNT1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|ALT_INV_SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT1[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT1\(0));

-- Location: LCCOMB_X16_Y25_N6
\u7|COUNT1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT1~2_combout\ = \u7|COUNT1\(0) $ (\u7|COUNT1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|COUNT1\(0),
	datac => \u7|COUNT1\(1),
	combout => \u7|COUNT1~2_combout\);

-- Location: FF_X16_Y25_N7
\u7|COUNT1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|ALT_INV_SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT1\(1));

-- Location: LCCOMB_X16_Y25_N12
\u7|COUNT1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT1~1_combout\ = \u7|COUNT1\(2) $ (((\u7|COUNT1\(0) & \u7|COUNT1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|COUNT1\(0),
	datac => \u7|COUNT1\(2),
	datad => \u7|COUNT1\(1),
	combout => \u7|COUNT1~1_combout\);

-- Location: FF_X16_Y25_N13
\u7|COUNT1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|ALT_INV_SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT1\(2));

-- Location: LCCOMB_X16_Y25_N18
\u7|COUNT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT1~0_combout\ = \u7|COUNT1\(3) $ (((\u7|COUNT1\(2) & (\u7|COUNT1\(0) & \u7|COUNT1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT1\(2),
	datab => \u7|COUNT1\(0),
	datac => \u7|COUNT1\(3),
	datad => \u7|COUNT1\(1),
	combout => \u7|COUNT1~0_combout\);

-- Location: FF_X16_Y25_N19
\u7|COUNT1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|ALT_INV_SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT1\(3));

-- Location: LCCOMB_X16_Y25_N10
\u7|CS_REG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|CS_REG~0_combout\ = (\u7|COUNT1\(2) & (((\u7|CS_REG~q\) # (!\u7|COUNT1\(0))) # (!\u7|COUNT1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT1\(1),
	datab => \u7|CS_REG~q\,
	datac => \u7|COUNT1\(0),
	datad => \u7|COUNT1\(2),
	combout => \u7|CS_REG~0_combout\);

-- Location: LCCOMB_X16_Y25_N4
\u7|CS_REG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|CS_REG~1_combout\ = (\u7|COUNT1\(3) & \u7|CS_REG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|COUNT1\(3),
	datad => \u7|CS_REG~0_combout\,
	combout => \u7|CS_REG~1_combout\);

-- Location: FF_X16_Y25_N5
\u7|CS_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|ALT_INV_SCLK_REG~clkctrl_outclk\,
	d => \u7|CS_REG~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|CS_REG~q\);

-- Location: LCCOMB_X15_Y25_N12
\u7|COUNT2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT2[0]~3_combout\ = !\u7|COUNT2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|COUNT2\(0),
	combout => \u7|COUNT2[0]~3_combout\);

-- Location: FF_X15_Y25_N13
\u7|COUNT2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT2\(0));

-- Location: LCCOMB_X15_Y25_N4
\u7|COUNT2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT2[1]~1_combout\ = \u7|COUNT2\(1) $ (\u7|COUNT2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|COUNT2\(1),
	datad => \u7|COUNT2\(0),
	combout => \u7|COUNT2[1]~1_combout\);

-- Location: FF_X15_Y25_N5
\u7|COUNT2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT2\(1));

-- Location: LCCOMB_X15_Y25_N30
\u7|COUNT2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT2[2]~0_combout\ = \u7|COUNT2\(2) $ (((\u7|COUNT2\(1) & \u7|COUNT2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|COUNT2\(1),
	datac => \u7|COUNT2\(2),
	datad => \u7|COUNT2\(0),
	combout => \u7|COUNT2[2]~0_combout\);

-- Location: FF_X15_Y25_N31
\u7|COUNT2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT2\(2));

-- Location: LCCOMB_X15_Y25_N22
\u7|COUNT2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|COUNT2[3]~2_combout\ = \u7|COUNT2\(3) $ (((\u7|COUNT2\(2) & (\u7|COUNT2\(1) & \u7|COUNT2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT2\(2),
	datab => \u7|COUNT2\(1),
	datac => \u7|COUNT2\(3),
	datad => \u7|COUNT2\(0),
	combout => \u7|COUNT2[3]~2_combout\);

-- Location: FF_X15_Y25_N23
\u7|COUNT2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|SCLK_REG~clkctrl_outclk\,
	d => \u7|COUNT2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|COUNT2\(3));

-- Location: IOIBUF_X41_Y14_N22
\set_waveform_key_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_waveform_key_in,
	o => \set_waveform_key_in~input_o\);

-- Location: LCCOMB_X40_Y15_N8
\u2|state.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|state.s0~0_combout\ = !\set_waveform_key_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \set_waveform_key_in~input_o\,
	combout => \u2|state.s0~0_combout\);

-- Location: FF_X40_Y15_N9
\u2|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u2|state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.s0~q\);

-- Location: LCCOMB_X40_Y15_N18
\u2|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|state~6_combout\ = (!\u2|state.s0~q\ & !\set_waveform_key_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|state.s0~q\,
	datad => \set_waveform_key_in~input_o\,
	combout => \u2|state~6_combout\);

-- Location: FF_X40_Y15_N19
\u2|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u2|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.s1~q\);

-- Location: LCCOMB_X40_Y15_N4
\u2|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|state~7_combout\ = (!\set_waveform_key_in~input_o\ & \u2|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_waveform_key_in~input_o\,
	datad => \u2|state.s1~q\,
	combout => \u2|state~7_combout\);

-- Location: FF_X40_Y15_N5
\u2|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u2|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.s2~q\);

-- Location: LCCOMB_X40_Y15_N10
\u2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector1~0_combout\ = (!\set_waveform_key_in~input_o\ & (\u2|state.s0~q\ & !\u2|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_waveform_key_in~input_o\,
	datac => \u2|state.s0~q\,
	datad => \u2|state.s1~q\,
	combout => \u2|Selector1~0_combout\);

-- Location: FF_X40_Y15_N11
\u2|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.s3~q\);

-- Location: LCCOMB_X40_Y15_N22
\u2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector0~0_combout\ = (\set_waveform_key_in~input_o\) # (!\u2|state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_waveform_key_in~input_o\,
	datad => \u2|state.s3~q\,
	combout => \u2|Selector0~0_combout\);

-- Location: LCCOMB_X40_Y15_N6
\u2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector0~1_combout\ = (\u2|Selector0~0_combout\ & ((\u2|key_out~q\) # ((!\u2|state.s1~q\ & !\u2|state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.s1~q\,
	datab => \u2|state.s2~q\,
	datac => \u2|Selector0~0_combout\,
	datad => \u2|key_out~q\,
	combout => \u2|Selector0~1_combout\);

-- Location: LCCOMB_X40_Y15_N14
\u2|key_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|key_out~feeder_combout\ = \u2|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Selector0~1_combout\,
	combout => \u2|key_out~feeder_combout\);

-- Location: FF_X40_Y15_N15
\u2|key_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u2|key_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|key_out~q\);

-- Location: CLKCTRL_G8
\u2|key_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|key_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|key_out~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y21_N12
\u6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~0_combout\ = \u6|set_waveform_temp\(0) $ (!\u2|key_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|set_waveform_temp\(0),
	datad => \u2|key_out~q\,
	combout => \u6|Add0~0_combout\);

-- Location: IOIBUF_X14_Y29_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X11_Y21_N13
\u6|set_waveform_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|Add0~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|set_waveform_temp\(0));

-- Location: IOIBUF_X21_Y29_N29
\set_f_key_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_f_key_in,
	o => \set_f_key_in~input_o\);

-- Location: LCCOMB_X19_Y25_N24
\u3|state.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|state.s0~0_combout\ = !\set_f_key_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \set_f_key_in~input_o\,
	combout => \u3|state.s0~0_combout\);

-- Location: FF_X19_Y25_N27
\u3|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u3|state.s0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|state.s0~q\);

-- Location: LCCOMB_X19_Y25_N22
\u3|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|state~6_combout\ = (!\set_f_key_in~input_o\ & !\u3|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_f_key_in~input_o\,
	datac => \u3|state.s0~q\,
	combout => \u3|state~6_combout\);

-- Location: FF_X19_Y25_N23
\u3|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|state.s1~q\);

-- Location: LCCOMB_X19_Y25_N14
\u3|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|state~7_combout\ = (!\set_f_key_in~input_o\ & \u3|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_f_key_in~input_o\,
	datac => \u3|state.s1~q\,
	combout => \u3|state~7_combout\);

-- Location: FF_X19_Y25_N15
\u3|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|state.s2~q\);

-- Location: LCCOMB_X19_Y25_N0
\u3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector1~0_combout\ = (\u3|state.s0~q\ & (!\u3|state.s1~q\ & !\set_f_key_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|state.s0~q\,
	datac => \u3|state.s1~q\,
	datad => \set_f_key_in~input_o\,
	combout => \u3|Selector1~0_combout\);

-- Location: FF_X19_Y25_N1
\u3|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|state.s3~q\);

-- Location: LCCOMB_X19_Y25_N20
\u3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector0~0_combout\ = (\set_f_key_in~input_o\) # (!\u3|state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_f_key_in~input_o\,
	datad => \u3|state.s3~q\,
	combout => \u3|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y25_N28
\u3|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector0~1_combout\ = (\u3|Selector0~0_combout\ & ((\u3|key_out~q\) # ((!\u3|state.s1~q\ & !\u3|state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|state.s1~q\,
	datab => \u3|key_out~q\,
	datac => \u3|state.s2~q\,
	datad => \u3|Selector0~0_combout\,
	combout => \u3|Selector0~1_combout\);

-- Location: FF_X19_Y25_N25
\u3|key_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u3|Selector0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|key_out~q\);

-- Location: CLKCTRL_G11
\u3|key_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|key_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|key_out~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y20_N2
\u6|f_control_temp[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[1]~15_combout\ = \u6|f_control_temp\(1) $ (VCC)
-- \u6|f_control_temp[1]~16\ = CARRY(\u6|f_control_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(1),
	datad => VCC,
	combout => \u6|f_control_temp[1]~15_combout\,
	cout => \u6|f_control_temp[1]~16\);

-- Location: LCCOMB_X23_Y20_N20
\reset~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset~_wirecell_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	combout => \reset~_wirecell_combout\);

-- Location: LCCOMB_X23_Y20_N12
\u6|f_control_temp~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp~47_combout\ = (\u6|f_control_temp\(0) & ((\u6|Equal0~4_combout\) # (\u3|key_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Equal0~4_combout\,
	datac => \u6|f_control_temp\(0),
	datad => \u3|key_out~q\,
	combout => \u6|f_control_temp~47_combout\);

-- Location: FF_X23_Y20_N13
\u6|f_control_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp~47_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(0));

-- Location: LCCOMB_X23_Y20_N30
\u6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Equal0~0_combout\ = ((\u6|f_control_temp\(15)) # ((!\u6|f_control_temp\(1)) # (!\u6|f_control_temp\(2)))) # (!\u6|f_control_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(0),
	datab => \u6|f_control_temp\(15),
	datac => \u6|f_control_temp\(2),
	datad => \u6|f_control_temp\(1),
	combout => \u6|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\u6|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Equal0~3_combout\ = (\u6|f_control_temp\(13)) # (((\u6|f_control_temp\(14)) # (\u6|f_control_temp\(12))) # (!\u6|f_control_temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(13),
	datab => \u6|f_control_temp\(11),
	datac => \u6|f_control_temp\(14),
	datad => \u6|f_control_temp\(12),
	combout => \u6|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y20_N4
\u6|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Equal0~1_combout\ = (((!\u6|f_control_temp\(6)) # (!\u6|f_control_temp\(4))) # (!\u6|f_control_temp\(3))) # (!\u6|f_control_temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(5),
	datab => \u6|f_control_temp\(3),
	datac => \u6|f_control_temp\(4),
	datad => \u6|f_control_temp\(6),
	combout => \u6|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y20_N18
\u6|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Equal0~2_combout\ = (((!\u6|f_control_temp\(7)) # (!\u6|f_control_temp\(10))) # (!\u6|f_control_temp\(9))) # (!\u6|f_control_temp\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(8),
	datab => \u6|f_control_temp\(9),
	datac => \u6|f_control_temp\(10),
	datad => \u6|f_control_temp\(7),
	combout => \u6|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y20_N26
\u6|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Equal0~4_combout\ = (\u6|Equal0~0_combout\) # ((\u6|Equal0~3_combout\) # ((\u6|Equal0~1_combout\) # (\u6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Equal0~0_combout\,
	datab => \u6|Equal0~3_combout\,
	datac => \u6|Equal0~1_combout\,
	datad => \u6|Equal0~2_combout\,
	combout => \u6|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y20_N0
\u6|f_control_temp[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[13]~45_combout\ = (!\u6|Equal0~4_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \u6|Equal0~4_combout\,
	combout => \u6|f_control_temp[13]~45_combout\);

-- Location: LCCOMB_X19_Y25_N26
\u6|f_control_temp[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[13]~46_combout\ = (!\reset~input_o\) # (!\u3|key_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|key_out~q\,
	datad => \reset~input_o\,
	combout => \u6|f_control_temp[13]~46_combout\);

-- Location: FF_X22_Y20_N3
\u6|f_control_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[1]~15_combout\,
	asdata => \reset~_wirecell_combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(1));

-- Location: LCCOMB_X22_Y20_N4
\u6|f_control_temp[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[2]~17_combout\ = (\u6|f_control_temp\(2) & (!\u6|f_control_temp[1]~16\)) # (!\u6|f_control_temp\(2) & ((\u6|f_control_temp[1]~16\) # (GND)))
-- \u6|f_control_temp[2]~18\ = CARRY((!\u6|f_control_temp[1]~16\) # (!\u6|f_control_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(2),
	datad => VCC,
	cin => \u6|f_control_temp[1]~16\,
	combout => \u6|f_control_temp[2]~17_combout\,
	cout => \u6|f_control_temp[2]~18\);

-- Location: LCCOMB_X20_Y20_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X22_Y20_N5
\u6|f_control_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[2]~17_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(2));

-- Location: LCCOMB_X22_Y20_N6
\u6|f_control_temp[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[3]~19_combout\ = (\u6|f_control_temp\(3) & (\u6|f_control_temp[2]~18\ $ (GND))) # (!\u6|f_control_temp\(3) & (!\u6|f_control_temp[2]~18\ & VCC))
-- \u6|f_control_temp[3]~20\ = CARRY((\u6|f_control_temp\(3) & !\u6|f_control_temp[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(3),
	datad => VCC,
	cin => \u6|f_control_temp[2]~18\,
	combout => \u6|f_control_temp[3]~19_combout\,
	cout => \u6|f_control_temp[3]~20\);

-- Location: FF_X22_Y20_N7
\u6|f_control_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[3]~19_combout\,
	asdata => \reset~_wirecell_combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(3));

-- Location: LCCOMB_X22_Y20_N8
\u6|f_control_temp[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[4]~21_combout\ = (\u6|f_control_temp\(4) & (\u6|f_control_temp[3]~20\ & VCC)) # (!\u6|f_control_temp\(4) & (!\u6|f_control_temp[3]~20\))
-- \u6|f_control_temp[4]~22\ = CARRY((!\u6|f_control_temp\(4) & !\u6|f_control_temp[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(4),
	datad => VCC,
	cin => \u6|f_control_temp[3]~20\,
	combout => \u6|f_control_temp[4]~21_combout\,
	cout => \u6|f_control_temp[4]~22\);

-- Location: FF_X22_Y20_N9
\u6|f_control_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[4]~21_combout\,
	asdata => \reset~_wirecell_combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(4));

-- Location: LCCOMB_X22_Y20_N10
\u6|f_control_temp[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[5]~23_combout\ = (\u6|f_control_temp\(5) & ((GND) # (!\u6|f_control_temp[4]~22\))) # (!\u6|f_control_temp\(5) & (\u6|f_control_temp[4]~22\ $ (GND)))
-- \u6|f_control_temp[5]~24\ = CARRY((\u6|f_control_temp\(5)) # (!\u6|f_control_temp[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(5),
	datad => VCC,
	cin => \u6|f_control_temp[4]~22\,
	combout => \u6|f_control_temp[5]~23_combout\,
	cout => \u6|f_control_temp[5]~24\);

-- Location: FF_X22_Y20_N11
\u6|f_control_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[5]~23_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(5));

-- Location: LCCOMB_X22_Y20_N12
\u6|f_control_temp[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[6]~25_combout\ = (\u6|f_control_temp\(6) & (!\u6|f_control_temp[5]~24\)) # (!\u6|f_control_temp\(6) & ((\u6|f_control_temp[5]~24\) # (GND)))
-- \u6|f_control_temp[6]~26\ = CARRY((!\u6|f_control_temp[5]~24\) # (!\u6|f_control_temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(6),
	datad => VCC,
	cin => \u6|f_control_temp[5]~24\,
	combout => \u6|f_control_temp[6]~25_combout\,
	cout => \u6|f_control_temp[6]~26\);

-- Location: FF_X22_Y20_N13
\u6|f_control_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[6]~25_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(6));

-- Location: LCCOMB_X22_Y20_N14
\u6|f_control_temp[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[7]~27_combout\ = (\u6|f_control_temp\(7) & (\u6|f_control_temp[6]~26\ $ (GND))) # (!\u6|f_control_temp\(7) & (!\u6|f_control_temp[6]~26\ & VCC))
-- \u6|f_control_temp[7]~28\ = CARRY((\u6|f_control_temp\(7) & !\u6|f_control_temp[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(7),
	datad => VCC,
	cin => \u6|f_control_temp[6]~26\,
	combout => \u6|f_control_temp[7]~27_combout\,
	cout => \u6|f_control_temp[7]~28\);

-- Location: FF_X22_Y20_N15
\u6|f_control_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[7]~27_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(7));

-- Location: LCCOMB_X22_Y20_N16
\u6|f_control_temp[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[8]~29_combout\ = (\u6|f_control_temp\(8) & (!\u6|f_control_temp[7]~28\)) # (!\u6|f_control_temp\(8) & ((\u6|f_control_temp[7]~28\) # (GND)))
-- \u6|f_control_temp[8]~30\ = CARRY((!\u6|f_control_temp[7]~28\) # (!\u6|f_control_temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(8),
	datad => VCC,
	cin => \u6|f_control_temp[7]~28\,
	combout => \u6|f_control_temp[8]~29_combout\,
	cout => \u6|f_control_temp[8]~30\);

-- Location: FF_X22_Y20_N17
\u6|f_control_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[8]~29_combout\,
	asdata => \reset~_wirecell_combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(8));

-- Location: LCCOMB_X22_Y20_N18
\u6|f_control_temp[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[9]~31_combout\ = (\u6|f_control_temp\(9) & (\u6|f_control_temp[8]~30\ $ (GND))) # (!\u6|f_control_temp\(9) & (!\u6|f_control_temp[8]~30\ & VCC))
-- \u6|f_control_temp[9]~32\ = CARRY((\u6|f_control_temp\(9) & !\u6|f_control_temp[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(9),
	datad => VCC,
	cin => \u6|f_control_temp[8]~30\,
	combout => \u6|f_control_temp[9]~31_combout\,
	cout => \u6|f_control_temp[9]~32\);

-- Location: FF_X22_Y20_N19
\u6|f_control_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[9]~31_combout\,
	asdata => \reset~_wirecell_combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(9));

-- Location: LCCOMB_X22_Y20_N20
\u6|f_control_temp[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[10]~33_combout\ = (\u6|f_control_temp\(10) & (!\u6|f_control_temp[9]~32\)) # (!\u6|f_control_temp\(10) & ((\u6|f_control_temp[9]~32\) # (GND)))
-- \u6|f_control_temp[10]~34\ = CARRY((!\u6|f_control_temp[9]~32\) # (!\u6|f_control_temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(10),
	datad => VCC,
	cin => \u6|f_control_temp[9]~32\,
	combout => \u6|f_control_temp[10]~33_combout\,
	cout => \u6|f_control_temp[10]~34\);

-- Location: FF_X22_Y20_N21
\u6|f_control_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[10]~33_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(10));

-- Location: LCCOMB_X22_Y20_N22
\u6|f_control_temp[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[11]~35_combout\ = (\u6|f_control_temp\(11) & (\u6|f_control_temp[10]~34\ $ (GND))) # (!\u6|f_control_temp\(11) & (!\u6|f_control_temp[10]~34\ & VCC))
-- \u6|f_control_temp[11]~36\ = CARRY((\u6|f_control_temp\(11) & !\u6|f_control_temp[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(11),
	datad => VCC,
	cin => \u6|f_control_temp[10]~34\,
	combout => \u6|f_control_temp[11]~35_combout\,
	cout => \u6|f_control_temp[11]~36\);

-- Location: FF_X22_Y20_N23
\u6|f_control_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[11]~35_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(11));

-- Location: LCCOMB_X22_Y20_N24
\u6|f_control_temp[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[12]~37_combout\ = (\u6|f_control_temp\(12) & (!\u6|f_control_temp[11]~36\)) # (!\u6|f_control_temp\(12) & ((\u6|f_control_temp[11]~36\) # (GND)))
-- \u6|f_control_temp[12]~38\ = CARRY((!\u6|f_control_temp[11]~36\) # (!\u6|f_control_temp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(12),
	datad => VCC,
	cin => \u6|f_control_temp[11]~36\,
	combout => \u6|f_control_temp[12]~37_combout\,
	cout => \u6|f_control_temp[12]~38\);

-- Location: FF_X22_Y20_N25
\u6|f_control_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[12]~37_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(12));

-- Location: LCCOMB_X22_Y20_N26
\u6|f_control_temp[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[13]~39_combout\ = (\u6|f_control_temp\(13) & (\u6|f_control_temp[12]~38\ $ (GND))) # (!\u6|f_control_temp\(13) & (!\u6|f_control_temp[12]~38\ & VCC))
-- \u6|f_control_temp[13]~40\ = CARRY((\u6|f_control_temp\(13) & !\u6|f_control_temp[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(13),
	datad => VCC,
	cin => \u6|f_control_temp[12]~38\,
	combout => \u6|f_control_temp[13]~39_combout\,
	cout => \u6|f_control_temp[13]~40\);

-- Location: FF_X22_Y20_N27
\u6|f_control_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[13]~39_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(13));

-- Location: LCCOMB_X22_Y20_N28
\u6|f_control_temp[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[14]~41_combout\ = (\u6|f_control_temp\(14) & (!\u6|f_control_temp[13]~40\)) # (!\u6|f_control_temp\(14) & ((\u6|f_control_temp[13]~40\) # (GND)))
-- \u6|f_control_temp[14]~42\ = CARRY((!\u6|f_control_temp[13]~40\) # (!\u6|f_control_temp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|f_control_temp\(14),
	datad => VCC,
	cin => \u6|f_control_temp[13]~40\,
	combout => \u6|f_control_temp[14]~41_combout\,
	cout => \u6|f_control_temp[14]~42\);

-- Location: FF_X22_Y20_N29
\u6|f_control_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[14]~41_combout\,
	asdata => \reset~_wirecell_combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(14));

-- Location: LCCOMB_X22_Y20_N30
\u6|f_control_temp[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|f_control_temp[15]~43_combout\ = \u6|f_control_temp[14]~42\ $ (!\u6|f_control_temp\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u6|f_control_temp\(15),
	cin => \u6|f_control_temp[14]~42\,
	combout => \u6|f_control_temp[15]~43_combout\);

-- Location: FF_X22_Y20_N31
\u6|f_control_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|f_control_temp[15]~43_combout\,
	asdata => \~GND~combout\,
	sload => \u6|f_control_temp[13]~45_combout\,
	ena => \u6|f_control_temp[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|f_control_temp\(15));

-- Location: LCCOMB_X21_Y20_N0
\u1|u2|data_32out[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[0]~32_combout\ = (\u6|f_control_temp\(0) & (\u1|u2|data_32out\(0) $ (VCC))) # (!\u6|f_control_temp\(0) & (\u1|u2|data_32out\(0) & VCC))
-- \u1|u2|data_32out[0]~33\ = CARRY((\u6|f_control_temp\(0) & \u1|u2|data_32out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(0),
	datab => \u1|u2|data_32out\(0),
	datad => VCC,
	combout => \u1|u2|data_32out[0]~32_combout\,
	cout => \u1|u2|data_32out[0]~33\);

-- Location: FF_X21_Y20_N1
\u1|u2|data_32out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(0));

-- Location: LCCOMB_X21_Y20_N2
\u1|u2|data_32out[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[1]~34_combout\ = (\u6|f_control_temp\(1) & ((\u1|u2|data_32out\(1) & (\u1|u2|data_32out[0]~33\ & VCC)) # (!\u1|u2|data_32out\(1) & (!\u1|u2|data_32out[0]~33\)))) # (!\u6|f_control_temp\(1) & ((\u1|u2|data_32out\(1) & 
-- (!\u1|u2|data_32out[0]~33\)) # (!\u1|u2|data_32out\(1) & ((\u1|u2|data_32out[0]~33\) # (GND)))))
-- \u1|u2|data_32out[1]~35\ = CARRY((\u6|f_control_temp\(1) & (!\u1|u2|data_32out\(1) & !\u1|u2|data_32out[0]~33\)) # (!\u6|f_control_temp\(1) & ((!\u1|u2|data_32out[0]~33\) # (!\u1|u2|data_32out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(1),
	datab => \u1|u2|data_32out\(1),
	datad => VCC,
	cin => \u1|u2|data_32out[0]~33\,
	combout => \u1|u2|data_32out[1]~34_combout\,
	cout => \u1|u2|data_32out[1]~35\);

-- Location: FF_X21_Y20_N3
\u1|u2|data_32out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(1));

-- Location: LCCOMB_X21_Y20_N4
\u1|u2|data_32out[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[2]~36_combout\ = ((\u6|f_control_temp\(2) $ (\u1|u2|data_32out\(2) $ (!\u1|u2|data_32out[1]~35\)))) # (GND)
-- \u1|u2|data_32out[2]~37\ = CARRY((\u6|f_control_temp\(2) & ((\u1|u2|data_32out\(2)) # (!\u1|u2|data_32out[1]~35\))) # (!\u6|f_control_temp\(2) & (\u1|u2|data_32out\(2) & !\u1|u2|data_32out[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(2),
	datab => \u1|u2|data_32out\(2),
	datad => VCC,
	cin => \u1|u2|data_32out[1]~35\,
	combout => \u1|u2|data_32out[2]~36_combout\,
	cout => \u1|u2|data_32out[2]~37\);

-- Location: FF_X21_Y20_N5
\u1|u2|data_32out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(2));

-- Location: LCCOMB_X21_Y20_N6
\u1|u2|data_32out[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[3]~38_combout\ = (\u6|f_control_temp\(3) & ((\u1|u2|data_32out\(3) & (\u1|u2|data_32out[2]~37\ & VCC)) # (!\u1|u2|data_32out\(3) & (!\u1|u2|data_32out[2]~37\)))) # (!\u6|f_control_temp\(3) & ((\u1|u2|data_32out\(3) & 
-- (!\u1|u2|data_32out[2]~37\)) # (!\u1|u2|data_32out\(3) & ((\u1|u2|data_32out[2]~37\) # (GND)))))
-- \u1|u2|data_32out[3]~39\ = CARRY((\u6|f_control_temp\(3) & (!\u1|u2|data_32out\(3) & !\u1|u2|data_32out[2]~37\)) # (!\u6|f_control_temp\(3) & ((!\u1|u2|data_32out[2]~37\) # (!\u1|u2|data_32out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(3),
	datab => \u1|u2|data_32out\(3),
	datad => VCC,
	cin => \u1|u2|data_32out[2]~37\,
	combout => \u1|u2|data_32out[3]~38_combout\,
	cout => \u1|u2|data_32out[3]~39\);

-- Location: FF_X21_Y20_N7
\u1|u2|data_32out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(3));

-- Location: LCCOMB_X21_Y20_N8
\u1|u2|data_32out[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[4]~40_combout\ = ((\u1|u2|data_32out\(4) $ (\u6|f_control_temp\(4) $ (!\u1|u2|data_32out[3]~39\)))) # (GND)
-- \u1|u2|data_32out[4]~41\ = CARRY((\u1|u2|data_32out\(4) & ((\u6|f_control_temp\(4)) # (!\u1|u2|data_32out[3]~39\))) # (!\u1|u2|data_32out\(4) & (\u6|f_control_temp\(4) & !\u1|u2|data_32out[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(4),
	datab => \u6|f_control_temp\(4),
	datad => VCC,
	cin => \u1|u2|data_32out[3]~39\,
	combout => \u1|u2|data_32out[4]~40_combout\,
	cout => \u1|u2|data_32out[4]~41\);

-- Location: FF_X21_Y20_N9
\u1|u2|data_32out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(4));

-- Location: LCCOMB_X21_Y20_N10
\u1|u2|data_32out[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[5]~42_combout\ = (\u1|u2|data_32out\(5) & ((\u6|f_control_temp\(5) & (\u1|u2|data_32out[4]~41\ & VCC)) # (!\u6|f_control_temp\(5) & (!\u1|u2|data_32out[4]~41\)))) # (!\u1|u2|data_32out\(5) & ((\u6|f_control_temp\(5) & 
-- (!\u1|u2|data_32out[4]~41\)) # (!\u6|f_control_temp\(5) & ((\u1|u2|data_32out[4]~41\) # (GND)))))
-- \u1|u2|data_32out[5]~43\ = CARRY((\u1|u2|data_32out\(5) & (!\u6|f_control_temp\(5) & !\u1|u2|data_32out[4]~41\)) # (!\u1|u2|data_32out\(5) & ((!\u1|u2|data_32out[4]~41\) # (!\u6|f_control_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(5),
	datab => \u6|f_control_temp\(5),
	datad => VCC,
	cin => \u1|u2|data_32out[4]~41\,
	combout => \u1|u2|data_32out[5]~42_combout\,
	cout => \u1|u2|data_32out[5]~43\);

-- Location: FF_X21_Y20_N11
\u1|u2|data_32out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(5));

-- Location: LCCOMB_X21_Y20_N12
\u1|u2|data_32out[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[6]~44_combout\ = ((\u1|u2|data_32out\(6) $ (\u6|f_control_temp\(6) $ (!\u1|u2|data_32out[5]~43\)))) # (GND)
-- \u1|u2|data_32out[6]~45\ = CARRY((\u1|u2|data_32out\(6) & ((\u6|f_control_temp\(6)) # (!\u1|u2|data_32out[5]~43\))) # (!\u1|u2|data_32out\(6) & (\u6|f_control_temp\(6) & !\u1|u2|data_32out[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(6),
	datab => \u6|f_control_temp\(6),
	datad => VCC,
	cin => \u1|u2|data_32out[5]~43\,
	combout => \u1|u2|data_32out[6]~44_combout\,
	cout => \u1|u2|data_32out[6]~45\);

-- Location: FF_X21_Y20_N13
\u1|u2|data_32out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(6));

-- Location: LCCOMB_X21_Y20_N14
\u1|u2|data_32out[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[7]~46_combout\ = (\u1|u2|data_32out\(7) & ((\u6|f_control_temp\(7) & (\u1|u2|data_32out[6]~45\ & VCC)) # (!\u6|f_control_temp\(7) & (!\u1|u2|data_32out[6]~45\)))) # (!\u1|u2|data_32out\(7) & ((\u6|f_control_temp\(7) & 
-- (!\u1|u2|data_32out[6]~45\)) # (!\u6|f_control_temp\(7) & ((\u1|u2|data_32out[6]~45\) # (GND)))))
-- \u1|u2|data_32out[7]~47\ = CARRY((\u1|u2|data_32out\(7) & (!\u6|f_control_temp\(7) & !\u1|u2|data_32out[6]~45\)) # (!\u1|u2|data_32out\(7) & ((!\u1|u2|data_32out[6]~45\) # (!\u6|f_control_temp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(7),
	datab => \u6|f_control_temp\(7),
	datad => VCC,
	cin => \u1|u2|data_32out[6]~45\,
	combout => \u1|u2|data_32out[7]~46_combout\,
	cout => \u1|u2|data_32out[7]~47\);

-- Location: FF_X21_Y20_N15
\u1|u2|data_32out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(7));

-- Location: LCCOMB_X21_Y20_N16
\u1|u2|data_32out[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[8]~48_combout\ = ((\u6|f_control_temp\(8) $ (\u1|u2|data_32out\(8) $ (!\u1|u2|data_32out[7]~47\)))) # (GND)
-- \u1|u2|data_32out[8]~49\ = CARRY((\u6|f_control_temp\(8) & ((\u1|u2|data_32out\(8)) # (!\u1|u2|data_32out[7]~47\))) # (!\u6|f_control_temp\(8) & (\u1|u2|data_32out\(8) & !\u1|u2|data_32out[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(8),
	datab => \u1|u2|data_32out\(8),
	datad => VCC,
	cin => \u1|u2|data_32out[7]~47\,
	combout => \u1|u2|data_32out[8]~48_combout\,
	cout => \u1|u2|data_32out[8]~49\);

-- Location: FF_X21_Y20_N17
\u1|u2|data_32out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(8));

-- Location: LCCOMB_X21_Y20_N18
\u1|u2|data_32out[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[9]~50_combout\ = (\u6|f_control_temp\(9) & ((\u1|u2|data_32out\(9) & (\u1|u2|data_32out[8]~49\ & VCC)) # (!\u1|u2|data_32out\(9) & (!\u1|u2|data_32out[8]~49\)))) # (!\u6|f_control_temp\(9) & ((\u1|u2|data_32out\(9) & 
-- (!\u1|u2|data_32out[8]~49\)) # (!\u1|u2|data_32out\(9) & ((\u1|u2|data_32out[8]~49\) # (GND)))))
-- \u1|u2|data_32out[9]~51\ = CARRY((\u6|f_control_temp\(9) & (!\u1|u2|data_32out\(9) & !\u1|u2|data_32out[8]~49\)) # (!\u6|f_control_temp\(9) & ((!\u1|u2|data_32out[8]~49\) # (!\u1|u2|data_32out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(9),
	datab => \u1|u2|data_32out\(9),
	datad => VCC,
	cin => \u1|u2|data_32out[8]~49\,
	combout => \u1|u2|data_32out[9]~50_combout\,
	cout => \u1|u2|data_32out[9]~51\);

-- Location: FF_X21_Y20_N19
\u1|u2|data_32out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(9));

-- Location: LCCOMB_X21_Y20_N20
\u1|u2|data_32out[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[10]~52_combout\ = ((\u6|f_control_temp\(10) $ (\u1|u2|data_32out\(10) $ (!\u1|u2|data_32out[9]~51\)))) # (GND)
-- \u1|u2|data_32out[10]~53\ = CARRY((\u6|f_control_temp\(10) & ((\u1|u2|data_32out\(10)) # (!\u1|u2|data_32out[9]~51\))) # (!\u6|f_control_temp\(10) & (\u1|u2|data_32out\(10) & !\u1|u2|data_32out[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(10),
	datab => \u1|u2|data_32out\(10),
	datad => VCC,
	cin => \u1|u2|data_32out[9]~51\,
	combout => \u1|u2|data_32out[10]~52_combout\,
	cout => \u1|u2|data_32out[10]~53\);

-- Location: FF_X21_Y20_N21
\u1|u2|data_32out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(10));

-- Location: LCCOMB_X21_Y20_N22
\u1|u2|data_32out[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[11]~54_combout\ = (\u1|u2|data_32out\(11) & ((\u6|f_control_temp\(11) & (\u1|u2|data_32out[10]~53\ & VCC)) # (!\u6|f_control_temp\(11) & (!\u1|u2|data_32out[10]~53\)))) # (!\u1|u2|data_32out\(11) & ((\u6|f_control_temp\(11) & 
-- (!\u1|u2|data_32out[10]~53\)) # (!\u6|f_control_temp\(11) & ((\u1|u2|data_32out[10]~53\) # (GND)))))
-- \u1|u2|data_32out[11]~55\ = CARRY((\u1|u2|data_32out\(11) & (!\u6|f_control_temp\(11) & !\u1|u2|data_32out[10]~53\)) # (!\u1|u2|data_32out\(11) & ((!\u1|u2|data_32out[10]~53\) # (!\u6|f_control_temp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(11),
	datab => \u6|f_control_temp\(11),
	datad => VCC,
	cin => \u1|u2|data_32out[10]~53\,
	combout => \u1|u2|data_32out[11]~54_combout\,
	cout => \u1|u2|data_32out[11]~55\);

-- Location: FF_X21_Y20_N23
\u1|u2|data_32out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(11));

-- Location: LCCOMB_X21_Y20_N24
\u1|u2|data_32out[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[12]~56_combout\ = ((\u6|f_control_temp\(12) $ (\u1|u2|data_32out\(12) $ (!\u1|u2|data_32out[11]~55\)))) # (GND)
-- \u1|u2|data_32out[12]~57\ = CARRY((\u6|f_control_temp\(12) & ((\u1|u2|data_32out\(12)) # (!\u1|u2|data_32out[11]~55\))) # (!\u6|f_control_temp\(12) & (\u1|u2|data_32out\(12) & !\u1|u2|data_32out[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(12),
	datab => \u1|u2|data_32out\(12),
	datad => VCC,
	cin => \u1|u2|data_32out[11]~55\,
	combout => \u1|u2|data_32out[12]~56_combout\,
	cout => \u1|u2|data_32out[12]~57\);

-- Location: FF_X21_Y20_N25
\u1|u2|data_32out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(12));

-- Location: LCCOMB_X21_Y20_N26
\u1|u2|data_32out[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[13]~58_combout\ = (\u1|u2|data_32out\(13) & ((\u6|f_control_temp\(13) & (\u1|u2|data_32out[12]~57\ & VCC)) # (!\u6|f_control_temp\(13) & (!\u1|u2|data_32out[12]~57\)))) # (!\u1|u2|data_32out\(13) & ((\u6|f_control_temp\(13) & 
-- (!\u1|u2|data_32out[12]~57\)) # (!\u6|f_control_temp\(13) & ((\u1|u2|data_32out[12]~57\) # (GND)))))
-- \u1|u2|data_32out[13]~59\ = CARRY((\u1|u2|data_32out\(13) & (!\u6|f_control_temp\(13) & !\u1|u2|data_32out[12]~57\)) # (!\u1|u2|data_32out\(13) & ((!\u1|u2|data_32out[12]~57\) # (!\u6|f_control_temp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(13),
	datab => \u6|f_control_temp\(13),
	datad => VCC,
	cin => \u1|u2|data_32out[12]~57\,
	combout => \u1|u2|data_32out[13]~58_combout\,
	cout => \u1|u2|data_32out[13]~59\);

-- Location: FF_X21_Y20_N27
\u1|u2|data_32out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(13));

-- Location: LCCOMB_X21_Y20_N28
\u1|u2|data_32out[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[14]~60_combout\ = ((\u1|u2|data_32out\(14) $ (\u6|f_control_temp\(14) $ (!\u1|u2|data_32out[13]~59\)))) # (GND)
-- \u1|u2|data_32out[14]~61\ = CARRY((\u1|u2|data_32out\(14) & ((\u6|f_control_temp\(14)) # (!\u1|u2|data_32out[13]~59\))) # (!\u1|u2|data_32out\(14) & (\u6|f_control_temp\(14) & !\u1|u2|data_32out[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(14),
	datab => \u6|f_control_temp\(14),
	datad => VCC,
	cin => \u1|u2|data_32out[13]~59\,
	combout => \u1|u2|data_32out[14]~60_combout\,
	cout => \u1|u2|data_32out[14]~61\);

-- Location: FF_X21_Y20_N29
\u1|u2|data_32out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(14));

-- Location: LCCOMB_X21_Y20_N30
\u1|u2|data_32out[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[15]~62_combout\ = (\u6|f_control_temp\(15) & ((\u1|u2|data_32out\(15) & (\u1|u2|data_32out[14]~61\ & VCC)) # (!\u1|u2|data_32out\(15) & (!\u1|u2|data_32out[14]~61\)))) # (!\u6|f_control_temp\(15) & ((\u1|u2|data_32out\(15) & 
-- (!\u1|u2|data_32out[14]~61\)) # (!\u1|u2|data_32out\(15) & ((\u1|u2|data_32out[14]~61\) # (GND)))))
-- \u1|u2|data_32out[15]~63\ = CARRY((\u6|f_control_temp\(15) & (!\u1|u2|data_32out\(15) & !\u1|u2|data_32out[14]~61\)) # (!\u6|f_control_temp\(15) & ((!\u1|u2|data_32out[14]~61\) # (!\u1|u2|data_32out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|f_control_temp\(15),
	datab => \u1|u2|data_32out\(15),
	datad => VCC,
	cin => \u1|u2|data_32out[14]~61\,
	combout => \u1|u2|data_32out[15]~62_combout\,
	cout => \u1|u2|data_32out[15]~63\);

-- Location: FF_X21_Y20_N31
\u1|u2|data_32out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(15));

-- Location: LCCOMB_X21_Y19_N0
\u1|u2|data_32out[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[16]~64_combout\ = (\u1|u2|data_32out\(16) & (\u1|u2|data_32out[15]~63\ $ (GND))) # (!\u1|u2|data_32out\(16) & (!\u1|u2|data_32out[15]~63\ & VCC))
-- \u1|u2|data_32out[16]~65\ = CARRY((\u1|u2|data_32out\(16) & !\u1|u2|data_32out[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(16),
	datad => VCC,
	cin => \u1|u2|data_32out[15]~63\,
	combout => \u1|u2|data_32out[16]~64_combout\,
	cout => \u1|u2|data_32out[16]~65\);

-- Location: FF_X21_Y19_N1
\u1|u2|data_32out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(16));

-- Location: LCCOMB_X21_Y19_N2
\u1|u2|data_32out[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[17]~66_combout\ = (\u1|u2|data_32out\(17) & (!\u1|u2|data_32out[16]~65\)) # (!\u1|u2|data_32out\(17) & ((\u1|u2|data_32out[16]~65\) # (GND)))
-- \u1|u2|data_32out[17]~67\ = CARRY((!\u1|u2|data_32out[16]~65\) # (!\u1|u2|data_32out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(17),
	datad => VCC,
	cin => \u1|u2|data_32out[16]~65\,
	combout => \u1|u2|data_32out[17]~66_combout\,
	cout => \u1|u2|data_32out[17]~67\);

-- Location: FF_X21_Y19_N3
\u1|u2|data_32out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(17));

-- Location: LCCOMB_X21_Y19_N4
\u1|u2|data_32out[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[18]~68_combout\ = (\u1|u2|data_32out\(18) & (\u1|u2|data_32out[17]~67\ $ (GND))) # (!\u1|u2|data_32out\(18) & (!\u1|u2|data_32out[17]~67\ & VCC))
-- \u1|u2|data_32out[18]~69\ = CARRY((\u1|u2|data_32out\(18) & !\u1|u2|data_32out[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(18),
	datad => VCC,
	cin => \u1|u2|data_32out[17]~67\,
	combout => \u1|u2|data_32out[18]~68_combout\,
	cout => \u1|u2|data_32out[18]~69\);

-- Location: FF_X21_Y19_N5
\u1|u2|data_32out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(18));

-- Location: LCCOMB_X21_Y19_N6
\u1|u2|data_32out[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[19]~70_combout\ = (\u1|u2|data_32out\(19) & (!\u1|u2|data_32out[18]~69\)) # (!\u1|u2|data_32out\(19) & ((\u1|u2|data_32out[18]~69\) # (GND)))
-- \u1|u2|data_32out[19]~71\ = CARRY((!\u1|u2|data_32out[18]~69\) # (!\u1|u2|data_32out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(19),
	datad => VCC,
	cin => \u1|u2|data_32out[18]~69\,
	combout => \u1|u2|data_32out[19]~70_combout\,
	cout => \u1|u2|data_32out[19]~71\);

-- Location: FF_X21_Y19_N7
\u1|u2|data_32out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(19));

-- Location: LCCOMB_X21_Y19_N8
\u1|u2|data_32out[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[20]~72_combout\ = (\u1|u2|data_32out\(20) & (\u1|u2|data_32out[19]~71\ $ (GND))) # (!\u1|u2|data_32out\(20) & (!\u1|u2|data_32out[19]~71\ & VCC))
-- \u1|u2|data_32out[20]~73\ = CARRY((\u1|u2|data_32out\(20) & !\u1|u2|data_32out[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(20),
	datad => VCC,
	cin => \u1|u2|data_32out[19]~71\,
	combout => \u1|u2|data_32out[20]~72_combout\,
	cout => \u1|u2|data_32out[20]~73\);

-- Location: FF_X21_Y19_N9
\u1|u2|data_32out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(20));

-- Location: LCCOMB_X21_Y19_N10
\u1|u2|data_32out[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[21]~74_combout\ = (\u1|u2|data_32out\(21) & (!\u1|u2|data_32out[20]~73\)) # (!\u1|u2|data_32out\(21) & ((\u1|u2|data_32out[20]~73\) # (GND)))
-- \u1|u2|data_32out[21]~75\ = CARRY((!\u1|u2|data_32out[20]~73\) # (!\u1|u2|data_32out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(21),
	datad => VCC,
	cin => \u1|u2|data_32out[20]~73\,
	combout => \u1|u2|data_32out[21]~74_combout\,
	cout => \u1|u2|data_32out[21]~75\);

-- Location: FF_X21_Y19_N11
\u1|u2|data_32out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(21));

-- Location: LCCOMB_X21_Y19_N12
\u1|u2|data_32out[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[22]~76_combout\ = (\u1|u2|data_32out\(22) & (\u1|u2|data_32out[21]~75\ $ (GND))) # (!\u1|u2|data_32out\(22) & (!\u1|u2|data_32out[21]~75\ & VCC))
-- \u1|u2|data_32out[22]~77\ = CARRY((\u1|u2|data_32out\(22) & !\u1|u2|data_32out[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(22),
	datad => VCC,
	cin => \u1|u2|data_32out[21]~75\,
	combout => \u1|u2|data_32out[22]~76_combout\,
	cout => \u1|u2|data_32out[22]~77\);

-- Location: FF_X21_Y19_N13
\u1|u2|data_32out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(22));

-- Location: LCCOMB_X14_Y19_N24
\u1|u4|data_10out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[0]~feeder_combout\ = \u1|u2|data_32out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|u2|data_32out\(22),
	combout => \u1|u4|data_10out[0]~feeder_combout\);

-- Location: FF_X14_Y19_N25
\u1|u4|data_10out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(0));

-- Location: LCCOMB_X21_Y19_N14
\u1|u2|data_32out[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[23]~78_combout\ = (\u1|u2|data_32out\(23) & (!\u1|u2|data_32out[22]~77\)) # (!\u1|u2|data_32out\(23) & ((\u1|u2|data_32out[22]~77\) # (GND)))
-- \u1|u2|data_32out[23]~79\ = CARRY((!\u1|u2|data_32out[22]~77\) # (!\u1|u2|data_32out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(23),
	datad => VCC,
	cin => \u1|u2|data_32out[22]~77\,
	combout => \u1|u2|data_32out[23]~78_combout\,
	cout => \u1|u2|data_32out[23]~79\);

-- Location: FF_X21_Y19_N15
\u1|u2|data_32out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(23));

-- Location: LCCOMB_X14_Y19_N30
\u1|u4|data_10out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[1]~feeder_combout\ = \u1|u2|data_32out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|u2|data_32out\(23),
	combout => \u1|u4|data_10out[1]~feeder_combout\);

-- Location: FF_X14_Y19_N31
\u1|u4|data_10out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(1));

-- Location: LCCOMB_X21_Y19_N16
\u1|u2|data_32out[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[24]~80_combout\ = (\u1|u2|data_32out\(24) & (\u1|u2|data_32out[23]~79\ $ (GND))) # (!\u1|u2|data_32out\(24) & (!\u1|u2|data_32out[23]~79\ & VCC))
-- \u1|u2|data_32out[24]~81\ = CARRY((\u1|u2|data_32out\(24) & !\u1|u2|data_32out[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(24),
	datad => VCC,
	cin => \u1|u2|data_32out[23]~79\,
	combout => \u1|u2|data_32out[24]~80_combout\,
	cout => \u1|u2|data_32out[24]~81\);

-- Location: FF_X21_Y19_N17
\u1|u2|data_32out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(24));

-- Location: IOIBUF_X21_Y29_N15
\set_p_key_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_p_key_in,
	o => \set_p_key_in~input_o\);

-- Location: LCCOMB_X19_Y25_N10
\u5|state.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|state.s0~0_combout\ = !\set_p_key_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set_p_key_in~input_o\,
	combout => \u5|state.s0~0_combout\);

-- Location: FF_X19_Y25_N31
\u5|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|state.s0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|state.s0~q\);

-- Location: LCCOMB_X19_Y25_N2
\u5|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|state~6_combout\ = (!\u5|state.s0~q\ & !\set_p_key_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state.s0~q\,
	datac => \set_p_key_in~input_o\,
	combout => \u5|state~6_combout\);

-- Location: FF_X19_Y25_N3
\u5|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|state.s1~q\);

-- Location: LCCOMB_X19_Y25_N4
\u5|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|state~7_combout\ = (!\set_p_key_in~input_o\ & \u5|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_p_key_in~input_o\,
	datad => \u5|state.s1~q\,
	combout => \u5|state~7_combout\);

-- Location: FF_X19_Y25_N5
\u5|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|state.s2~q\);

-- Location: LCCOMB_X19_Y25_N16
\u5|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector1~0_combout\ = (\u5|state.s0~q\ & (!\set_p_key_in~input_o\ & !\u5|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|state.s0~q\,
	datac => \set_p_key_in~input_o\,
	datad => \u5|state.s1~q\,
	combout => \u5|Selector1~0_combout\);

-- Location: FF_X19_Y25_N17
\u5|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|state.s3~q\);

-- Location: LCCOMB_X19_Y25_N18
\u5|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector0~0_combout\ = (\set_p_key_in~input_o\) # (!\u5|state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set_p_key_in~input_o\,
	datad => \u5|state.s3~q\,
	combout => \u5|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y25_N12
\u5|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Selector0~1_combout\ = (\u5|Selector0~0_combout\ & ((\u5|key_out~q\) # ((!\u5|state.s1~q\ & !\u5|state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|key_out~q\,
	datab => \u5|state.s1~q\,
	datac => \u5|state.s2~q\,
	datad => \u5|Selector0~0_combout\,
	combout => \u5|Selector0~1_combout\);

-- Location: FF_X19_Y25_N11
\u5|key_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|Selector0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|key_out~q\);

-- Location: CLKCTRL_G14
\u5|key_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u5|key_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u5|key_out~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y19_N16
\u6|p_control_temp[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[2]~8_combout\ = \u6|p_control_temp\(2) $ (VCC)
-- \u6|p_control_temp[2]~9\ = CARRY(\u6|p_control_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|p_control_temp\(2),
	datad => VCC,
	combout => \u6|p_control_temp[2]~8_combout\,
	cout => \u6|p_control_temp[2]~9\);

-- Location: LCCOMB_X19_Y25_N30
\u6|p_control_temp[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[6]~10_combout\ = (!\reset~input_o\) # (!\u5|key_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|key_out~q\,
	datad => \reset~input_o\,
	combout => \u6|p_control_temp[6]~10_combout\);

-- Location: FF_X17_Y19_N17
\u6|p_control_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[2]~8_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(2));

-- Location: LCCOMB_X17_Y19_N0
\u1|u4|data_10out[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[2]~8_combout\ = (\u1|u2|data_32out\(24) & (\u6|p_control_temp\(2) $ (VCC))) # (!\u1|u2|data_32out\(24) & (\u6|p_control_temp\(2) & VCC))
-- \u1|u4|data_10out[2]~9\ = CARRY((\u1|u2|data_32out\(24) & \u6|p_control_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(24),
	datab => \u6|p_control_temp\(2),
	datad => VCC,
	combout => \u1|u4|data_10out[2]~8_combout\,
	cout => \u1|u4|data_10out[2]~9\);

-- Location: FF_X17_Y19_N1
\u1|u4|data_10out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(2));

-- Location: LCCOMB_X21_Y19_N18
\u1|u2|data_32out[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[25]~82_combout\ = (\u1|u2|data_32out\(25) & (!\u1|u2|data_32out[24]~81\)) # (!\u1|u2|data_32out\(25) & ((\u1|u2|data_32out[24]~81\) # (GND)))
-- \u1|u2|data_32out[25]~83\ = CARRY((!\u1|u2|data_32out[24]~81\) # (!\u1|u2|data_32out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(25),
	datad => VCC,
	cin => \u1|u2|data_32out[24]~81\,
	combout => \u1|u2|data_32out[25]~82_combout\,
	cout => \u1|u2|data_32out[25]~83\);

-- Location: FF_X21_Y19_N19
\u1|u2|data_32out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(25));

-- Location: LCCOMB_X17_Y19_N18
\u6|p_control_temp[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[3]~11_combout\ = (\u6|p_control_temp\(3) & (!\u6|p_control_temp[2]~9\)) # (!\u6|p_control_temp\(3) & ((\u6|p_control_temp[2]~9\) # (GND)))
-- \u6|p_control_temp[3]~12\ = CARRY((!\u6|p_control_temp[2]~9\) # (!\u6|p_control_temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|p_control_temp\(3),
	datad => VCC,
	cin => \u6|p_control_temp[2]~9\,
	combout => \u6|p_control_temp[3]~11_combout\,
	cout => \u6|p_control_temp[3]~12\);

-- Location: FF_X17_Y19_N19
\u6|p_control_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[3]~11_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(3));

-- Location: LCCOMB_X17_Y19_N2
\u1|u4|data_10out[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[3]~10_combout\ = (\u1|u2|data_32out\(25) & ((\u6|p_control_temp\(3) & (\u1|u4|data_10out[2]~9\ & VCC)) # (!\u6|p_control_temp\(3) & (!\u1|u4|data_10out[2]~9\)))) # (!\u1|u2|data_32out\(25) & ((\u6|p_control_temp\(3) & 
-- (!\u1|u4|data_10out[2]~9\)) # (!\u6|p_control_temp\(3) & ((\u1|u4|data_10out[2]~9\) # (GND)))))
-- \u1|u4|data_10out[3]~11\ = CARRY((\u1|u2|data_32out\(25) & (!\u6|p_control_temp\(3) & !\u1|u4|data_10out[2]~9\)) # (!\u1|u2|data_32out\(25) & ((!\u1|u4|data_10out[2]~9\) # (!\u6|p_control_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(25),
	datab => \u6|p_control_temp\(3),
	datad => VCC,
	cin => \u1|u4|data_10out[2]~9\,
	combout => \u1|u4|data_10out[3]~10_combout\,
	cout => \u1|u4|data_10out[3]~11\);

-- Location: FF_X17_Y19_N3
\u1|u4|data_10out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(3));

-- Location: LCCOMB_X21_Y19_N20
\u1|u2|data_32out[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[26]~84_combout\ = (\u1|u2|data_32out\(26) & (\u1|u2|data_32out[25]~83\ $ (GND))) # (!\u1|u2|data_32out\(26) & (!\u1|u2|data_32out[25]~83\ & VCC))
-- \u1|u2|data_32out[26]~85\ = CARRY((\u1|u2|data_32out\(26) & !\u1|u2|data_32out[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(26),
	datad => VCC,
	cin => \u1|u2|data_32out[25]~83\,
	combout => \u1|u2|data_32out[26]~84_combout\,
	cout => \u1|u2|data_32out[26]~85\);

-- Location: FF_X21_Y19_N21
\u1|u2|data_32out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(26));

-- Location: LCCOMB_X17_Y19_N20
\u6|p_control_temp[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[4]~13_combout\ = (\u6|p_control_temp\(4) & (\u6|p_control_temp[3]~12\ $ (GND))) # (!\u6|p_control_temp\(4) & (!\u6|p_control_temp[3]~12\ & VCC))
-- \u6|p_control_temp[4]~14\ = CARRY((\u6|p_control_temp\(4) & !\u6|p_control_temp[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|p_control_temp\(4),
	datad => VCC,
	cin => \u6|p_control_temp[3]~12\,
	combout => \u6|p_control_temp[4]~13_combout\,
	cout => \u6|p_control_temp[4]~14\);

-- Location: FF_X17_Y19_N21
\u6|p_control_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[4]~13_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(4));

-- Location: LCCOMB_X17_Y19_N4
\u1|u4|data_10out[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[4]~12_combout\ = ((\u1|u2|data_32out\(26) $ (\u6|p_control_temp\(4) $ (!\u1|u4|data_10out[3]~11\)))) # (GND)
-- \u1|u4|data_10out[4]~13\ = CARRY((\u1|u2|data_32out\(26) & ((\u6|p_control_temp\(4)) # (!\u1|u4|data_10out[3]~11\))) # (!\u1|u2|data_32out\(26) & (\u6|p_control_temp\(4) & !\u1|u4|data_10out[3]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(26),
	datab => \u6|p_control_temp\(4),
	datad => VCC,
	cin => \u1|u4|data_10out[3]~11\,
	combout => \u1|u4|data_10out[4]~12_combout\,
	cout => \u1|u4|data_10out[4]~13\);

-- Location: FF_X17_Y19_N5
\u1|u4|data_10out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(4));

-- Location: LCCOMB_X17_Y19_N22
\u6|p_control_temp[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[5]~15_combout\ = (\u6|p_control_temp\(5) & (\u6|p_control_temp[4]~14\ & VCC)) # (!\u6|p_control_temp\(5) & (!\u6|p_control_temp[4]~14\))
-- \u6|p_control_temp[5]~16\ = CARRY((!\u6|p_control_temp\(5) & !\u6|p_control_temp[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|p_control_temp\(5),
	datad => VCC,
	cin => \u6|p_control_temp[4]~14\,
	combout => \u6|p_control_temp[5]~15_combout\,
	cout => \u6|p_control_temp[5]~16\);

-- Location: FF_X17_Y19_N23
\u6|p_control_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[5]~15_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(5));

-- Location: LCCOMB_X21_Y19_N22
\u1|u2|data_32out[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[27]~86_combout\ = (\u1|u2|data_32out\(27) & (!\u1|u2|data_32out[26]~85\)) # (!\u1|u2|data_32out\(27) & ((\u1|u2|data_32out[26]~85\) # (GND)))
-- \u1|u2|data_32out[27]~87\ = CARRY((!\u1|u2|data_32out[26]~85\) # (!\u1|u2|data_32out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(27),
	datad => VCC,
	cin => \u1|u2|data_32out[26]~85\,
	combout => \u1|u2|data_32out[27]~86_combout\,
	cout => \u1|u2|data_32out[27]~87\);

-- Location: FF_X21_Y19_N23
\u1|u2|data_32out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(27));

-- Location: LCCOMB_X17_Y19_N6
\u1|u4|data_10out[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[5]~14_combout\ = (\u6|p_control_temp\(5) & ((\u1|u2|data_32out\(27) & (\u1|u4|data_10out[4]~13\ & VCC)) # (!\u1|u2|data_32out\(27) & (!\u1|u4|data_10out[4]~13\)))) # (!\u6|p_control_temp\(5) & ((\u1|u2|data_32out\(27) & 
-- (!\u1|u4|data_10out[4]~13\)) # (!\u1|u2|data_32out\(27) & ((\u1|u4|data_10out[4]~13\) # (GND)))))
-- \u1|u4|data_10out[5]~15\ = CARRY((\u6|p_control_temp\(5) & (!\u1|u2|data_32out\(27) & !\u1|u4|data_10out[4]~13\)) # (!\u6|p_control_temp\(5) & ((!\u1|u4|data_10out[4]~13\) # (!\u1|u2|data_32out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|p_control_temp\(5),
	datab => \u1|u2|data_32out\(27),
	datad => VCC,
	cin => \u1|u4|data_10out[4]~13\,
	combout => \u1|u4|data_10out[5]~14_combout\,
	cout => \u1|u4|data_10out[5]~15\);

-- Location: FF_X17_Y19_N7
\u1|u4|data_10out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(5));

-- Location: LCCOMB_X21_Y19_N24
\u1|u2|data_32out[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[28]~88_combout\ = (\u1|u2|data_32out\(28) & (\u1|u2|data_32out[27]~87\ $ (GND))) # (!\u1|u2|data_32out\(28) & (!\u1|u2|data_32out[27]~87\ & VCC))
-- \u1|u2|data_32out[28]~89\ = CARRY((\u1|u2|data_32out\(28) & !\u1|u2|data_32out[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(28),
	datad => VCC,
	cin => \u1|u2|data_32out[27]~87\,
	combout => \u1|u2|data_32out[28]~88_combout\,
	cout => \u1|u2|data_32out[28]~89\);

-- Location: FF_X21_Y19_N25
\u1|u2|data_32out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(28));

-- Location: LCCOMB_X17_Y19_N24
\u6|p_control_temp[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[6]~17_combout\ = (\u6|p_control_temp\(6) & ((GND) # (!\u6|p_control_temp[5]~16\))) # (!\u6|p_control_temp\(6) & (\u6|p_control_temp[5]~16\ $ (GND)))
-- \u6|p_control_temp[6]~18\ = CARRY((\u6|p_control_temp\(6)) # (!\u6|p_control_temp[5]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|p_control_temp\(6),
	datad => VCC,
	cin => \u6|p_control_temp[5]~16\,
	combout => \u6|p_control_temp[6]~17_combout\,
	cout => \u6|p_control_temp[6]~18\);

-- Location: FF_X17_Y19_N25
\u6|p_control_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[6]~17_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(6));

-- Location: LCCOMB_X17_Y19_N8
\u1|u4|data_10out[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[6]~16_combout\ = ((\u1|u2|data_32out\(28) $ (\u6|p_control_temp\(6) $ (!\u1|u4|data_10out[5]~15\)))) # (GND)
-- \u1|u4|data_10out[6]~17\ = CARRY((\u1|u2|data_32out\(28) & ((\u6|p_control_temp\(6)) # (!\u1|u4|data_10out[5]~15\))) # (!\u1|u2|data_32out\(28) & (\u6|p_control_temp\(6) & !\u1|u4|data_10out[5]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(28),
	datab => \u6|p_control_temp\(6),
	datad => VCC,
	cin => \u1|u4|data_10out[5]~15\,
	combout => \u1|u4|data_10out[6]~16_combout\,
	cout => \u1|u4|data_10out[6]~17\);

-- Location: FF_X17_Y19_N9
\u1|u4|data_10out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(6));

-- Location: LCCOMB_X17_Y19_N26
\u6|p_control_temp[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[7]~19_combout\ = (\u6|p_control_temp\(7) & (!\u6|p_control_temp[6]~18\)) # (!\u6|p_control_temp\(7) & ((\u6|p_control_temp[6]~18\) # (GND)))
-- \u6|p_control_temp[7]~20\ = CARRY((!\u6|p_control_temp[6]~18\) # (!\u6|p_control_temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|p_control_temp\(7),
	datad => VCC,
	cin => \u6|p_control_temp[6]~18\,
	combout => \u6|p_control_temp[7]~19_combout\,
	cout => \u6|p_control_temp[7]~20\);

-- Location: FF_X17_Y19_N27
\u6|p_control_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[7]~19_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(7));

-- Location: LCCOMB_X21_Y19_N26
\u1|u2|data_32out[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[29]~90_combout\ = (\u1|u2|data_32out\(29) & (!\u1|u2|data_32out[28]~89\)) # (!\u1|u2|data_32out\(29) & ((\u1|u2|data_32out[28]~89\) # (GND)))
-- \u1|u2|data_32out[29]~91\ = CARRY((!\u1|u2|data_32out[28]~89\) # (!\u1|u2|data_32out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(29),
	datad => VCC,
	cin => \u1|u2|data_32out[28]~89\,
	combout => \u1|u2|data_32out[29]~90_combout\,
	cout => \u1|u2|data_32out[29]~91\);

-- Location: FF_X21_Y19_N27
\u1|u2|data_32out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(29));

-- Location: LCCOMB_X17_Y19_N10
\u1|u4|data_10out[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[7]~18_combout\ = (\u6|p_control_temp\(7) & ((\u1|u2|data_32out\(29) & (\u1|u4|data_10out[6]~17\ & VCC)) # (!\u1|u2|data_32out\(29) & (!\u1|u4|data_10out[6]~17\)))) # (!\u6|p_control_temp\(7) & ((\u1|u2|data_32out\(29) & 
-- (!\u1|u4|data_10out[6]~17\)) # (!\u1|u2|data_32out\(29) & ((\u1|u4|data_10out[6]~17\) # (GND)))))
-- \u1|u4|data_10out[7]~19\ = CARRY((\u6|p_control_temp\(7) & (!\u1|u2|data_32out\(29) & !\u1|u4|data_10out[6]~17\)) # (!\u6|p_control_temp\(7) & ((!\u1|u4|data_10out[6]~17\) # (!\u1|u2|data_32out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|p_control_temp\(7),
	datab => \u1|u2|data_32out\(29),
	datad => VCC,
	cin => \u1|u4|data_10out[6]~17\,
	combout => \u1|u4|data_10out[7]~18_combout\,
	cout => \u1|u4|data_10out[7]~19\);

-- Location: FF_X17_Y19_N11
\u1|u4|data_10out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(7));

-- Location: LCCOMB_X21_Y19_N28
\u1|u2|data_32out[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[30]~92_combout\ = (\u1|u2|data_32out\(30) & (\u1|u2|data_32out[29]~91\ $ (GND))) # (!\u1|u2|data_32out\(30) & (!\u1|u2|data_32out[29]~91\ & VCC))
-- \u1|u2|data_32out[30]~93\ = CARRY((\u1|u2|data_32out\(30) & !\u1|u2|data_32out[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|data_32out\(30),
	datad => VCC,
	cin => \u1|u2|data_32out[29]~91\,
	combout => \u1|u2|data_32out[30]~92_combout\,
	cout => \u1|u2|data_32out[30]~93\);

-- Location: FF_X21_Y19_N29
\u1|u2|data_32out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(30));

-- Location: LCCOMB_X17_Y19_N28
\u6|p_control_temp[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[8]~21_combout\ = (\u6|p_control_temp\(8) & (\u6|p_control_temp[7]~20\ $ (GND))) # (!\u6|p_control_temp\(8) & (!\u6|p_control_temp[7]~20\ & VCC))
-- \u6|p_control_temp[8]~22\ = CARRY((\u6|p_control_temp\(8) & !\u6|p_control_temp[7]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|p_control_temp\(8),
	datad => VCC,
	cin => \u6|p_control_temp[7]~20\,
	combout => \u6|p_control_temp[8]~21_combout\,
	cout => \u6|p_control_temp[8]~22\);

-- Location: FF_X17_Y19_N29
\u6|p_control_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[8]~21_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(8));

-- Location: LCCOMB_X17_Y19_N12
\u1|u4|data_10out[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[8]~20_combout\ = ((\u1|u2|data_32out\(30) $ (\u6|p_control_temp\(8) $ (!\u1|u4|data_10out[7]~19\)))) # (GND)
-- \u1|u4|data_10out[8]~21\ = CARRY((\u1|u2|data_32out\(30) & ((\u6|p_control_temp\(8)) # (!\u1|u4|data_10out[7]~19\))) # (!\u1|u2|data_32out\(30) & (\u6|p_control_temp\(8) & !\u1|u4|data_10out[7]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(30),
	datab => \u6|p_control_temp\(8),
	datad => VCC,
	cin => \u1|u4|data_10out[7]~19\,
	combout => \u1|u4|data_10out[8]~20_combout\,
	cout => \u1|u4|data_10out[8]~21\);

-- Location: FF_X17_Y19_N13
\u1|u4|data_10out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(8));

-- Location: LCCOMB_X21_Y19_N30
\u1|u2|data_32out[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u2|data_32out[31]~94_combout\ = \u1|u2|data_32out\(31) $ (\u1|u2|data_32out[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(31),
	cin => \u1|u2|data_32out[30]~93\,
	combout => \u1|u2|data_32out[31]~94_combout\);

-- Location: FF_X21_Y19_N31
\u1|u2|data_32out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u2|data_32out[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u2|data_32out\(31));

-- Location: LCCOMB_X17_Y19_N30
\u6|p_control_temp[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|p_control_temp[9]~23_combout\ = \u6|p_control_temp[8]~22\ $ (\u6|p_control_temp\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u6|p_control_temp\(9),
	cin => \u6|p_control_temp[8]~22\,
	combout => \u6|p_control_temp[9]~23_combout\);

-- Location: FF_X17_Y19_N31
\u6|p_control_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u5|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|p_control_temp[9]~23_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \u6|p_control_temp[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|p_control_temp\(9));

-- Location: LCCOMB_X17_Y19_N14
\u1|u4|data_10out[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u4|data_10out[9]~22_combout\ = \u1|u2|data_32out\(31) $ (\u1|u4|data_10out[8]~21\ $ (\u6|p_control_temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|data_32out\(31),
	datad => \u6|p_control_temp\(9),
	cin => \u1|u4|data_10out[8]~21\,
	combout => \u1|u4|data_10out[9]~22_combout\);

-- Location: FF_X17_Y19_N15
\u1|u4|data_10out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u4|data_10out[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u4|data_10out\(9));

-- Location: M9K_X13_Y19_N0
\u1|u7|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0381C0A0D0683C1E04020100C0E060301807038140A0D0783C1E04020180C0E060301C07038140A0F0783C1A04020180C0C060301C07038140A0F0783C1A04020180C0C060301C07038140A0D0783C1E04020180C0E0603018070381C0A0D0683C1E0602010080E0703818050281C0E0F068341A0603018080C060301C070381",
	mem_init3 => X"40A0D0783C1E0602010080E070381C05028140E0F0783C1A04020100C0E070381805028140E0F0783C1A04020100C0E070381C05028140A0F0783C1E0602010080C060381C070381C0E0D068341A04020180C0E070381C05028140A0D068341E06030180C0E070381805028140A0D068341A06030180C0E070381C070381C0E0F068341A0402010080C060301805028140A0D068341A0402010080C060301805028140A05068341A0C02010080406030180D028140A05068341A0C020100806070381C0F0381C0E070783C1E0E02010080406030180D0281C0E070783C1E0E03010080406030180D0381C0E070783C1A0C020100804070381C0F0381C0A05068",
	mem_init2 => X"341A0E030180C0606030180D0381C0E07078341A0C020180C0607030180D0281C0E07078341A0C020180C0607030180D0381C0E07068341A0E030180C04060301C0F038140A050683C1E0E02010080607038180D0281C0E07068341A0E030180804060381C0F028140A070783C1A0C030180C04060301C0F038140A050783C1A0C020180C06060301C0F038140A050783C1A0C020180C06060301C0F038140A070783C1A0C030180C04060301C0F028140A07078341A0C030180804060381C0F04824160301804020A0502810000100804090482C160300804020A0502010000100800090482C160100804060A0502010020100800090482C160100804060A05",
	mem_init1 => X"02010020100800090482C160300804020A05020100001008040904824160301804020805028140000000040B0582412010180C06080402014020100800090482C160300804020805028140000000000B0582C120100804060A05028100000000040B0582C120100804060A05028100000000000B0582C16010080402080502814020100000090482412030180C060A05020100000000000B0582C16030180C020804020100000000040B0582C16030180C06080402010000000000090482412010180C060A05028140201008040B0582C16030180C060A0502814020100804030582C160B0180C060205028140A0100804030582C160B0180C06020502814080",
	mem_init0 => X"0000000104824120900804020005028140A01008040305824120900804020004028140A01008040304824120900804060205028140A00000000104824160B0180C06000402010080100804030482412090080C06020502010080000804030582412090080C06020502010080000804030482412090180C060004020100A0100800010482C160B0180402000502814080000004030582412090180C060004020140A0100000010582C160900804060204020100A0100800010482C160B0080406020502010080100800010482C160B0080406020502010080100800010482C160900804060204020100A0100800010582C16090080C060204020140A010000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "saw_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:u1|saw:u7|altsyncram:altsyncram_component|altsyncram_h681:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|u7|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X11_Y21_N18
\u6|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|Add0~1_combout\ = \u6|set_waveform_temp\(1) $ (((!\u2|key_out~q\ & \u6|set_waveform_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|key_out~q\,
	datac => \u6|set_waveform_temp\(1),
	datad => \u6|set_waveform_temp\(0),
	combout => \u6|Add0~1_combout\);

-- Location: FF_X11_Y21_N19
\u6|set_waveform_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|ALT_INV_key_out~clkctrl_outclk\,
	d => \u6|Add0~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|set_waveform_temp\(1));

-- Location: LCCOMB_X12_Y19_N18
\u1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux6~0_combout\ = (\u6|set_waveform_temp\(0) & (((\u6|set_waveform_temp\(1))))) # (!\u6|set_waveform_temp\(0) & ((\u6|set_waveform_temp\(1) & (\u1|u7|altsyncram_component|auto_generated|q_a\(3))) # (!\u6|set_waveform_temp\(1) & 
-- ((\u1|u5|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|altsyncram_component|auto_generated|q_a\(3),
	datab => \u1|u5|altsyncram_component|auto_generated|q_a\(3),
	datac => \u6|set_waveform_temp\(0),
	datad => \u6|set_waveform_temp\(1),
	combout => \u1|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y19_N14
\u1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux6~1_combout\ = (\u6|set_waveform_temp\(0) & ((\u1|Mux6~0_combout\ & ((\u1|u8|altsyncram_component|auto_generated|q_a\(3)))) # (!\u1|Mux6~0_combout\ & (\u1|u6|altsyncram_component|auto_generated|q_a\(3))))) # (!\u6|set_waveform_temp\(0) & 
-- (((\u1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u1|u6|altsyncram_component|auto_generated|q_a\(3),
	datac => \u1|u8|altsyncram_component|auto_generated|q_a\(3),
	datad => \u1|Mux6~0_combout\,
	combout => \u1|Mux6~1_combout\);

-- Location: FF_X12_Y19_N15
\u1|dds_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(3));

-- Location: FF_X15_Y25_N19
\u7|DIN_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|dds_data_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(3));

-- Location: M9K_X13_Y21_N0
\u1|u7|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"3DBCDFE76393A9CD6FB3F8FF776BF7EBE46932BB5D2603E3D1E179B8FB7CB60B4793F87B39BFDEE6E35389DD67B1FEFEF7EBD7CBDC6530BA5CA7C3C3C1F975B8FA7CB6CB4793F87B39BFDEE7235399C56BB3FFFF776BF7EBE46D34B85DA64303F1E971BEFD7E36CB2783D86731BFDF6723F3E9E56FB5F9FDF6AB378BF47538BF",
	mem_init3 => X"5F270363A1C961B6F97C37CBC7D3E07F3DBCDDE6A33389DD6BB3F8FFF7ABB7CBFC793ABC5DA6832381D969B2F87FB78BC7D3E07F3DBDDE66E373A9CD63B7FBFD766B17FBFC793ABC5E27C3C3E1E971B8FB7D368B2783C06F37BADCE6631389FD7FBDFEFEF76B97CBFC7D3CBE5EA743A3C1E16DB6FB7D368B4793C86731B8DC662373B9DD6FB5FAFD76AB379BCC6532B95CA6030381C161B0F87C360B0783C0633198DC6E231189C4E3B1D8FC7E2B359BCDE532995CAE8341A1D0EDB6DB7DBE0B0583C1E73399DD6EA351B9DCEFB9DCFEFF6BB5EBF5FD3E9C5E2F43A1E1F0FDBED87C3E4B25A3D9EF3198DCEEA351B9E4F3BBDEFF7FEB95CBEDF93E9F5C2E4341",
	mem_init2 => X"B1D8E1B2DA7DBECB85D3F1FF399DDF6FA3F189CCEBB7D8FCFEAB75CBEDF93E9C5EAF83E181C8E9B6D87CBE8B65C3F1FF399DDF6FE31199DCE3B3DAFDFF2BD5FBE5F53C985CAE836191D0EDB8DE7FBF0BC5F3C1E73798DCEEE391D9FCF3BBDFFC7E6B758BD5ED389E5FAF43C1F1C8E9B0D97D3F0BA5F3E1FB3F99DD6EE331A9E4F7BFDCFF7FEB35ABC5E5369C5F2FC3A1E1C0E5B6D87D3ECBA5F3E1FB3F99DD6E2331B9E4FBB9DDFFFE2B55BBCDE9389E5FAF43C181C8EDB2DA7E3F4BE5C3F1FFC3C3E078AC745A34934D87C0E8A410181D95CCC462B9CC0422188546844329C4A0600187C7C0E1792CB47A249B4F81C1682430382599CEC563380C2432008946",
	mem_init1 => X"85432904A0600187C7C0E178ECB46A3C974D80C0E8A410181D91CAC762398CE402108D408241A904C070219BCFC0E0F8EC141A1C934B86C26964D0780D89C6C060B8CC8452309D488643A80420201983C3C3E2796CD47A24974D87C0686450380585C4C362394CC47220954C8740284420201983C3C2E1F92C945A349F4984C2E9A4F0080585C4C361B80C2412108D468442A944C0703993C9C5E379ACF47A04834381C168A470380581C2C161388C44321891488442A944A060319BCFC7E3F9EC944A24934B85C2E964D0683599CCC66339CCE472389D4E8743A9C4E070381FCFE7E3F1ECF67A3D1F4FA7C3E1E4D2683419CCE663314CA652291148A44221C4",
	mem_init0 => X"E270381BCDE6E2F16CB64A251347A3C160A452180C01C0E361B08C4612090140A743A184C2502013CFE7E3716CB64A1D0F45A1C0E02472381405C0E063B18CA642211D4CA542210462200803C7E2E0F06C167A351749A7C3616492381405C0E361304C0672311548A743214482300803C7E2E0F02CF66A251F4DA5C260E432081C09C2E763314C8662291146A14020C42200381BC9E7E3712C762A050F45A0C3E1A492782C11C6E160308C260231154EA642A0C442001807C1E6E2F12CD65A1D0B41A3C0E024D2583C19C8E360B00C4612391948A742A10442001807C1E6E2F1ECD64A1D0747A2C061E4B2483415C6E160308C267231114CA541A08402300800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "saw_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:u1|saw:u7|altsyncram:altsyncram_component|altsyncram_h681:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|u7|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y18_N0
\u1|u7|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"3F9FCFE7F3F9FCFE7F3F9FCF67B3D9ECF6FB7DBEDF6FB7BBDDEEF77BBDDEEF77BBDDE772B95CAE572B95CAE572B95FAFD7EBF5FAFDFEFF7FBFDFAFD7EBF5FAFD7EBF5FAFD7EBEC753A9D4EA753A9D4EA753A9C4E271389C4E2F178BC5E2F178BF5FAFD7EBF5FAFD7EBF5FB7CBE5E2F178BC5E2F178BC5E2F178BC5E2E9F4FA7D",
	mem_init3 => X"3E9F4FA7D3E9F4FA7D3E9F0F87C3E073399CCE673399CCE673399CCFE7F3F9FCFEFF7FBFDFEFF7FBFDFEFF7FBFDF6FB7DBEDF77ABD5EAF57ABD5EAF57ABD5EAF57ABD5DAEDF6FB7DBEDF6FB7DBEDF6FB7DBEDF6FB7DBEC753A9D4EA753A9D4E271389C4E271389C4E2F178BC5E2F178BC5E2F178BC5E2F178BC5E370B85C2E170B85C2E170B85C2E170B85C2E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E073399CCE673399CCE673399CCE673399CCE67379BCDE6F379BCDE6F379BCDE6F379BCDE6F2B95CAE572B95CAE572B95CAE572B95CAE572F97CBE5F2F97CBE5F2F97DBEDF6FB7DBEDF53A9D4EA753A9D4EA753A9D4EA753A9D4EA757ABD5F2F97CB",
	mem_init2 => X"E5F2F97CBE5F2F97CBE5F2F8BC5E2F178BC5F2F97CBE5F2F97CBE5F2F97CFE7F3F9FCFE7C3E1F0F87C3E1F0F87C3E1F3399CCE6733B9DCEE773B9DCEE773B9DCEE777BBEDF6FB7DBEDF6FB7DBEDF6FB7DBEDFEFEBF5FAFD7EBF5FAFD7EBF5FAE572B95CAE572F97CBE5F2F97CBEDF6FB7DBEDF6FB7DBEDF53A9E4F2793C9E4F2793C9E4F2793E9F4FA7D7EBF5FAFD7EBF5E2F178BC5E2F178BC5E2F0B85D2E974BA5D2E974BA5D2E978BC5E2F178FC7E3F1F8FC7F3F9FCFE7F3F9FCFE7F3F9FFC1E0F0783C1E0F0783C1E0F0F87C3E1F0F0783C1E0F0785C2E170B85C2E170B85C2E1E8E472391C8E472391C8E472090482412090402010080406030180C0603",
	mem_init1 => X"0180C06030181589C4E271389C4E271389C4E371B8DC6E371B0D86C361B0D86C06030180C06030180C06028040211088442211088442211088442211100804020100804020100804020100C06030198FC7E3F1F8FC7E3F1F8FC7E3F0783C1E0F070381C0E070381C0E070381C0E0F0783C1E0E86432190C86432190C86432190C8643229140A05028140A05028140A05028140A050281589C4E271389C4E271B8DC6E371B8DC6E371B0D86C361B0D86C361B0D86C361B0D86C361A8C46231188C46231188C46231188C46231180C06030180C06030180C06030180C06030180FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8F87C3E1F0F87C3E1F0F87C3E1F0F8",
	mem_init0 => X"7C3E1F0E472391C8E472391C8E472391C8E472391C8E070381C0E070381C0E07028140A050281409C4E271389C4E271389C4E271389C4E27138984C260B0582C160B0582C160B0582C160B0442211088442201008040201008040201008000000000000030180C06030180C06030180FC7E3F1F8FC5E2F178BC5E2F178BC5E2F178B85C1E0F0783C1E0F0783C1E0F0783C1E0702412090482412090482412091C8E472391C8E070381C0E07038140A05028140A050281409C4E170B85C2E170B85C2E170B85C0E07038180C06030180C061B0D86C361B0D86C361B0C462211088442211088442211084422110884020100804020000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "saw_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:u1|saw:u7|altsyncram:altsyncram_component|altsyncram_h681:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|u7|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y21_N12
\u1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux5~0_combout\ = (\u6|set_waveform_temp\(1) & (((\u6|set_waveform_temp\(0))))) # (!\u6|set_waveform_temp\(1) & ((\u6|set_waveform_temp\(0) & (\u1|u6|altsyncram_component|auto_generated|q_a\(4))) # (!\u6|set_waveform_temp\(0) & 
-- ((\u1|u5|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|altsyncram_component|auto_generated|q_a\(4),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u5|altsyncram_component|auto_generated|q_a\(4),
	datad => \u6|set_waveform_temp\(0),
	combout => \u1|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y21_N28
\u1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux5~1_combout\ = (\u6|set_waveform_temp\(1) & ((\u1|Mux5~0_combout\ & ((\u1|u8|altsyncram_component|auto_generated|q_a\(4)))) # (!\u1|Mux5~0_combout\ & (\u1|u7|altsyncram_component|auto_generated|q_a\(4))))) # (!\u6|set_waveform_temp\(1) & 
-- (((\u1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(1),
	datab => \u1|u7|altsyncram_component|auto_generated|q_a\(4),
	datac => \u1|u8|altsyncram_component|auto_generated|q_a\(4),
	datad => \u1|Mux5~0_combout\,
	combout => \u1|Mux5~1_combout\);

-- Location: FF_X12_Y21_N29
\u1|dds_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(4));

-- Location: FF_X15_Y25_N27
\u7|DIN_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|dds_data_reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(4));

-- Location: LCCOMB_X12_Y19_N28
\u1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~0_combout\ = (\u6|set_waveform_temp\(1) & (((\u6|set_waveform_temp\(0))))) # (!\u6|set_waveform_temp\(1) & ((\u6|set_waveform_temp\(0) & ((\u1|u6|altsyncram_component|auto_generated|q_a\(6)))) # (!\u6|set_waveform_temp\(0) & 
-- (\u1|u5|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(1),
	datab => \u1|u5|altsyncram_component|auto_generated|q_a\(6),
	datac => \u1|u6|altsyncram_component|auto_generated|q_a\(6),
	datad => \u6|set_waveform_temp\(0),
	combout => \u1|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y19_N12
\u1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~1_combout\ = (\u6|set_waveform_temp\(1) & ((\u1|Mux3~0_combout\ & (\u1|u8|altsyncram_component|auto_generated|q_a\(6))) # (!\u1|Mux3~0_combout\ & ((\u1|u7|altsyncram_component|auto_generated|q_a\(6)))))) # (!\u6|set_waveform_temp\(1) & 
-- (((\u1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u8|altsyncram_component|auto_generated|q_a\(6),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u7|altsyncram_component|auto_generated|q_a\(6),
	datad => \u1|Mux3~0_combout\,
	combout => \u1|Mux3~1_combout\);

-- Location: FF_X12_Y19_N13
\u1|dds_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(6));

-- Location: FF_X15_Y25_N11
\u7|DIN_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|dds_data_reg\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(6));

-- Location: LCCOMB_X12_Y21_N10
\u1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux4~0_combout\ = (\u6|set_waveform_temp\(0) & (\u6|set_waveform_temp\(1))) # (!\u6|set_waveform_temp\(0) & ((\u6|set_waveform_temp\(1) & ((\u1|u7|altsyncram_component|auto_generated|q_a\(5)))) # (!\u6|set_waveform_temp\(1) & 
-- (\u1|u5|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u5|altsyncram_component|auto_generated|q_a\(5),
	datad => \u1|u7|altsyncram_component|auto_generated|q_a\(5),
	combout => \u1|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y21_N26
\u1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux4~1_combout\ = (\u6|set_waveform_temp\(0) & ((\u1|Mux4~0_combout\ & ((\u1|u8|altsyncram_component|auto_generated|q_a\(5)))) # (!\u1|Mux4~0_combout\ & (\u1|u6|altsyncram_component|auto_generated|q_a\(5))))) # (!\u6|set_waveform_temp\(0) & 
-- (((\u1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u1|u6|altsyncram_component|auto_generated|q_a\(5),
	datac => \u1|u8|altsyncram_component|auto_generated|q_a\(5),
	datad => \u1|Mux4~0_combout\,
	combout => \u1|Mux4~1_combout\);

-- Location: FF_X12_Y21_N27
\u1|dds_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(5));

-- Location: LCCOMB_X15_Y25_N28
\u7|DIN_REG[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN_REG[5]~feeder_combout\ = \u1|dds_data_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|dds_data_reg\(5),
	combout => \u7|DIN_REG[5]~feeder_combout\);

-- Location: FF_X15_Y25_N29
\u7|DIN_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|DIN_REG[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(5));

-- Location: LCCOMB_X15_Y25_N10
\u7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux0~0_combout\ = (\u7|COUNT2\(0) & ((\u7|COUNT2\(1)) # ((\u7|DIN_REG\(5))))) # (!\u7|COUNT2\(0) & (!\u7|COUNT2\(1) & (\u7|DIN_REG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT2\(0),
	datab => \u7|COUNT2\(1),
	datac => \u7|DIN_REG\(6),
	datad => \u7|DIN_REG\(5),
	combout => \u7|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y25_N26
\u7|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Mux0~1_combout\ = (\u7|COUNT2\(1) & ((\u7|Mux0~0_combout\ & (\u7|DIN_REG\(3))) # (!\u7|Mux0~0_combout\ & ((\u7|DIN_REG\(4)))))) # (!\u7|COUNT2\(1) & (((\u7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|DIN_REG\(3),
	datab => \u7|COUNT2\(1),
	datac => \u7|DIN_REG\(4),
	datad => \u7|Mux0~0_combout\,
	combout => \u7|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y25_N20
\u7|DIN~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN~4_combout\ = (!\u7|COUNT2\(3) & (\u7|COUNT2\(2) & (\u7|Mux0~1_combout\ & !\u7|CS_REG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT2\(3),
	datab => \u7|COUNT2\(2),
	datac => \u7|Mux0~1_combout\,
	datad => \u7|CS_REG~q\,
	combout => \u7|DIN~4_combout\);

-- Location: LCCOMB_X12_Y21_N30
\u1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux7~0_combout\ = (\u6|set_waveform_temp\(0) & (((\u1|u6|altsyncram_component|auto_generated|q_a\(2)) # (\u6|set_waveform_temp\(1))))) # (!\u6|set_waveform_temp\(0) & (\u1|u5|altsyncram_component|auto_generated|q_a\(2) & 
-- ((!\u6|set_waveform_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u1|u5|altsyncram_component|auto_generated|q_a\(2),
	datac => \u1|u6|altsyncram_component|auto_generated|q_a\(2),
	datad => \u6|set_waveform_temp\(1),
	combout => \u1|Mux7~0_combout\);

-- Location: LCCOMB_X12_Y21_N18
\u1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux7~1_combout\ = (\u6|set_waveform_temp\(1) & ((\u1|Mux7~0_combout\ & (\u1|u8|altsyncram_component|auto_generated|q_a\(2))) # (!\u1|Mux7~0_combout\ & ((\u1|u7|altsyncram_component|auto_generated|q_a\(2)))))) # (!\u6|set_waveform_temp\(1) & 
-- (((\u1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u8|altsyncram_component|auto_generated|q_a\(2),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|Mux7~0_combout\,
	datad => \u1|u7|altsyncram_component|auto_generated|q_a\(2),
	combout => \u1|Mux7~1_combout\);

-- Location: FF_X12_Y21_N19
\u1|dds_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(2));

-- Location: FF_X15_Y25_N9
\u7|DIN_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|dds_data_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(2));

-- Location: M9K_X13_Y20_N0
\u1|u7|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"5D8F9743F5D8F9743B5F8E97C3B5F8E9743F5D8F9743F5D8F9743B5F8E97C3B5F8E97C3B5F8E9743F5D8F9743F5D8F9743F5D8F9743F5D8F9743F5D8F9743F5D8F9743F5D8E97C3B5F8E97C3B5F8E9743F5D8F9743B5F8E97C3B5D8F9743F5F8C96C37598D96C335B8D964375B8C96437598C96C37598C96C37598C96C375B8C",
	mem_init3 => X"964375B8D96433598D96C375B8C96533D9CDB6D37DBCDB6D37D9CCB6533D9CCB6533D9CCB6533D9CCB6D37DBCDB6D37D9CCB6533D9CDB6D37D9CCB6537DBCCB6533DBCDB6533DBCDB6537DBCCB6537D9CCB6D33DBCDB6537D9CDB6D33DBCCB6D33DBCCB6D33DBCCB6D33DBCCB6D37D9CDB6537DBCCB6D33D9CDB6533DBCDB6533DBCCB6533DBCDB6533DBCDB6D33D9CCB6537DBCDB6D37D9CCB6533D9CCB643138BC0E0F138BC0E0F53ABD0E8F538BC0E0F13ABD0E8F138BD0E8F138BC0E8F138BD0E8F138BD0E0F13ABC0E8F538BD0E0F53ABC0E8F13ABC0E8F13ABC0E8F13ABC0E8F13ABD0E0F538BD0E8F13ABC0E0F538BC0E8F538BD0E8F138BD0E8F138B",
	mem_init2 => X"C0E8F538BC0E0F53ABD0E0F138BC0E0F53ABD0E8F53ABC0E0F138BC0E0F138BC0E0F138BC0E0F53ABD0E8F53ABD0E0F1B8FC2E9F5BAFD2E1F1B8FD2E9F5B8FC2E9F5BAFC2E1F5BAFC2E1F5BAFC2E1F5B8FC2E9F5B8FD2E9F1BAFD2E1F5BAFC2F9FDBCFF2F1F9BEFE2F9F9BCFF2F1FDBCFE2F9F9BEFE2F9F9BEFE2F1FDBCFF2F1FDBCFF2F1FDBCFF2F1FDBCFF2F1FDBCFF2F1FDBCFF2F1FDBCFE2F9F9BEFE2F9F9BEFE2F9F9BCFF2F1FDBCFF2F1FDBCFE2F9F9BEFE2F9F9BCFF2F1FDBCFF2F1FFA3F0A8DC3A3F0A8DC7A1F1A85C7A1F1A8DC3A3F0A8DC3A3F0A8DC7A1F1A85C7A1F1A85C7A1F1A8DC3A3F0A8DC3A3F0A8DC3A3F0A8DC3A3F0A8DC3A3F0A8DC3A3",
	mem_init1 => X"F0A8DC3A3F1A85C7A1F1A85C7A1F1A8DC3A3F0A8DC7A1F1A85C7A3F0A8DC3A1F3A95CBA7F2A95CFA5F2A9DCBA5F3A9DCBA7F3A95CBA7F3A95CBA7F3A95CBA5F3A9DCBA5F2A9DCFA7F2A95CBA5F3A9CCF27B2894CB25B2894CB27B389CCF27B389CCF27B389CCF27B3894CB25B2894CB27B389CCF27B2894CB27B389CCB25B389CCF25B289CCF25B289CCB25B389CCB27B3894CF25B289CCB27B2894CF25B3894CF25B3894CF25B3894CF25B3894CB27B289CCB25B3894CF27B289CCF25B289CCF25B389CCF25B289CCF25B2894CF27B389CCB25B2894CB27B389CCF27B389C0DC6C33190DC6C331909C4C231109C6C33190DC4C23110DC6C23110DC6C33110DC",
	mem_init0 => X"6C23110DC6C23190DC4C331109C6C231909C4C33110DC4C33110DC4C33110DC4C33110DC4C231909C6C23110DC4C331909C6C331109C6C23110DC6C23110DC6C331109C6C331909C4C23190DC6C331909C4C231109C4C33190DC6C33190DC6C33190DC6C331909C4C231109C4C23190D46831100944821180D46821100946831100944831180944831180944831180946831100946821100D448211809448310001428010805408110005428010801428110005408110005408110801428010801428010801428010801428010801428010801428010801428110005408110005408110005428010801428010801428110005408110005428010801428010800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "saw_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:u1|saw:u7|altsyncram:altsyncram_component|altsyncram_h681:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|u7|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y21_N20
\u1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux8~0_combout\ = (\u6|set_waveform_temp\(0) & (\u6|set_waveform_temp\(1))) # (!\u6|set_waveform_temp\(0) & ((\u6|set_waveform_temp\(1) & ((\u1|u7|altsyncram_component|auto_generated|q_a\(1)))) # (!\u6|set_waveform_temp\(1) & 
-- (\u1|u5|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u5|altsyncram_component|auto_generated|q_a\(1),
	datad => \u1|u7|altsyncram_component|auto_generated|q_a\(1),
	combout => \u1|Mux8~0_combout\);

-- Location: LCCOMB_X12_Y21_N24
\u1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux8~1_combout\ = (\u6|set_waveform_temp\(0) & ((\u1|Mux8~0_combout\ & (\u1|u8|altsyncram_component|auto_generated|q_a\(1))) # (!\u1|Mux8~0_combout\ & ((\u1|u6|altsyncram_component|auto_generated|q_a\(1)))))) # (!\u6|set_waveform_temp\(0) & 
-- (((\u1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u1|u8|altsyncram_component|auto_generated|q_a\(1),
	datac => \u1|u6|altsyncram_component|auto_generated|q_a\(1),
	datad => \u1|Mux8~0_combout\,
	combout => \u1|Mux8~1_combout\);

-- Location: FF_X12_Y21_N25
\u1|dds_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(1));

-- Location: LCCOMB_X14_Y25_N24
\u7|DIN_REG[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN_REG[1]~feeder_combout\ = \u1|dds_data_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|dds_data_reg\(1),
	combout => \u7|DIN_REG[1]~feeder_combout\);

-- Location: FF_X14_Y25_N25
\u7|DIN_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|DIN_REG[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(1));

-- Location: LCCOMB_X15_Y25_N8
\u7|DIN~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN~3_combout\ = (\u7|COUNT2\(3) & ((\u7|COUNT2\(0) & ((\u7|DIN_REG\(1)))) # (!\u7|COUNT2\(0) & (\u7|DIN_REG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT2\(0),
	datab => \u7|COUNT2\(3),
	datac => \u7|DIN_REG\(2),
	datad => \u7|DIN_REG\(1),
	combout => \u7|DIN~3_combout\);

-- Location: LCCOMB_X12_Y21_N2
\u1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~0_combout\ = (\u6|set_waveform_temp\(0) & ((\u6|set_waveform_temp\(1)) # ((\u1|u6|altsyncram_component|auto_generated|q_a\(8))))) # (!\u6|set_waveform_temp\(0) & (!\u6|set_waveform_temp\(1) & (\u1|u5|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u5|altsyncram_component|auto_generated|q_a\(8),
	datad => \u1|u6|altsyncram_component|auto_generated|q_a\(8),
	combout => \u1|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y21_N22
\u1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~1_combout\ = (\u6|set_waveform_temp\(1) & ((\u1|Mux1~0_combout\ & ((\u1|u8|altsyncram_component|auto_generated|q_a\(8)))) # (!\u1|Mux1~0_combout\ & (\u1|u7|altsyncram_component|auto_generated|q_a\(8))))) # (!\u6|set_waveform_temp\(1) & 
-- (((\u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(1),
	datab => \u1|u7|altsyncram_component|auto_generated|q_a\(8),
	datac => \u1|u8|altsyncram_component|auto_generated|q_a\(8),
	datad => \u1|Mux1~0_combout\,
	combout => \u1|Mux1~1_combout\);

-- Location: FF_X12_Y21_N23
\u1|dds_data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(8));

-- Location: FF_X15_Y25_N7
\u7|DIN_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|dds_data_reg\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(8));

-- Location: M9K_X13_Y22_N0
\u1|u7|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"371BCDC6F371BCDC6F371BCDC6F371BCDC6F371BCDC6F371BCDC6F371BCDC6F371BCDC6F371BCDC6F371BCDC6F3719CCC673319CCC673319CCC673319CCC673319CCC673319CCCE77339DCCE77339DCCE77339DCCE77339DCCE77339DCCE7733BDDCEF773BDDCEF773BDDCEF773BDDCEF773BDDCEF773BDDCEF773BDDCEF773B",
	mem_init3 => X"DDCEF773BDDCEF773BDDCEF773BDDC6D361B4D86D361B4D86D361B4C86532194C86532194C86532194C86532194C86532194C86532194C86532194C86532194C86532194C86532194C86532194C86532194C86532194C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C8E572395C967B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67B359ECD67F379FCDE7F379FCDE7F379FCDE7F379FCDE7F379FCDE7F37",
	mem_init2 => X"9FCDE7F379FCDE7F379FCDE7F379FCDE7F379FCDE7F379FCDE7F379FCDE7F379FCDE7F37BFDDEFF77BFDDEFF77BFDDEDB65B6D96DB65B6D96DB65B6D96DB65B6D96DB65B6D96DB65B6D96DB65B6D96DB65B6D96DB65B6D96DB65B6D96DB65B6C965B2596C965B2596C965B2596C965B2596C965B2596C965F2797C9E5F2797C9E5F2797C9E5F2797C9E5F2797C9E5F2797D9EDF67B7D9EDF67B7D9EDF67B7D9EDF67B7D9EDF67B7D9EDF67B7D9EDF67B7D9EDF67B7D9EDF67B7D9EDF67B7D9EBC964F2593C964F2593C964F2593C964F2593C964F2593C964F2593C964F2593C964F2593C964F2593C964F2593C966F359BCD66F359BCD66F359BCD66F359BCD",
	mem_init1 => X"66F359BCD66F351B8D46E351B8D46E351B8D46E351B8D46E351B8D46E351B8D44E25138944E25138944E25138944E25138944E25138944E25138944E25138944E25138944E25138944E25138944E2591C86472191C86472191C86473199CC6673199CC6673199CC6673199CC6673199CC6673199CC6673199CC6673199CC6673199CC6673199CC6673199CC6673199CC6673199CC66731198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C46631198C466311B4D26D349B4D26D349B4D26D349B4D26D349B4D26D349B4D26D349B4D26D349B4",
	mem_init0 => X"D26D349B4D26D349B4D26D349B4D26D349B4D26D349B4D26D349B4D26D349B4D26D349B4D26D349B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D06C341B0D04C24130904C24130904C24114824520914824520914824520914824520914824520914824520914824520914824520914824520914824520914824530994C26530994C26530994C26530994C26530994C26530990C06430190C06430190C06430190C06430190C06430190C0642011080442011080442011080442011080442011080442011080442011080442011080442011080442011080442010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "saw_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DDS:u1|saw:u7|altsyncram:altsyncram_component|altsyncram_h681:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|u7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y21_N16
\u1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux9~0_combout\ = (\u6|set_waveform_temp\(0) & ((\u6|set_waveform_temp\(1)) # ((\u1|u6|altsyncram_component|auto_generated|q_a\(0))))) # (!\u6|set_waveform_temp\(0) & (!\u6|set_waveform_temp\(1) & 
-- ((\u1|u5|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u6|altsyncram_component|auto_generated|q_a\(0),
	datad => \u1|u5|altsyncram_component|auto_generated|q_a\(0),
	combout => \u1|Mux9~0_combout\);

-- Location: LCCOMB_X12_Y21_N8
\u1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux9~1_combout\ = (\u6|set_waveform_temp\(1) & ((\u1|Mux9~0_combout\ & ((\u1|u8|altsyncram_component|auto_generated|q_a\(0)))) # (!\u1|Mux9~0_combout\ & (\u1|u7|altsyncram_component|auto_generated|q_a\(0))))) # (!\u6|set_waveform_temp\(1) & 
-- (((\u1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|altsyncram_component|auto_generated|q_a\(0),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u8|altsyncram_component|auto_generated|q_a\(0),
	datad => \u1|Mux9~0_combout\,
	combout => \u1|Mux9~1_combout\);

-- Location: FF_X12_Y21_N9
\u1|dds_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(0));

-- Location: LCCOMB_X15_Y25_N0
\u7|DIN_REG[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN_REG[0]~feeder_combout\ = \u1|dds_data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|dds_data_reg\(0),
	combout => \u7|DIN_REG[0]~feeder_combout\);

-- Location: FF_X15_Y25_N1
\u7|DIN_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|DIN_REG[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(0));

-- Location: LCCOMB_X15_Y25_N6
\u7|DIN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN~1_combout\ = (\u7|COUNT2\(1) & ((\u7|COUNT2\(3) & ((\u7|DIN_REG\(0)))) # (!\u7|COUNT2\(3) & (\u7|DIN_REG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT2\(3),
	datab => \u7|COUNT2\(1),
	datac => \u7|DIN_REG\(8),
	datad => \u7|DIN_REG\(0),
	combout => \u7|DIN~1_combout\);

-- Location: LCCOMB_X12_Y21_N6
\u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (\u6|set_waveform_temp\(0) & ((\u6|set_waveform_temp\(1)) # ((\u1|u6|altsyncram_component|auto_generated|q_a\(9))))) # (!\u6|set_waveform_temp\(0) & (!\u6|set_waveform_temp\(1) & (\u1|u5|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u5|altsyncram_component|auto_generated|q_a\(9),
	datad => \u1|u6|altsyncram_component|auto_generated|q_a\(9),
	combout => \u1|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y21_N14
\u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~1_combout\ = (\u1|Mux0~0_combout\ & (((\u1|u8|altsyncram_component|auto_generated|q_a\(9))) # (!\u6|set_waveform_temp\(1)))) # (!\u1|Mux0~0_combout\ & (\u6|set_waveform_temp\(1) & ((\u1|u7|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux0~0_combout\,
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u8|altsyncram_component|auto_generated|q_a\(9),
	datad => \u1|u7|altsyncram_component|auto_generated|q_a\(9),
	combout => \u1|Mux0~1_combout\);

-- Location: FF_X12_Y21_N15
\u1|dds_data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(9));

-- Location: FF_X15_Y25_N15
\u7|DIN_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|dds_data_reg\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(9));

-- Location: LCCOMB_X12_Y21_N0
\u1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~0_combout\ = (\u6|set_waveform_temp\(0) & (\u6|set_waveform_temp\(1))) # (!\u6|set_waveform_temp\(0) & ((\u6|set_waveform_temp\(1) & ((\u1|u7|altsyncram_component|auto_generated|q_a\(7)))) # (!\u6|set_waveform_temp\(1) & 
-- (\u1|u5|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u6|set_waveform_temp\(1),
	datac => \u1|u5|altsyncram_component|auto_generated|q_a\(7),
	datad => \u1|u7|altsyncram_component|auto_generated|q_a\(7),
	combout => \u1|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y21_N4
\u1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~1_combout\ = (\u6|set_waveform_temp\(0) & ((\u1|Mux2~0_combout\ & ((\u1|u8|altsyncram_component|auto_generated|q_a\(7)))) # (!\u1|Mux2~0_combout\ & (\u1|u6|altsyncram_component|auto_generated|q_a\(7))))) # (!\u6|set_waveform_temp\(0) & 
-- (((\u1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|set_waveform_temp\(0),
	datab => \u1|u6|altsyncram_component|auto_generated|q_a\(7),
	datac => \u1|u8|altsyncram_component|auto_generated|q_a\(7),
	datad => \u1|Mux2~0_combout\,
	combout => \u1|Mux2~1_combout\);

-- Location: FF_X12_Y21_N5
\u1|dds_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dds_data_reg\(7));

-- Location: LCCOMB_X15_Y25_N24
\u7|DIN_REG[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN_REG[7]~feeder_combout\ = \u1|dds_data_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|dds_data_reg\(7),
	combout => \u7|DIN_REG[7]~feeder_combout\);

-- Location: FF_X15_Y25_N25
\u7|DIN_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|DIN_REG[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN_REG\(7));

-- Location: LCCOMB_X15_Y25_N14
\u7|DIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN~0_combout\ = (!\u7|COUNT2\(3) & ((\u7|COUNT2\(1) & ((\u7|DIN_REG\(7)))) # (!\u7|COUNT2\(1) & (\u7|DIN_REG\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT2\(3),
	datab => \u7|COUNT2\(1),
	datac => \u7|DIN_REG\(9),
	datad => \u7|DIN_REG\(7),
	combout => \u7|DIN~0_combout\);

-- Location: LCCOMB_X15_Y25_N18
\u7|DIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN~2_combout\ = (\u7|COUNT2\(0) & ((\u7|DIN~0_combout\))) # (!\u7|COUNT2\(0) & (\u7|DIN~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|DIN~1_combout\,
	datab => \u7|COUNT2\(0),
	datad => \u7|DIN~0_combout\,
	combout => \u7|DIN~2_combout\);

-- Location: LCCOMB_X15_Y25_N2
\u7|DIN~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN~5_combout\ = (!\u7|COUNT2\(2) & ((\u7|DIN~2_combout\) # ((!\u7|COUNT2\(1) & \u7|DIN~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|COUNT2\(2),
	datab => \u7|COUNT2\(1),
	datac => \u7|DIN~3_combout\,
	datad => \u7|DIN~2_combout\,
	combout => \u7|DIN~5_combout\);

-- Location: LCCOMB_X15_Y25_N16
\u7|DIN~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|DIN~6_combout\ = (\u7|DIN~4_combout\) # ((\u7|CS_REG~q\ & (\u7|DIN~q\)) # (!\u7|CS_REG~q\ & ((\u7|DIN~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|CS_REG~q\,
	datab => \u7|DIN~4_combout\,
	datac => \u7|DIN~q\,
	datad => \u7|DIN~5_combout\,
	combout => \u7|DIN~6_combout\);

-- Location: FF_X15_Y25_N17
\u7|DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u7|SCLK_REG~clkctrl_outclk\,
	d => \u7|DIN~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|DIN~q\);

-- Location: IOIBUF_X0_Y2_N15
\set_a_key_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_a_key_in,
	o => \set_a_key_in~input_o\);

ww_sclk <= \sclk~output_o\;

ww_din <= \din~output_o\;

ww_cs <= \cs~output_o\;
END structure;


