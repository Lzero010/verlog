module decode(out,in);
output[3:0] out;
input[1:0] in;
reg[3:0] out;
always @(in)
begin
case(in)
2'd0:out=4'b1110;
2'd1:out=4'b1101;
2'd2:out=4'b1011;
2'd3:out=4'b0111;

   endcase
end
endmodule