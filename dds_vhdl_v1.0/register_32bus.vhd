--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称： register_32bus.v
--** 功能描述：10位累加器
--**---------------------------修改文件的相关信息----------------
--** 修改人：
--** 修改日期：		
--** 修改内容：
--*******************************************************************************/
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity register_32bus is
port(
     clk:in std_logic;
     data_32in:in std_logic_vector(31 downto 0);
     data_32out:out std_logic_vector(31 downto 0)
); 
end register_32bus;
architecture regi_behave of register_32bus is
begin 
   process(clk,data_32in)
      begin 
        if(clk'event and clk='1')then 
            data_32out<=data_32in;----32位寄存器
        end if;
   end process;
end regi_behave;
