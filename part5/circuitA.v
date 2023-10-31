module circuitA
  (
    input wire[3:0] ain,
    output  wire [3:0]aout    
  );
  
  assign aout = ain + 3'b110;

endmodule
