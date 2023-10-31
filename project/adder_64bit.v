/**************************************��Ȩ����************************************
** �ļ����ƣ�        adder_64bit.v
** ���°汾��        v1.0
** ����������        64λ8����ˮ�߼ӷ�������ģ��
***********************************************************************************/
module adder_64bit(
           clk,
           reset_n,
           data_in_a,
           data_in_b,
           sum,
           c
           );
input           clk;            //ʱ���ź�
input           reset_n;        //��λ�ź�
input   [63:0]  data_in_a;      //������1
input   [63:0]  data_in_b;      //������2
output  [63:0]  sum;            //�����
output          c;              //��λλ���
// ***********************************************************************************/
// ****************�ͼĴ���**************************
reg     [8:0]   sum1_reg1;      //��1��8λ�ĺͼĴ���1
reg     [8:0]   sum1_reg2;      //��1��8λ�ĺͼĴ���2
reg     [8:0]   sum1_reg3;      //��1��8λ�ĺͼĴ���3
reg     [8:0]   sum1_reg4;      //��1��8λ�ĺͼĴ���4
reg     [8:0]   sum1_reg5;      //��1��8λ�ĺͼĴ���5
reg     [8:0]   sum1_reg6;      //��1��8λ�ĺͼĴ���6
reg     [8:0]   sum1_reg7;      //��1��8λ�ĺͼĴ���7
reg     [8:0]   sum1_reg8;      //��1��8λ�ĺͼĴ���8

reg     [8:0]   sum2_reg1;      //��2��8λ�ĺͼĴ���1
reg     [8:0]   sum2_reg2;      //��2��8λ�ĺͼĴ���2
reg     [8:0]   sum2_reg3;      //��2��8λ�ĺͼĴ���3
reg     [8:0]   sum2_reg4;      //��2��8λ�ĺͼĴ���4
reg     [8:0]   sum2_reg5;      //��2��8λ�ĺͼĴ���5
reg     [8:0]   sum2_reg6;      //��2��8λ�ĺͼĴ���6
reg     [8:0]   sum2_reg7;      //��2��8λ�ĺͼĴ���7

reg     [8:0]   sum3_reg1;      //��3��8λ�ĺͼĴ���1
reg     [8:0]   sum3_reg2;      //��3��8λ�ĺͼĴ���2
reg     [8:0]   sum3_reg3;      //��3��8λ�ĺͼĴ���3
reg     [8:0]   sum3_reg4;      //��3��8λ�ĺͼĴ���4
reg     [8:0]   sum3_reg5;      //��3��8λ�ĺͼĴ���5
reg     [8:0]   sum3_reg6;      //��3��8λ�ĺͼĴ���6

reg     [8:0]   sum4_reg1;      //��4��8λ�ĺͼĴ���1
reg     [8:0]   sum4_reg2;      //��4��8λ�ĺͼĴ���2
reg     [8:0]   sum4_reg3;      //��4��8λ�ĺͼĴ���3
reg     [8:0]   sum4_reg4;      //��4��8λ�ĺͼĴ���4
reg     [8:0]   sum4_reg5;      //��4��8λ�ĺͼĴ���5

reg     [8:0]   sum5_reg1;      //��5��8λ�ĺͼĴ���1
reg     [8:0]   sum5_reg2;      //��5��8λ�ĺͼĴ���2
reg     [8:0]   sum5_reg3;      //��5��8λ�ĺͼĴ���3
reg     [8:0]   sum5_reg4;      //��5��8λ�ĺͼĴ���4

reg     [8:0]   sum6_reg1;      //��6��8λ�ĺͼĴ���1
reg     [8:0]   sum6_reg2;      //��6��8λ�ĺͼĴ���2
reg     [8:0]   sum6_reg3;      //��6��8λ�ĺͼĴ���3

reg     [8:0]   sum7_reg1;      //��7��8λ�ĺͼĴ���1
reg     [8:0]   sum7_reg2;      //��7��8λ�ĺͼĴ���2

