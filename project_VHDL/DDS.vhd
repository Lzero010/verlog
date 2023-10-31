--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称： DDS.v
--** 创建日期：
--** 功能描述：DDS信号发生与嵌入式逻辑分析仪的调用
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
entity DDS is
port(
    clk:in std_logic;--时钟输入
    dds_data_out:out std_logic_vector(9 downto 0);--DDS数据输出
    set_waveform:in std_logic_vector(1 downto 0);--设置输出的波形
    set_f:in std_logic_vector(20 downto 0);--设置频率
    set_a:in std_logic_vector(3 downto 0);--设置幅值
    set_p:in std_logic_vector(9 downto 0)--设置频率
    );
end DDS;
architecture behave of DDS is
--/**************连接线***************/
signal f32_bus:std_logic_vector(31 downto 0);--//AC频率控制字输入
signal reg32_out:std_logic_vector(31 downto 0);--//32位寄存器输出
signal reg32_in:std_logic_vector(31 downto 0);--//32位寄存器输入
signal reg10_in:std_logic_vector(9 downto 0);
signal reg10_out_address:std_logic_vector(9 downto 0);
--/****************缓存寄存器********/
signal   sin_data:std_logic_vector(9 downto 0);
signal   tri_data:std_logic_vector(9 downto 0);
signal   squ_data:std_logic_vector(9 downto 0);

signal   dds_data_reg:integer range 0 to 1023;
signal   set_f_reg:std_logic_vector(20 downto 0);

constant f32_bus_init:std_logic_vector:="00000000000";--
signal   set_a_temp:integer range 0 to 15;
signal   dds_data_out_temp:integer range 0 to 1023:=0;
----------------------元件例化------------------------------
   component adder_32bus
    port(
    a:in std_logic_vector(31 downto 0);
    b:in std_logic_vector(31 downto 0);
    s:out std_logic_vector(31 downto 0)
    );
     end component;
   component register_32bus
    port(
     clk:in std_logic;
     data_32in:in std_logic_vector(31 downto 0);
     data_32out:out std_logic_vector(31 downto 0)
    ); 
   end component;
    component adder_10bus
    port(
    a:in std_logic_vector(9 downto 0);
    b:in std_logic_vector(9 downto 0);
    s:out std_logic_vector(9 downto 0)
    );
     end component;
    component register_10bus
    port(
     clk:in std_logic;
     data_10in:in std_logic_vector(9 downto 0);
     data_10out:out std_logic_vector(9 downto 0)
    );
     end component;
  ---------------正弦波ROM表-------------------  
   component sin
    port(
    address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
	clock		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
    );
    end component;
   -----------三角波ROM表---------------------
   component tri_rom
   port(
       address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
   );
   end component;
   -----------------方波输出-----------------  
   component squ
     port(
       address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
     );
   end component;
------------------------------------------
begin
 f32_bus(31 downto 21)<=f32_bus_init;--//初始化,高位置低
 f32_bus(20 downto 0)<=set_f_reg;--//低位可以设置DDS的输出频率--set_f_reg
--/*********************元件例化************************************/
u1: adder_32bus port map(a=>f32_bus,b=>reg32_out,s=>reg32_in);
u2: register_32bus port map(clk=>clk,data_32in=>reg32_in,data_32out=>reg32_out);
u3: adder_10bus port map(a=>set_p,b=>reg32_out(31 downto 22),s=>reg10_in);
u4: register_10bus port map(clk=>clk,data_10in=>reg10_in,data_10out=>reg10_out_address);
--/*****************波形选择*******************************************/
u5: sin port map(clock=>clk,address=>reg10_out_address,q=>sin_data);
u6: tri_rom port map(clock=>clk,address=>reg10_out_address,q=>tri_data);
u7: squ port map(clock=>clk,address=>reg10_out_address,q=>squ_data);
-- /***********************设置波形和设置频率***************************/
    process(set_waveform,set_f,sin_data,tri_data,squ_data)
    begin
        case(set_waveform)is
        when "00"=>--正弦波
            dds_data_reg <= CONV_INTEGER(sin_data); 
            set_f_reg <= set_f;--设置范围为100Hz到20KHz
        when "01"=>--三角波
            dds_data_reg <= CONV_INTEGER(tri_data);
            set_f_reg <= set_f;--设置范围为100Hz到20KHz
        when "10"=>--方波
            dds_data_reg <= CONV_INTEGER(squ_data);
            set_f_reg <= set_f;--设置范围为100Hz到20KHz
        when "11"=>--正弦波
            dds_data_reg <= CONV_INTEGER(sin_data);--
            set_f_reg <= set_f;--设置范围为100Hz到20KHz
        end case;
    end process;
-- /***********************设置电压幅值***************************/
    set_a_temp <= CONV_INTEGER(set_a);--转换为整形才能进行乘法和除法运算
    dds_data_out_temp <= dds_data_reg * set_a_temp / 10;--设置电压幅值
    dds_data_out <= CONV_STD_LOGIC_VECTOR(dds_data_out_temp,10);--转换成标准矢量型
end behave;














