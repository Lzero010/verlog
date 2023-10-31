module ripple_fulladder_4
  (
    input wire[3:0]a,b,
    input wire cin,
    output wire[3:0]sum,
    output wire co
    
  );
  wire c1,c2,c3;
  
  fulladder_1 u1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.co(c1));
  fulladder_1 u2(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.co(c2));
  fulladder_1 u3(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.co(c3));
  fulladder_1 u4(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.co(co));
  
endmodule



/* 正确的 */
module ripple_fulladder_4_tb();
	reg [3:0]a,b;
	reg cin;
	wire [3:0]sum;
	wire co;
	
	initial begin
				a=4'b0001;b=4'b1011;cin=1'b1;
		#10	a=4'b0100;b=4'b0111;cin=1'b1;
		#10	a=4'b1000;b=4'b0101;cin=1'b1;
		#10	$stop();
	end
	ripple_fulladder_4 u0
  (
    .a(a), .b(b),
    .cin(cin),
    .sum(sum),
    .co(co)   
  );
	
endmodule
