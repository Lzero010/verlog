--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称： DDS_top.v
--** 创建日期：
--** 功能描述：DDS信号发生与嵌入式逻辑分析仪的调用
--** 硬件平台：大西瓜第一代开发板
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
entity dds_top is 
port (
     clk:in std_logic;
     reset:in std_logic;
     set_waveform_key_in:in std_logic;
     set_f_key_in:in std_logic;
     set_a_key_in:in std_logic;
     set_p_key_in:in std_logic;
     sclk:OUT STD_LOGIC;
     din:OUT STD_LOGIC;
     cs:OUT STD_LOGIC
     );
end dds_top;
architecture behave of dds_top is

component DDS is
port(
     clk:in std_logic;
     set_waveform:in std_logic_vector(1 downto 0);
     f_control:in std_logic_vector(15 downto 0);
     a_control:in std_logic_vector(3 downto 0);
     p_control:in std_logic_vector(9 downto 0);
     dds_data_out:out std_logic_vector(9 downto 0)
    );
end component;
component key_coding is
port(
     reset:in std_logic;
     set_waveform_key:in std_logic;
     set_f_key:in std_logic;
     set_a_key:in std_logic;
     set_p_key:in std_logic;
     
     set_waveform:out std_logic_vector(1 downto 0);
     f_control:out std_logic_vector(15 downto 0);
     a_control:out std_logic_vector(3 downto 0);
     p_control:out std_logic_vector(9 downto 0)    
    );
end component;
component key is
port(
     clk:in std_logic;
     key:in std_logic;
     key_out:out std_logic       
    );
end component;
component TLC5615 IS
  PORT (
        CLK:IN STD_LOGIC;
        SCLK:OUT STD_LOGIC;
        DIN:OUT STD_LOGIC;
        CS:OUT STD_LOGIC;
        DATA_IN:IN STD_LOGIC_VECTOR(9 DOWNTO 0)
       );
END component;
signal dds_data_out_line:std_logic_vector(9 downto 0);
signal set_waveform_line:std_logic_vector(1 downto 0);
signal a_control_line:std_logic_vector(3 downto 0);
signal p_control_line:std_logic_vector(9 downto 0);
signal f_control_line:std_logic_vector(15 downto 0);
signal waveform_key:std_logic;
signal a_key:std_logic;
signal f_key:std_logic;
signal p_key:std_logic;
begin 
 u1:DDS port map(clk=>clk,set_waveform=>set_waveform_line,f_control=>f_control_line,a_control=>a_control_line
                 ,p_control=>p_control_line,dds_data_out=>dds_data_out_line);
 u2:key port map(clk=>clk,key=>set_waveform_key_in,key_out=>waveform_key);
 u3:key port map(clk=>clk,key=>set_f_key_in,key_out=>f_key);
 u4:key port map(clk=>clk,key=>set_a_key_in,key_out=>a_key);
 u5:key port map(clk=>clk,key=>set_p_key_in,key_out=>p_key);
 u6:key_coding port map(reset=>reset,
                        set_waveform_key=>waveform_key,set_f_key=>f_key,
                        set_a_key=>a_key,set_p_key=>p_key,
                        set_waveform=>set_waveform_line,
                        f_control=>f_control_line,a_control=>a_control_line,p_control=>p_control_line);
 u7:TLC5615 port map(CLK=>clk,SCLK=>sclk,DIN=>din,CS=>cs,DATA_IN=>dds_data_out_line);
end behave;
