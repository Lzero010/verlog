--/********************************��Ȩ����**************************************
--**                              �������Ŷ�
--**                            
--**----------------------------�ļ���Ϣ--------------------------
--** �ļ����ƣ� key.v
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
entity key is
port(
     clk:in std_logic;
     key:in std_logic;
     key_out:out std_logic       
    );
end key;
architecture behave of key is
type key_state is (s0,s1,s2,s3);
signal state:key_state:=s0;
begin 
 process(clk)
  begin 
   if(clk'event and clk='1')then
    case state is
     when s0=>key_out<='1';
	          if(key='0')then
		       state<=s1;
	          else 
	           state<=s0;
	          end if;
     when s1=>if(key='0')then
		       state<=s2;
	          else 
	           state<=s0;
	          end if;
     when s2=>if(key='0')then
		       state<=s3;
	          else 
	           state<=s0; 
	          end if;
     when s3=>if(key='0')then
		       key_out<='0';
		       state<=s3;
		      else 
		       key_out<='1';
		       state<=s0;
              end if;
     when others=>state<=s0;
    end case;
   end if;
  end process;
end behave;
