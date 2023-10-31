module clk2hz(clk,rest,clkout);
input clk;
input rest;
output clkout;

reg [31:0]timer;
reg clkout;


always @(posedge clk or negedge rest)
begin
if(!rest)
timer <= 0;
else if(timer == 32'd49_999_999)
timer <= 0;
else
timer <= timer+1'b1;
end

always @(posedge clk or negedge rest)
begin
if(!rest)
clkout <= 0;
else if(timer == 32'd24_999_999)
clkout<=!clkout;
end
endmodule

