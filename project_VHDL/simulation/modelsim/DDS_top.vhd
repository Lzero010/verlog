--/********************************��Ȩ����**************************************
--**                              �������Ŷ�
--**                            
--**----------------------------�ļ���Ϣ--------------------------
--** �ļ����ƣ� DDS_top.v
--** �������ڣ�
--** ����������DDS�źŷ�����Ƕ��ʽ�߼������ǵĵ���
--** Ӳ��ƽ̨�������ϵ�һ��������
--** ��Ȩ������������������֪ʶ��Ȩ,�������������ѧϰ.
--**---------------------------�޸��ļ��������Ϣ----------------
--** �޸��ˣ�
--** �޸����ڣ�		
--** �޸����ݣ�
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
