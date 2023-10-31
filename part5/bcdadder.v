module bcdadder
  (
    input wire[3:0]A1,A0,
    input wire[3:0]B1,B0,
    output wire [3:0]S2,S1,S0
  );
  wire [3:0]cout0,cout1;
  
  bcdadder_4 u1(.A(A0),.B(B0),.cin(1'b0),.s1(cout0),.s0(S0));
  bcdadder_4 u2(.A(A1),.B(B1),.cin(cout0[0]),.s1(cout1),.s0(S1));
  
  assign S2 = cout1;
endmodule

module bcdadder_tb();
	reg [3:0]A0,A1,B0,B1;
	wire [3:0]S0,S1,S2;
	initial begin
				A1=4'b0000;A0=4'b0001;B1=4'b0010;B0=4'b0011;
		#10	A1=4'b0100;A0=4'b0101;B1=4'b0110;B0=4'b0111;
		#10	A1=4'b1000;A0=4'b1001;B1=4'b0000;B0=4'b0001;
		#10	$stop();
	end
	bcdadder u0
  (.A1(A1), .A0(A0),
   .B1(B1), .B0(B0),
    .S2(S2), .S1(S1), .S0(S0) );
	
endmodule
