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
package eight_bit_int is
subtype fbyte is integer range 0 to 1023;
type array_byte is array(0 to 3)of fbyte;
end eight_bit_int;
library work;
use work.eight_bit_int.all;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
	use IEEE.std_logic_arith.all;
entity DSP_top is 
port (
     clk:in std_logic;
     fir_data:out fbyte
     );
end DSP_top;
architecture behave of DSP_top is
component fir is
port(
    clk:in std_logic;
    x:in fbyte;
    y:out fbyte
    );
end component;
component DDS is
port(
     clk:in std_logic;
     dds_data_out:out std_logic_vector(9 downto 0)
    );
end component;
signal dataline:fbyte; 
signal temp:std_logic_vector(9 downto 0);
begin 
 u1:fir port map(clk=>clk,x=>dataline,y=>fir_data);
 u2:DDS port map(clk,dds_data_out=>temp);
 dataline<=conv_integer(temp);
end behave;