reg     [8:0]   sum8_reg1;      //��8��8λ�ĺͼĴ���1
// ****************�����Ĵ���**************************
reg     [7:0]   data_in_a2_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_b2_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_a3_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_b3_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_a4_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_b4_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_a5_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_b5_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_a6_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_b6_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_a7_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_b7_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_a8_reg1;//������1����ˮ�߼Ĵ���
reg     [7:0]   data_in_b8_reg1;//������1����ˮ�߼Ĵ���

reg     [7:0]   data_in_a3_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_b3_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_a4_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_b4_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_a5_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_b5_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_a6_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_b6_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_a7_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_b7_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_a8_reg2;//������2����ˮ�߼Ĵ���
reg     [7:0]   data_in_b8_reg2;//������2����ˮ�߼Ĵ���

reg     [7:0]   data_in_a4_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_b4_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_a5_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_b5_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_a6_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_b6_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_a7_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_b7_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_a8_reg3;//������3����ˮ�߼Ĵ���
reg     [7:0]   data_in_b8_reg3;//������3����ˮ�߼Ĵ���

reg     [7:0]   data_in_a5_reg4;//������4����ˮ�߼Ĵ���
reg     [7:0]   data_in_b5_reg4;//������4����ˮ�߼Ĵ���
reg     [7:0]   data_in_a6_reg4;//������4����ˮ�߼Ĵ���
reg     [7:0]   data_in_b6_reg4;//������4����ˮ�߼Ĵ���
reg     [7:0]   data_in_a7_reg4;//������4����ˮ�߼Ĵ���
reg     [7:0]   data_in_b7_reg4;//������4����ˮ�߼Ĵ���
reg     [7:0]   data_in_a8_reg4;//������4����ˮ�߼Ĵ���
reg     [7:0]   data_in_b8_reg4;//������4����ˮ�߼Ĵ���

reg     [7:0]   data_in_a6_reg5;//������5����ˮ�߼Ĵ���
reg     [7:0]   data_in_b6_reg5;//������5����ˮ�߼Ĵ���
reg     [7:0]   data_in_a7_reg5;//������5����ˮ�߼Ĵ���
reg     [7:0]   data_in_b7_reg5;//������5����ˮ�߼Ĵ���
reg     [7:0]   data_in_a8_reg5;//������5����ˮ�߼Ĵ���
reg     [7:0]   data_in_b8_reg5;//������5����ˮ�߼Ĵ���

reg     [7:0]   data_in_a7_reg6;//������6����ˮ�߼Ĵ���
reg     [7:0]   data_in_b7_reg6;//������6����ˮ�߼Ĵ���
reg     [7:0]   data_in_a8_reg6;//������6����ˮ�߼Ĵ���
reg     [7:0]   data_in_b8_reg6;//������6����ˮ�߼Ĵ���

reg     [7:0]   data_in_a8_reg7;//������7����ˮ�߼Ĵ���
reg     [7:0]   data_in_b8_reg7;//������7����ˮ�߼Ĵ���
// ***********************************************************************************/
// ******************************************
    // ��1����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg1 <= 9'd0;
        end
        else
        begin
            //  ��1����ˮ�߽���1��8λ���мӷ�����
            sum1_reg1 <= data_in_a[7:0] + data_in_b[7:0];
            data_in_a2_reg1 <= data_in_a[15:8];//�������7��8λ�ļ������е�1������
            data_in_b2_reg1 <= data_in_b[15:8];
            data_in_a3_reg1 <= data_in_a[23:16];
            data_in_b3_reg1 <= data_in_b[23:16];
            data_in_a4_reg1 <= data_in_a[31:24];
            data_in_b4_reg1 <= data_in_b[31:24];
            data_in_a5_reg1 <= data_in_a[39:32];
            data_in_b5_reg1 <= data_in_b[39:32];
            data_in_a6_reg1 <= data_in_a[47:40];
            data_in_b6_reg1 <= data_in_b[47:40];
            data_in_a7_reg1 <= data_in_a[55:48];
            data_in_b7_reg1 <= data_in_b[55:48];
            data_in_a8_reg1 <= data_in_a[63:56];
            data_in_b8_reg1 <= data_in_b[63:56];
        end
    end
