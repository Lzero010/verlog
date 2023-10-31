--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称： key_coding.v
--** 创建日期：
--** 功能描述：按键编码
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
entity key_coding is
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
end key_coding;
architecture behave of key_coding is
signal     set_waveform_temp:std_logic_vector(1 downto 0);
signal     f_control_temp:std_logic_vector(15 downto 0);
signal     a_control_temp:std_logic_vector(3 downto 0);
signal     p_control_temp:std_logic_vector(9 downto 0);    
begin 
set_waveform<=set_waveform_temp;
f_control<=f_control_temp;
a_control<=a_control_temp;
p_control<=p_control_temp;

--/******************波形设置****************************************/
process(set_waveform_key,reset)
 begin
 if(set_waveform_key'event and set_waveform_key='0')then
  if(reset='0')then
   set_waveform_temp<="00";
  else
   if(set_waveform_key='0')then--判断按键是否按下
    set_waveform_temp<=set_waveform_temp+'1';
   end if;
 end if;
end if;
 end process;
--/****************频率设置*******************************************/
process(set_f_key,reset)
 begin
  if(set_f_key'event and set_f_key='0')then
   if(reset='0')then
    f_control_temp<="0100001100011011";--//200Hz
   else
    if(set_f_key='0')then--//判断按键是否按下
	 if(f_control_temp="111111111111")then
		f_control_temp<="0000000000000000";
	 else
		f_control_temp<=f_control_temp+"0000000000110010";
	 end if;
    end if;
   end if;
  end if;
 end process;
--/***************幅值控制****************************************/
process(set_a_key,reset)
 begin 
  if(set_a_key'event and set_a_key='0')then
   if(reset='0')then
    a_control_temp<="0001";
   else
    if(set_a_key='0')then--//判断按键是否按下
       if(a_control_temp="1010")then
        a_control_temp<="0001";
       else
        a_control_temp<=a_control_temp+'1';
       end if;
     end if;
   end if;
  end if;
 end process;
--/***************相位设置******************************************/
process(set_p_key,reset)
 begin
  if(set_p_key'event and set_p_key='0')then
   if(reset='0')then
     p_control_temp<="0000000000";--//0度
   else
     if(set_p_key='0')then--//判断按键是否按下
         if(p_control_temp="1111111111")then
            p_control_temp<="0000000000";
         else
            p_control_temp<=p_control_temp+"0001100100";
         end if;
     end if;
   end if;
  end if;
 end process;
end behave;
