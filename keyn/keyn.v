module keyn(keyin,led,clk,rest);
input [3:0] keyin;
input rest;
input clk;
output [3:0]led;

reg [19:0]count;
reg [3:0]key_scan;

always @(posedge clk or negedge rest)
begin
if(!rest)
count <= 20'd0;
else if (count == 20'd19_999_999)
begin
key_scan <= keyin;
count <= 20'd0;
end
else
count <= count+20'd1;
end

reg [3:0]key_scan_r;
always @(posedge clk)

key_scan_r <=key_scan;
wire[3:0]flat_key = key_scan_r[3:0] &(~key_scan[3:0]);


reg [3:0] temp;
always @(posedge clk or negedge rest)
begin
if(!rest)
temp <=4'b1111;
else
begin
 if(flat_key[0]) temp[0]<=~temp[0];
 if(flat_key[1]) temp[1]<=~temp[1];
 if(flat_key[2]) temp[2]<=~temp[2];
 if(flat_key[3]) temp[3]<=~temp[3];
 end
 end
 assign led[0]=temp[0];
 assign led[1]=temp[1];
 assign led[2]=temp[2];
 assign led[3]=temp[3];
 endmodule
 




