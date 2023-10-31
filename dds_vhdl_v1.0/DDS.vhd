--/********************************��Ȩ����**************************************
--**                              �������Ŷ�
--**                            
--**----------------------------�ļ���Ϣ--------------------------
--** �ļ����ƣ� DDS.v
--** �������ڣ�
--** ����������DDS�źŷ�����Ƕ��ʽ�߼������ǵĵ���
--** Ӳ��ƽ̨�������ϵ�һ��������
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
--/**************������***************/
signal f32_bus:std_logic_vector(31 downto 0);--//ACƵ�ʿ���������
signal reg32_out:std_logic_vector(31 downto 0);--//32λ�Ĵ������
signal reg32_in:std_logic_vector(31 downto 0);--//32λ�Ĵ�������
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
  ---------------���Ҳ�ROM��-------------------  
   component sin
    port(
    address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
	clock		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
    );
    end component;
    -----------���ǲ�ROM��---------------------
    component tri_rom
    port(
        address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
    );
    end component;
    ---------------��ݲ����----------------
    component saw
      port(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
		);
    end component;
-----------------�������-----------------  
    component squ
      port(
        address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
      );
    end component;
------------------------------------------
begin
 f32_bus(31 downto 16)<=f32_bus_init;--//��ʼ��,��λ�õ�
 f32_bus(15 downto 0)<=f_control;--"1010011111000100";--//��λ��������DDS�����Ƶ��
--//1010011111000100(500Hz)
--//1000011000110110(400Hz)
--//0100001100011011(200Hz)
--//0010000110001001(100Hz)
--//0000011010110101(20Hz)
--/*********************Ԫ������************************************/
u1: adder_32bus port map(a=>f32_bus,b=>reg32_out,s=>reg32_in);
u2: register_32bus port map(clk=>clk,data_32in=>reg32_in,data_32out=>reg32_out);
u3: adder_10bus port map(a=>p_control,b=>reg32_out(31 downto 22),s=>reg10_in);
u4: register_10bus port map(clk=>clk,data_10in=>reg10_in,data_10out=>reg10_out_address);
--/*****************����ѡ��*******************************************/
u5: sin port map(clock=>clk,address=>reg10_out_address,q=>sin_data);
u6: tri_rom port map(clock=>clk,address=>reg10_out_address,q=>tri_data);
u7: saw port map(clock=>clk,address=>reg10_out_address,q=>squ_data);
u8: squ port map(clock=>clk,address=>reg10_out_address,q=>saw_data);
 process(clk)
  begin
   if(clk'event and clk='1')then
    case (set_waveform)is
		   when "00"=>dds_data_reg<=sin_data;--���Ҳ�sin_out
		   when "01"=>dds_data_reg<=tri_data;--��ݲ�
		   when "10"=>dds_data_reg<=squ_data;--���ǲ�
		   when "11"=>dds_data_reg<=saw_data;--����
		   when others=>dds_data_reg<=sin_data;--���Ҳ�
	end case;
   end if;
  end process;
-- dds_data_reg_temp<=conv_integer(dds_data_reg);
-- set_a_temp<=conv_integer(a_control);
-- dds_data_out_temp<=dds_data_reg_temp/set_a_temp*10;
-- dds_data_out<=conv_std_logic_vector(dds_data_out_temp);
   dds_data_out<=dds_data_reg;
end behave; 
