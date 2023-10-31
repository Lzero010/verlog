--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称： DDS.v
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
entity DDS is
port(
     clk:in std_logic;
     set_waveform:in std_logic_vector(1 downto 0);
     f_control:in std_logic_vector(15 downto 0);
     a_control:in std_logic_vector(3 downto 0);
     p_control:in std_logic_vector(9 downto 0);
     dds_data_out:out std_logic_vector(9 downto 0)--std_logic_vector(9 downto 0);   
    );
end DDS;
architecture behave of DDS is
--/**************连接线***************/
signal f32_bus:std_logic_vector(31 downto 0);--//AC频率控制字输入
signal reg32_out:std_logic_vector(31 downto 0);--//32位寄存器输出
signal reg32_in:std_logic_vector(31 downto 0);--//32位寄存器输入
signal reg10_in:std_logic_vector(9 downto 0);
signal reg10_out_address:std_logic_vector(9 downto 0);
--/************************************/
signal   sin_data:std_logic_vector(9 downto 0);
signal   tri_data:std_logic_vector(9 downto 0);
signal   squ_data:std_logic_vector(9 downto 0);
signal   saw_data:std_logic_vector(9 downto 0);
signal   dds_data_reg:std_logic_vector(9 downto 0);--;integer range 0 to 1023 
constant f32_bus_init:std_logic_vector:="0000000000000000";
signal   set_a_temp:integer range 0 to 15;
signal dds_data_reg_temp:integer range 0 to 1023:=0;--conv_integer
signal dds_data_out_temp:integer range 0 to 1023:=0;--conv_integer
--------------------------------------------------------------
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
    ---------------锯齿波输出----------------
    component saw
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
 f32_bus(31 downto 16)<=f32_bus_init;--//初始化,高位置低
 f32_bus(15 downto 0)<=f_control;--"1010011111000100";--//低位可以设置DDS的输出频率
--//1010011111000100(500Hz)
--//1000011000110110(400Hz)
--//0100001100011011(200Hz)
--//0010000110001001(100Hz)
--//0000011010110101(20Hz)
--/*********************元件例化************************************/
u1: adder_32bus port map(a=>f32_bus,b=>reg32_out,s=>reg32_in);
u2: register_32bus port map(clk=>clk,data_32in=>reg32_in,data_32out=>reg32_out);
u3: adder_10bus port map(a=>p_control,b=>reg32_out(31 downto 22),s=>reg10_in);
u4: register_10bus port map(clk=>clk,data_10in=>reg10_in,data_10out=>reg10_out_address);
--/*****************波形选择*******************************************/
u5: sin port map(clock=>clk,address=>reg10_out_address,q=>sin_data);
u6: tri_rom port map(clock=>clk,address=>reg10_out_address,q=>tri_data);
u7: saw port map(clock=>clk,address=>reg10_out_address,q=>squ_data);
u8: squ port map(clock=>clk,address=>reg10_out_address,q=>saw_data);
 process(clk)
  begin
   if(clk'event and clk='1')then
    case (set_waveform)is
		   when "00"=>dds_data_reg<=sin_data;--正弦波sin_out
		   when "01"=>dds_data_reg<=tri_data;--锯齿波
		   when "10"=>dds_data_reg<=squ_data;--三角波
		   when "11"=>dds_data_reg<=saw_data;--方波
		   when others=>dds_data_reg<=sin_data;--正弦波
	end case;
   end if;
  end process;
-- dds_data_reg_temp<=conv_integer(dds_data_reg);
-- set_a_temp<=conv_integer(a_control);
-- dds_data_out_temp<=dds_data_reg_temp/set_a_temp*10;
-- dds_data_out<=conv_std_logic_vector(dds_data_out_temp);
   dds_data_out<=dds_data_reg;
end behave; 
