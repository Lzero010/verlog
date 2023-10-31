module led(clk,ledn,rest);
input clk;
input rest;
output [3:0]ledn;

reg [31:0] timer;
reg [3:0] ledn;

always @(posedge clk or negedge rest)
begin
if(!rest)
timer <= 0;
else if(timer==32'd199_999_999)
timer <= 0;
else
timer <=timer+1'b1;
end
always @(posedge clk or negedge rest)
begin
if(!rest)
   ledn <= 4'b1111;
else if(timer ==49_999_999)
	ledn <= 4'b1110;
else if(timer ==99_999_999)
	ledn <= 4'b1101;
else if(timer ==149_999_999)
	ledn <= 4'b1011;
else if(timer ==199_999_999)
	ledn <= 4'b0111;
end

endmodule
