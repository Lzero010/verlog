/**************************************版权申明************************************
** 文件名称：        adder_64bit.v
** 最新版本：        v1.0
** 功能描述：        64位8级流水线加法器顶层模块
***********************************************************************************/
module adder_64bit(
           clk,
           reset_n,
           data_in_a,
           data_in_b,
           sum,
           c
           );
input           clk;            //时钟信号
input           reset_n;        //复位信号
input   [63:0]  data_in_a;      //输入数1
input   [63:0]  data_in_b;      //输入数2
output  [63:0]  sum;            //和输出
output          c;              //进位位输出
// ***********************************************************************************/
// ****************和寄存器**************************
reg     [8:0]   sum1_reg1;      //第1个8位的和寄存器1
reg     [8:0]   sum1_reg2;      //第1个8位的和寄存器2
reg     [8:0]   sum1_reg3;      //第1个8位的和寄存器3
reg     [8:0]   sum1_reg4;      //第1个8位的和寄存器4
reg     [8:0]   sum1_reg5;      //第1个8位的和寄存器5
reg     [8:0]   sum1_reg6;      //第1个8位的和寄存器6
reg     [8:0]   sum1_reg7;      //第1个8位的和寄存器7
reg     [8:0]   sum1_reg8;      //第1个8位的和寄存器8

reg     [8:0]   sum2_reg1;      //第2个8位的和寄存器1
reg     [8:0]   sum2_reg2;      //第2个8位的和寄存器2
reg     [8:0]   sum2_reg3;      //第2个8位的和寄存器3
reg     [8:0]   sum2_reg4;      //第2个8位的和寄存器4
reg     [8:0]   sum2_reg5;      //第2个8位的和寄存器5
reg     [8:0]   sum2_reg6;      //第2个8位的和寄存器6
reg     [8:0]   sum2_reg7;      //第2个8位的和寄存器7

reg     [8:0]   sum3_reg1;      //第3个8位的和寄存器1
reg     [8:0]   sum3_reg2;      //第3个8位的和寄存器2
reg     [8:0]   sum3_reg3;      //第3个8位的和寄存器3
reg     [8:0]   sum3_reg4;      //第3个8位的和寄存器4
reg     [8:0]   sum3_reg5;      //第3个8位的和寄存器5
reg     [8:0]   sum3_reg6;      //第3个8位的和寄存器6

reg     [8:0]   sum4_reg1;      //第4个8位的和寄存器1
reg     [8:0]   sum4_reg2;      //第4个8位的和寄存器2
reg     [8:0]   sum4_reg3;      //第4个8位的和寄存器3
reg     [8:0]   sum4_reg4;      //第4个8位的和寄存器4
reg     [8:0]   sum4_reg5;      //第4个8位的和寄存器5

reg     [8:0]   sum5_reg1;      //第5个8位的和寄存器1
reg     [8:0]   sum5_reg2;      //第5个8位的和寄存器2
reg     [8:0]   sum5_reg3;      //第5个8位的和寄存器3
reg     [8:0]   sum5_reg4;      //第5个8位的和寄存器4

reg     [8:0]   sum6_reg1;      //第6个8位的和寄存器1
reg     [8:0]   sum6_reg2;      //第6个8位的和寄存器2
reg     [8:0]   sum6_reg3;      //第6个8位的和寄存器3

reg     [8:0]   sum7_reg1;      //第7个8位的和寄存器1
reg     [8:0]   sum7_reg2;      //第7个8位的和寄存器2

reg     [8:0]   sum8_reg1;      //第8个8位的和寄存器1
// ****************加数寄存器**************************
reg     [7:0]   data_in_a2_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_b2_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_a3_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_b3_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_a4_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_b4_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_a5_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_b5_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_a6_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_b6_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_a7_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_b7_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_a8_reg1;//加数第1级流水线寄存器
reg     [7:0]   data_in_b8_reg1;//加数第1级流水线寄存器

reg     [7:0]   data_in_a3_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_b3_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_a4_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_b4_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_a5_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_b5_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_a6_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_b6_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_a7_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_b7_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_a8_reg2;//加数第2级流水线寄存器
reg     [7:0]   data_in_b8_reg2;//加数第2级流水线寄存器

reg     [7:0]   data_in_a4_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_b4_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_a5_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_b5_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_a6_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_b6_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_a7_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_b7_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_a8_reg3;//加数第3级流水线寄存器
reg     [7:0]   data_in_b8_reg3;//加数第3级流水线寄存器

reg     [7:0]   data_in_a5_reg4;//加数第4级流水线寄存器
reg     [7:0]   data_in_b5_reg4;//加数第4级流水线寄存器
reg     [7:0]   data_in_a6_reg4;//加数第4级流水线寄存器
reg     [7:0]   data_in_b6_reg4;//加数第4级流水线寄存器
reg     [7:0]   data_in_a7_reg4;//加数第4级流水线寄存器
reg     [7:0]   data_in_b7_reg4;//加数第4级流水线寄存器
reg     [7:0]   data_in_a8_reg4;//加数第4级流水线寄存器
reg     [7:0]   data_in_b8_reg4;//加数第4级流水线寄存器

reg     [7:0]   data_in_a6_reg5;//加数第5级流水线寄存器
reg     [7:0]   data_in_b6_reg5;//加数第5级流水线寄存器
reg     [7:0]   data_in_a7_reg5;//加数第5级流水线寄存器
reg     [7:0]   data_in_b7_reg5;//加数第5级流水线寄存器
reg     [7:0]   data_in_a8_reg5;//加数第5级流水线寄存器
reg     [7:0]   data_in_b8_reg5;//加数第5级流水线寄存器

