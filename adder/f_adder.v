module f_adder(A,B,C,CO,SU);
input A,B,C;
output CO,SU;
wire net1,net2,net3;
h_adder U1(A,B,net1,net2);
h_adder U2(.a(net1),.b(C),.so(SU),.co(net3));//不规则命名
    or U3(CO,net2,net3);
endmodule 