--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称： key.v
--** 创建日期：
--** 功能描述：按键消抖
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
