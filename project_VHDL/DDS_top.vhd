--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称： DDS_top.v
--** 创建日期：
--** 功能描述：DDS信号发生
--** 
--** 版权声明：本代码属个人知识产权,本代码仅供交流学习.
--**---------------------------修改文件的相关信息----------------
--** 修改人：
--** 修改日期：		
--** 修改内容：
--*******************************************************************************/
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
	use IEEE.std_logic_arith.all;
entity DDS_top is 
port (
    clk:in std_logic;                              --内部时钟
    reset:in std_logic;                              --复位信号 key5
    sclk:out std_logic;                                 --TLC5615 sclk时钟脚
    din:out std_logic;                                 --TLC5615 din数据脚
    cs:out std_logic;                                   --TLC5615 cs片选
    set_waveform_key_in:in std_logic;                  --波形设置按键 key1
    set_f_key_in:in std_logic;                         --频率设置按键 key2
    set_a_key_in:in std_logic;                        --幅值设置按键 key3
    set_p_key_in:in std_logic;                        --相位设置按键 key4
    sin_data:out std_logic_vector(9 downto 0)   --输出的波形数据，用于测试
     );
end DDS_top;
architecture behave of DDS_top is

signal set_waveform_line:std_logic_vector(1 downto 0);
signal f_control_line:std_logic_vector(20 downto 0);
signal a_control_line:std_logic_vector(3 downto 0);
signal p_control_line:std_logic_vector(9 downto 0);

signal dds_data_out_temp:std_logic_vector(9 downto 0);

signal set_waveform_key:std_logic;
signal set_f_key:std_logic;
signal set_a_key:std_logic;
signal set_p_key:std_logic;
--DDs模块
component DDS is
port(
    clk:in std_logic;--时钟输入
    dds_data_out:out std_logic_vector(9 downto 0);--DDS数据输出
    set_waveform:in std_logic_vector(1 downto 0);--设置输出的波形
    set_f:in std_logic_vector(20 downto 0);--设置频率
    set_a:in std_logic_vector(3 downto 0);--设置幅值
    set_p:in std_logic_vector(9 downto 0)--设置频率
    );
end component;
-- DAC驱动模块
component TLC5615 is
port(
    CLK:IN STD_LOGIC;
    SCLK:OUT STD_LOGIC;
    DIN:OUT STD_LOGIC;
    CS:OUT STD_LOGIC;
    DATA_IN:IN STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
end component;
-- 按键消抖模块
component key is
port(
    clk:in std_logic;
    key:in std_logic;
    key_out:out std_logic
    );
end component;
-- 按键编码模块
component key_coding is
port(
    reset:in std_logic;
    set_waveform_key:in std_logic;
    set_f_key:in std_logic;
    set_a_key:in std_logic;
    set_p_key:in std_logic;
     
    set_waveform:out std_logic_vector(1 downto 0);
    f_control:out std_logic_vector(20 downto 0);
    a_control:out std_logic_vector(3 downto 0);
    p_control:out std_logic_vector(9 downto 0)  
    );
end component;
begin
--/*********************元件例化************************************/
DDS_1:DDS port map(
            clk=>clk,
            dds_data_out=>dds_data_out_temp,
            set_waveform=>set_waveform_line,
            set_f=>f_control_line,
            set_a=>a_control_line,
            set_p=>p_control_line
            );
TLC5615_1:TLC5615 port map(
            CLK=>clk,
            SCLK=>sclk,
            DIN=>din,
            CS=>cs,
            DATA_IN=>dds_data_out_temp
            );
key_1:key port map(clk=>clk,key=>set_waveform_key_in,key_out=>set_waveform_key);
key_2:key port map(clk=>clk,key=>set_f_key_in,key_out=>set_f_key);
key_3:key port map(clk=>clk,key=>set_a_key_in,key_out=>set_a_key);
key_4:key port map(clk=>clk,key=>set_p_key_in,key_out=>set_p_key);
key_coding_1:key_coding port map(
            reset=>reset,
            set_waveform_key=>set_waveform_key,
            set_f_key=>set_f_key,
            set_a_key=>set_a_key,
            set_p_key=>set_p_key,
            set_waveform=>set_waveform_line,
            f_control=>f_control_line,
            a_control=>a_control_line,
            p_control=>p_control_line
            );
    sin_data<= dds_data_out_temp;
end behave;









