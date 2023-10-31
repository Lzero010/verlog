module bcdadder_4
  (
    input wire[3:0]A,B,
    input wire cin,
    output wire[3:0]s1, s0,
	 
	 output [3:0] A_B,
	 output [3:0]a_out
  );
  wire [3:0]sum;
  wire cout,sel;
  
  wire [3:0]aout;
  
  ripple_fulladder_4 u1(.a(A),.b(B),.cin(cin),.sum(sum),.co(cout));	//正确
  comparator u2(.a({cout,sum}),.y(sel));	
  circuitA u3(.ain(sum),.aout(aout));		//正确
  mux2to1_4 u4(.a(sum),.b(aout),.sel(sel),.y(s0));
  
  assign s1={3'b000,sel};
  
  assign A_B = sum;
  assign a_out = aout;
endmodule
  
  
 /* 正确的 */
 module bcdadder_4_tb();
	reg [3:0]A,B;
	wire [3:0]S0,S1;
	reg cin;
	
	wire [3:0] A_B, a_out;
	
	initial begin
				A=4'b0001;B=4'b1011;cin=1'b1;
		#10	A=4'b0100;B=4'b0111;cin=1'b1;
		#10	A=4'b1000;B=4'b0101;cin=1'b1;
		#10	$stop();
	end
	
	bcdadder_4 u0
  (.A(A), 
   .B(B), 
   .s1(S1), .s0(S0), .cin(cin),
	.A_B(A_B),
	.a_out(a_out)
	);
	
endmodule
