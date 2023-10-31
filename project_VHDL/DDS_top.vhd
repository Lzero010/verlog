--/********************************��Ȩ����**************************************
--**                              �������Ŷ�
--**                            
--**----------------------------�ļ���Ϣ--------------------------
--** �ļ����ƣ� DDS_top.v
--** �������ڣ�
--** ����������DDS�źŷ���
--** 
--** ��Ȩ������������������֪ʶ��Ȩ,�������������ѧϰ.
--**---------------------------�޸��ļ��������Ϣ----------------
--** �޸��ˣ�
--** �޸����ڣ�		
--** �޸����ݣ�
--*******************************************************************************/
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
	use IEEE.std_logic_arith.all;
entity DDS_top is 
port (
    clk:in std_logic;                              --�ڲ�ʱ��
    reset:in std_logic;                              --��λ�ź� key5
    sclk:out std_logic;                                 --TLC5615 sclkʱ�ӽ�
    din:out std_logic;                                 --TLC5615 din���ݽ�
    cs:out std_logic;                                   --TLC5615 csƬѡ
    set_waveform_key_in:in std_logic;                  --�������ð��� key1
    set_f_key_in:in std_logic;                         --Ƶ�����ð��� key2
    set_a_key_in:in std_logic;                        --��ֵ���ð��� key3
    set_p_key_in:in std_logic;                        --��λ���ð��� key4
    sin_data:out std_logic_vector(9 downto 0)   --����Ĳ������ݣ����ڲ���
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
--DDsģ��
component DDS is
port(
    clk:in std_logic;--ʱ������
    dds_data_out:out std_logic_vector(9 downto 0);--DDS�������
    set_waveform:in std_logic_vector(1 downto 0);--��������Ĳ���
    set_f:in std_logic_vector(20 downto 0);--����Ƶ��
    set_a:in std_logic_vector(3 downto 0);--���÷�ֵ
    set_p:in std_logic_vector(9 downto 0)--����Ƶ��
    );
end component;
-- DAC����ģ��
component TLC5615 is
port(
    CLK:IN STD_LOGIC;
    SCLK:OUT STD_LOGIC;
    DIN:OUT STD_LOGIC;
    CS:OUT STD_LOGIC;
    DATA_IN:IN STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
end component;
-- ��������ģ��
component key is
port(
    clk:in std_logic;
    key:in std_logic;
    key_out:out std_logic
    );
end component;
-- ��������ģ��
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
--/*********************Ԫ������************************************/
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









