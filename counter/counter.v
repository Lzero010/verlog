module counter(
input clk,
input rest,
output reg [7:0] count
);
always @(posedge clk,negedge rest)

begin
if(rest == 1'b0)
count <=8'd0;
else
count <= count+8'd1;
end
endmodule