reg     [7:0]   data_in_a7_reg6;//加数第6级流水线寄存器
reg     [7:0]   data_in_b7_reg6;//加数第6级流水线寄存器
reg     [7:0]   data_in_a8_reg6;//加数第6级流水线寄存器
reg     [7:0]   data_in_b8_reg6;//加数第6级流水线寄存器

reg     [7:0]   data_in_a8_reg7;//加数第7级流水线寄存器
reg     [7:0]   data_in_b8_reg7;//加数第7级流水线寄存器
// ***********************************************************************************/
// ******************************************
    // 第1级流水线
// *****************************************/
    always @(posedge clk or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            sum1_reg1 <= 9'd0;
        end
        else
        begin
            //  第1级流水线将第1个8位进行加法运算
            sum1_reg1 <= data_in_a[7:0] + data_in_b[7:0];
            data_in_a2_reg1 <= data_in_a[15:8];//将输入的7个8位的加数进行第1级缓存
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
    // 第2级流水线
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
            //  第2级流水线将第2个8位和第1个8位的进位位进行加法运算
            sum1_reg2 <= sum1_reg1;//将和进行缓存
            sum2_reg1 <= data_in_a2_reg1 + data_in_b2_reg1 + sum1_reg1[8];
            data_in_a3_reg2 <= data_in_a3_reg1;//将输入的6个8位的加数进行第2级缓存
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
// 第3级流水线
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
            //  第3级流水线将第3个8位和第2个8位的进位位进行加法运算
            sum1_reg3 <= sum1_reg2;//将和进行缓存
            sum2_reg2 <= sum2_reg1;
            sum3_reg1 <= sum2_reg1[8] + data_in_a3_reg2 + data_in_b3_reg2;
            data_in_a4_reg3 <= data_in_a4_reg2;//将输入的5个8位的加数进行第3级缓存
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
// 第4级流水线
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
            //  第4级流水线将第4个8位和第3个8位的进位位进行加法运算
            sum1_reg4 <= sum1_reg3;//将和进行缓存
            sum2_reg3 <= sum2_reg2;
            sum3_reg2 <= sum3_reg1;
            sum4_reg1 <= sum3_reg1[8] + data_in_a4_reg3 + data_in_b4_reg3;
            data_in_a5_reg4 <= data_in_a5_reg3;//将输入的4个8位的加数进行第4级缓存
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
// 第5级流水线
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
            //  第5级流水线将第5个8位和第4个8位的进位位进行加法运算
            sum1_reg5 <= sum1_reg4;//将和进行缓存
            sum2_reg4 <= sum2_reg3;
            sum3_reg3 <= sum3_reg2;
            sum4_reg2 <= sum4_reg1;
            sum5_reg1 <= sum4_reg1[8] + data_in_a5_reg4 + data_in_b5_reg4;
            data_in_a6_reg5 <= data_in_a6_reg4;//将输入的3个8位的加数进行第5级缓存
            data_in_b6_reg5 <= data_in_b6_reg4;
            data_in_a7_reg5 <= data_in_a7_reg4;
            data_in_b7_reg5 <= data_in_b7_reg4;
            data_in_a8_reg5 <= data_in_a8_reg4;
            data_in_b8_reg5 <= data_in_b8_reg4;
        end
    end
    
// ******************************************
// 第6级流水线
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
            //  第6级流水线将第6个8位和第5个8位的进位位进行加法运算
            sum1_reg6 <= sum1_reg5;//将和进行缓存
            sum2_reg5 <= sum2_reg4;
            sum3_reg4 <= sum3_reg3;
            sum4_reg3 <= sum4_reg2;
            sum5_reg2 <= sum5_reg1;
            sum6_reg1 <= sum5_reg1[8] + data_in_a6_reg5 + data_in_b6_reg5;
            data_in_a7_reg6 <= data_in_a7_reg5;//将输入的2个8位的加数进行第6级缓存
            data_in_b7_reg6 <= data_in_b7_reg5;
            data_in_a8_reg6 <= data_in_a8_reg5;
            data_in_b8_reg6 <= data_in_b8_reg5;
        end
    end
// ******************************************
// 第7级流水线
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
            //  第6级流水线将第6个8位和第5个8位的进位位进行加法运算
            sum1_reg7 <= sum1_reg6;//将和进行缓存
            sum2_reg6 <= sum2_reg5;
            sum3_reg5 <= sum3_reg4;
            sum4_reg4 <= sum4_reg3;
            sum5_reg3 <= sum5_reg2;
            sum6_reg2 <= sum6_reg1;
            sum7_reg1 <= sum6_reg1[8] + data_in_a7_reg6 + data_in_b7_reg6;
            data_in_a8_reg7 <= data_in_a8_reg6;//将输入的1个8位的加数进行第7级缓存
            data_in_b8_reg7 <= data_in_b8_reg6;
        end
    end
// ******************************************
// 第8级流水线
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
            //  第6级流水线将第6个8位和第5个8位的进位位进行加法运算
            sum1_reg8 <= sum1_reg7;//将和进行缓存
            sum2_reg7 <= sum2_reg6;
            sum3_reg6 <= sum3_reg5;
            sum4_reg5 <= sum4_reg4;
            sum5_reg4 <= sum5_reg3;
            sum6_reg3 <= sum6_reg2;
            sum7_reg2 <= sum7_reg1;
            sum8_reg1 <= sum7_reg1[8] + data_in_a8_reg7 + data_in_b8_reg7;
        end
    end
    // ***************结果输出**************************/
    assign sum = {sum8_reg1[7:0],sum7_reg2[7:0],sum6_reg3[7:0],sum5_reg4[7:0],
                  sum4_reg5[7:0],sum3_reg6[7:0],sum2_reg7[7:0],sum1_reg8[7:0]};//和输出
    assign c = sum8_reg1[8];//进位位输出
endmodule