// ******************************************
    // ��2����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg2 <= 9'd0;
            sum2_reg1 <= 9'd0;
        end
        else
        begin
            //  ��2����ˮ�߽���2��8λ�͵�1��8λ�Ľ�λλ���мӷ�����
            sum1_reg2 <= sum1_reg1;//���ͽ��л���
            sum2_reg1 <= data_in_a2_reg1 + data_in_b2_reg1 + sum1_reg1[8];
            data_in_a3_reg2 <= data_in_a3_reg1;//�������6��8λ�ļ������е�2������
            data_in_b3_reg2 <= data_in_b3_reg1;
            data_in_a4_reg2 <= data_in_a4_reg1;
            data_in_b4_reg2 <= data_in_b4_reg1;
            data_in_a5_reg2 <= data_in_a5_reg1;
            data_in_b5_reg2 <= data_in_b5_reg1;
            data_in_a6_reg2 <= data_in_a6_reg1;
            data_in_b6_reg2 <= data_in_b6_reg1;
            data_in_a7_reg2 <= data_in_a7_reg1;
            data_in_b7_reg2 <= data_in_b7_reg1;
            data_in_a8_reg2 <= data_in_a8_reg1;
            data_in_b8_reg2 <= data_in_b8_reg1;
        end
    end
// ******************************************
// ��3����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum2_reg2 <= 9'd0;
            sum3_reg1 <= 9'd0;
        end
        else
        begin
            //  ��3����ˮ�߽���3��8λ�͵�2��8λ�Ľ�λλ���мӷ�����
            sum1_reg3 <= sum1_reg2;//���ͽ��л���
            sum2_reg2 <= sum2_reg1;
            sum3_reg1 <= sum2_reg1[8] + data_in_a3_reg2 + data_in_b3_reg2;
            data_in_a4_reg3 <= data_in_a4_reg2;//�������5��8λ�ļ������е�3������
            data_in_b4_reg3 <= data_in_b4_reg2;
            data_in_a5_reg3 <= data_in_a5_reg2;
            data_in_b5_reg3 <= data_in_b5_reg2;
            data_in_a6_reg3 <= data_in_a6_reg2;
            data_in_b6_reg3 <= data_in_b6_reg2;
            data_in_a7_reg3 <= data_in_a7_reg2;
            data_in_b7_reg3 <= data_in_b7_reg2;
            data_in_a8_reg3 <= data_in_a8_reg2;
            data_in_b8_reg3 <= data_in_b8_reg2;
        end
    end
// ******************************************
// ��4����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg4 <= 9'd0;
            sum2_reg3 <= 9'd0;
            sum3_reg2 <= 9'd0;
            sum4_reg1 <= 9'd0;
        end
        else
        begin
            //  ��4����ˮ�߽���4��8λ�͵�3��8λ�Ľ�λλ���мӷ�����
            sum1_reg4 <= sum1_reg3;//���ͽ��л���
            sum2_reg3 <= sum2_reg2;
            sum3_reg2 <= sum3_reg1;
            sum4_reg1 <= sum3_reg1[8] + data_in_a4_reg3 + data_in_b4_reg3;
            data_in_a5_reg4 <= data_in_a5_reg3;//�������4��8λ�ļ������е�4������
            data_in_b5_reg4 <= data_in_b5_reg3;
            data_in_a6_reg4 <= data_in_a6_reg3;
            data_in_b6_reg4 <= data_in_b6_reg3;
            data_in_a7_reg4 <= data_in_a7_reg3;
            data_in_b7_reg4 <= data_in_b7_reg3;
            data_in_a8_reg4 <= data_in_a8_reg3;
            data_in_b8_reg4 <= data_in_b8_reg3;
        end
    end
// ******************************************
// ��5����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg5 <= 9'd0;
            sum2_reg4 <= 9'd0;
            sum3_reg3 <= 9'd0;
            sum4_reg2 <= 9'd0;
            sum5_reg1 <= 9'd0;
        end
        else
        begin
            //  ��5����ˮ�߽���5��8λ�͵�4��8λ�Ľ�λλ���мӷ�����
            sum1_reg5 <= sum1_reg4;//���ͽ��л���
            sum2_reg4 <= sum2_reg3;
            sum3_reg3 <= sum3_reg2;
            sum4_reg2 <= sum4_reg1;
            sum5_reg1 <= sum4_reg1[8] + data_in_a5_reg4 + data_in_b5_reg4;
            data_in_a6_reg5 <= data_in_a6_reg4;//�������3��8λ�ļ������е�5������
            data_in_b6_reg5 <= data_in_b6_reg4;
            data_in_a7_reg5 <= data_in_a7_reg4;
            data_in_b7_reg5 <= data_in_b7_reg4;
            data_in_a8_reg5 <= data_in_a8_reg4;
            data_in_b8_reg5 <= data_in_b8_reg4;
        end
    end
    
