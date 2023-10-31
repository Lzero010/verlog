--/********************************版权声明**************************************
--**                              大西瓜团队
--**                            
--**----------------------------文件信息--------------------------
--** 文件名称：TLC615.vhl
--** 创建日期：2012.10.10
--** 功能描述：使用10位串行DA芯片TLC5615将数字信号转换为模拟信号，开发板DA芯片VDD=5V,VREF=3.3V 
--             计算公式：Vout=VREF*(N/1024) N为10位二进制码
--** 操作过程：根据需求，在程序改变10位二进制数，在DA芯片的Vout脚输出相应电压
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
  ENTITY TLC5615 IS
  PORT (
        CLK:IN STD_LOGIC;
        SCLK:OUT STD_LOGIC;
        DIN:OUT STD_LOGIC;
        CS:OUT STD_LOGIC;
        DATA_IN:IN STD_LOGIC_VECTOR(9 DOWNTO 0)
       );
  END TLC5615;
  ARCHITECTURE BEHAVE OF TLC5615 IS
    SIGNAL COUNT1,COUNT2,COUNT3:STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL DIN_REG:STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL SCLK_REG:STD_LOGIC;
    SIGNAL CS_REG:STD_LOGIC;
  BEGIN 
--/*** sclk的频率设置为2.5MHz ***/
  SCLK<=SCLK_REG;
  CS<=CS_REG;
  PROCESS (CLK)
    BEGIN
     IF(CLK'EVENT AND CLK='1' )THEN
       IF(COUNT3="1001")THEN
          SCLK_REG<=NOT SCLK_REG;
          COUNT3<="0000";
       ELSE
          COUNT3<=COUNT3+'1';
       END IF;
     END IF;
    END PROCESS;  
--/*********将DDS产生的数据进行寄存**********/
  PROCESS(CLK)
   BEGIN
    IF(CLK'EVENT AND CLK='1')THEN 
     DIN_REG<=DATA_IN;
    END IF;
   END PROCESS;
--/*** TLC5615 cs片选 ***/
  PROCESS(SCLK_REG)
    BEGIN
     IF(SCLK_REG'EVENT AND SCLK_REG='0')THEN
       IF(COUNT1>="1100" AND COUNT1<"1111")THEN
         CS_REG<='1';
         COUNT1<=COUNT1+'1';
       ELSIF(COUNT1="1111")THEN
         COUNT1<="0000";
       ELSE
         CS_REG<='0';
         COUNT1<=COUNT1+'1';
       END IF;
     END IF;
    END PROCESS;
--/*** 10位二进制码进行数模转换（采用12位传送方式即10位有效位+2位填充位） ***/
  PROCESS (SCLK_REG)
    BEGIN
     IF(SCLK_REG'EVENT AND  SCLK_REG='1')THEN
       IF(CS_REG='0')THEN
         CASE COUNT2 IS
          WHEN "0000"=>DIN<='0';
          WHEN "0001"=>DIN<=DIN_REG(9);
          WHEN "0010"=>DIN<=DIN_REG(8);
          WHEN "0011"=>DIN<=DIN_REG(7);
          WHEN "0100"=>DIN<=DIN_REG(6);
          WHEN "0101"=>DIN<=DIN_REG(5);
          WHEN "0110"=>DIN<=DIN_REG(4);
          WHEN "0111"=>DIN<=DIN_REG(3);
          WHEN "1000"=>DIN<=DIN_REG(2);
          WHEN "1001"=>DIN<=DIN_REG(1);
          WHEN "1010"=>DIN<=DIN_REG(0);
          
          WHEN "1011"=>DIN<='0';
          WHEN "1100"=>DIN<='0';
          
          WHEN "1101"=>DIN<='0';
          WHEN "1110"=>DIN<='0';
          WHEN "1111"=>DIN<='0';
          
          WHEN OTHERS=>COUNT2<="0000";DIN<='0';
         END CASE;
       END IF;
       IF(COUNT2="1111")THEN
          COUNT2<="0000";
       ELSE
          COUNT2<=COUNT2+'1';
       END IF;
     END IF;
    END PROCESS;
    
END BEHAVE;
