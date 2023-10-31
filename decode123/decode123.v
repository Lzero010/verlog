module decode123(din,den,reset,dout);
input [2:0] din;
input reset;
output [7:0] den;
output [7:0] dout;
reg [7:0]dout;
reg [7:0]den;
always @(reset or din)begin
if(!reset)
dout = 8'b0000_0000;
else
case(din)
3'b000:dout=8'b1111_1000;
3'b001:dout=8'b0011_0000;
3'b010:dout=8'b1001_0010;
3'b011:dout=8'b0111_1001;
3'b100:dout=8'b0000_0010;
3'b101:dout=8'b1010_0100;
3'b110:dout=8'b1001_1001;
3'b111:dout=8'b1100_0000;
endcase
den=2'b0000_0000;
end
endmodule
