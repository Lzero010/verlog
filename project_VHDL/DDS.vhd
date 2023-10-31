--/********************************��Ȩ����**************************************
--**                              �������Ŷ�
--**                            
--**----------------------------�ļ���Ϣ--------------------------
--** �ļ����ƣ� DDS.v
--** �������ڣ�
--** ����������DDS�źŷ�����Ƕ��ʽ�߼������ǵĵ���
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
entity DDS is
port(
    clk:in std_logic;--ʱ������
    dds_data_out:out std_logic_vector(9 downto 0);--DDS�������
    set_waveform:in std_logic_vector(1 downto 0);--��������Ĳ���
    set_f:in std_logic_vector(20 downto 0);--����Ƶ��
    set_a:in std_logic_vector(3 downto 0);--���÷�ֵ
    set_p:in std_logic_vector(9 downto 0)--����Ƶ��
    );
end DDS;
architecture behave of DDS is
--/**************������***************/
signal f32_bus:std_logic_vector(31 downto 0);--//ACƵ�ʿ���������
signal reg32_out:std_logic_vector(31 downto 0);--//32λ�Ĵ������
signal reg32_in:std_logic_vector(31 downto 0);--//32λ�Ĵ�������
signal reg10_in:std_logic_vector(9 downto 0);
signal reg10_out_address:std_logic_vector(9 downto 0);
--/****************����Ĵ���********/
signal   sin_data:std_logic_vector(9 downto 0);
signal   tri_data:std_logic_vector(9 downto 0);
signal   squ_data:std_logic_vector(9 downto 0);

signal   dds_data_reg:integer range 0 to 1023;
signal   set_f_reg:std_logic_vector(20 downto 0);

constant f32_bus_init:std_logic_vector:="00000000000";--
signal   set_a_temp:integer range 0 to 15;
signal   dds_data_out_temp:integer range 0 to 1023:=0;
----------------------Ԫ������------------------------------
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
 f32_bus(31 downto 21)<=f32_bus_init;--//��ʼ��,��λ�õ�
 f32_bus(20 downto 0)<=set_f_reg;--//��λ��������DDS�����Ƶ��--set_f_reg
--/*********************Ԫ������************************************/
u1: adder_32bus port map(a=>f32_bus,b=>reg32_out,s=>reg32_in);
u2: register_32bus port map(clk=>clk,data_32in=>reg32_in,data_32out=>reg32_out);
u3: adder_10bus port map(a=>set_p,b=>reg32_out(31 downto 22),s=>reg10_in);
u4: register_10bus port map(clk=>clk,data_10in=>reg10_in,data_10out=>reg10_out_address);
--/*****************����ѡ��*******************************************/
u5: sin port map(clock=>clk,address=>reg10_out_address,q=>sin_data);
u6: tri_rom port map(clock=>clk,address=>reg10_out_address,q=>tri_data);
u7: squ port map(clock=>clk,address=>reg10_out_address,q=>squ_data);
-- /***********************���ò��κ�����Ƶ��***************************/
    process(set_waveform,set_f,sin_data,tri_data,squ_data)
    begin
        case(set_waveform)is
        when "00"=>--���Ҳ�
            dds_data_reg <= CONV_INTEGER(sin_data); 
            set_f_reg <= set_f;--���÷�ΧΪ100Hz��20KHz
        when "01"=>--���ǲ�
            dds_data_reg <= CONV_INTEGER(tri_data);
            set_f_reg <= set_f;--���÷�ΧΪ100Hz��20KHz
        when "10"=>--����
            dds_data_reg <= CONV_INTEGER(squ_data);
            set_f_reg <= set_f;--���÷�ΧΪ100Hz��20KHz
        when "11"=>--���Ҳ�
            dds_data_reg <= CONV_INTEGER(sin_data);--
            set_f_reg <= set_f;--���÷�ΧΪ100Hz��20KHz
        end case;
    end process;
-- /***********************���õ�ѹ��ֵ***************************/
    set_a_temp <= CONV_INTEGER(set_a);--ת��Ϊ���β��ܽ��г˷��ͳ�������
    dds_data_out_temp <= dds_data_reg * set_a_temp / 10;--���õ�ѹ��ֵ
    dds_data_out <= CONV_STD_LOGIC_VECTOR(dds_data_out_temp,10);--ת���ɱ�׼ʸ����
end behave;














