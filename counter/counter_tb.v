module counter_tb;
reg  clk;
reg rest;
wire [7:0] count;

counter inst(
.clk(clk),
.rest(rest),
.count(count)
);
initial clk=1;
always #10 clk =!clk;
initial begin
rest = 0;
#200.1
rest=1;
#6000
$stop;
end


endmodule
