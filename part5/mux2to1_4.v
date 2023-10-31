module mux2to1_4
  (
    input wire [3:0]a,b,
    input wire sel,
    output wire [3:0]y
  );
  
  assign y = (sel==1'b0)?(a):(b);

endmodule