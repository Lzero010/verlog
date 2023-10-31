--/********************************��Ȩ����**************************************
--**                              �������Ŷ�
--**                            
--**----------------------------�ļ���Ϣ--------------------------
--** �ļ����ƣ� key_coding.vhd
--** �������ڣ�
--** ������������������
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
entity key_coding is
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
end key_coding;
architecture behave of key_coding is
signal     set_waveform_temp:std_logic_vector(1 downto 0);
signal     f_control_temp:std_logic_vector(20 downto 0);
signal     a_control_temp:std_logic_vector(3 downto 0);
signal     p_control_temp:std_logic_vector(9 downto 0);    
begin 
set_waveform<=set_waveform_temp;
f_control<=f_control_temp;
a_control<=a_control_temp;
p_control<=p_control_temp;

--/******************��������****************************************/
process(set_waveform_key,reset)
 begin
 if(set_waveform_key'event and set_waveform_key='0')then
  if(reset='0')then
   set_waveform_temp<="00";
  else
   if(set_waveform_key='0')then--�жϰ����Ƿ���
    set_waveform_temp<=set_waveform_temp+'1';
   end if;
 end if;
end if;
 end process;
--/****************Ƶ������*******************************************/
--//0000001010011111000100(500Hz)
--//0000001000011000110110(400Hz)
--//0000000100001100011011(200Hz)
--//0000000010000110001001(100Hz)
--//0000000000011010110101(20Hz)
process(set_f_key,reset)
 begin
  if(set_f_key'event and set_f_key='0')then
   if(reset='0')then
    f_control_temp<="000000010000110001001";--//100Hz
   else
    if(set_f_key='0')then--//�жϰ����Ƿ���
	 if(f_control_temp="11111111111111111")then
		f_control_temp<="000000000000000000000";
	 else
		f_control_temp<=f_control_temp+"000000010000110001001";--ÿ��һ�Σ�Ƶ������100Hz
	 end if;
    end if;
   end if;
  end if;
 end process;
--/***************��ֵ����****************************************/
process(set_a_key,reset)
 begin 
  if(set_a_key'event and set_a_key='0')then
   if(reset='0')then
    a_control_temp<="0001";
   else
    if(set_a_key='0')then--//�жϰ����Ƿ���
       if(a_control_temp="1010")then
        a_control_temp<="0001";
       else
        a_control_temp<=a_control_temp+'1';--ÿ��һ�Σ�����ʮ��֮һ
       end if;
     end if;
   end if;
  end if;
 end process;
--/***************��λ����******************************************/
process(set_p_key,reset)
 begin
  if(set_p_key'event and set_p_key='0')then
   if(reset='0')then
     p_control_temp <= "0000000000";--//0��
   else
     if(set_p_key='0')then--//�жϰ����Ƿ���
         if(p_control_temp="1111111111")then
            p_control_temp<="0000000000";
         else
            p_control_temp<=p_control_temp+"0001100100";--ÿ��һ�Σ�����100
         end if;
     end if;
   end if;
  end if;
 end process;
end behave;