// ******************************************
// ��6����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg6 <= 9'd0;
            sum2_reg5 <= 9'd0;
            sum3_reg4 <= 9'd0;
            sum4_reg3 <= 9'd0;
            sum5_reg2 <= 9'd0;
            sum6_reg1 <= 9'd0;
        end
        else
        begin
            //  ��6����ˮ�߽���6��8λ�͵�5��8λ�Ľ�λλ���мӷ�����
            sum1_reg6 <= sum1_reg5;//���ͽ��л���
            sum2_reg5 <= sum2_reg4;
            sum3_reg4 <= sum3_reg3;
            sum4_reg3 <= sum4_reg2;
            sum5_reg2 <= sum5_reg1;
            sum6_reg1 <= sum5_reg1[8] + data_in_a6_reg5 + data_in_b6_reg5;
            data_in_a7_reg6 <= data_in_a7_reg5;//�������2��8λ�ļ������е�6������
            data_in_b7_reg6 <= data_in_b7_reg5;
            data_in_a8_reg6 <= data_in_a8_reg5;
            data_in_b8_reg6 <= data_in_b8_reg5;
        end
    end
// ******************************************
// ��7����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg7 <= 9'd0;
            sum2_reg6 <= 9'd0;
            sum3_reg5 <= 9'd0;
            sum4_reg4 <= 9'd0;
            sum5_reg3 <= 9'd0;
            sum6_reg2 <= 9'd0;
            sum7_reg1 <= 9'd0;
        end
        else
        begin
            //  ��6����ˮ�߽���6��8λ�͵�5��8λ�Ľ�λλ���мӷ�����
            sum1_reg7 <= sum1_reg6;//���ͽ��л���
            sum2_reg6 <= sum2_reg5;
            sum3_reg5 <= sum3_reg4;
            sum4_reg4 <= sum4_reg3;
            sum5_reg3 <= sum5_reg2;
            sum6_reg2 <= sum6_reg1;
            sum7_reg1 <= sum6_reg1[8] + data_in_a7_reg6 + data_in_b7_reg6;
            data_in_a8_reg7 <= data_in_a8_reg6;//�������1��8λ�ļ������е�7������
            data_in_b8_reg7 <= data_in_b8_reg6;
        end
    end
// ******************************************
// ��8����ˮ��
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg8 <= 9'd0;
            sum2_reg7 <= 9'd0;
            sum3_reg6 <= 9'd0;
            sum4_reg5 <= 9'd0;
            sum5_reg4 <= 9'd0;
            sum6_reg3 <= 9'd0;
            sum7_reg2 <= 9'd0;
            sum8_reg1 <= 9'd0;
        end
        else
        begin
            //  ��6����ˮ�߽���6��8λ�͵�5��8λ�Ľ�λλ���мӷ�����
            sum1_reg8 <= sum1_reg7;//���ͽ��л���
            sum2_reg7 <= sum2_reg6;
            sum3_reg6 <= sum3_reg5;
            sum4_reg5 <= sum4_reg4;
            sum5_reg4 <= sum5_reg3;
            sum6_reg3 <= sum6_reg2;
            sum7_reg2 <= sum7_reg1;
            sum8_reg1 <= sum7_reg1[8] + data_in_a8_reg7 + data_in_b8_reg7;
        end
    end
    // ***************������**************************/
    assign sum = {sum8_reg1[7:0],sum7_reg2[7:0],sum6_reg3[7:0],sum5_reg4[7:0],
                  sum4_reg5[7:0],sum3_reg6[7:0],sum2_reg7[7:0],sum1_reg8[7:0]};//�����
    assign c = sum8_reg1[8];//��λλ���
endmodule











