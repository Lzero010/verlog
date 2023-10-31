module CLK1HZ(clk,rst_n,clkout);
input clk;
input rst_n;
output clkout;

reg [31:0] timer;
reg clkout;

always @(posedge clk or negedge rst_n)
begin
if(!rst_n)
timer <= 0;
else if (timer ==32'd49_999_999)
begin
timer <= 0;
clkout <= 1;
end
else
begin
timer = timer+1'b1;
clkout = 0;
end
end
endmodule

