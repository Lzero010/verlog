module digit_7seg
  (
    input wire [3:0]datain,
    output reg [6:0]Y
  );
  always@(datain)
  begin
  case(datain)
  4'b0000: Y = 7'b1000000;
  4'h0001: Y = 7'b1111001;
  4'b0010: Y = 7'b0100100; 	
  4'b0011: Y = 7'b0110000; 	
  4'b0100: Y = 7'b0011001; 	
  4'b0101: Y = 7'b0010010; 	
  4'b0110: Y = 7'b0000010; 	
  4'b0111: Y = 7'b1111000; 	
  4'b1000: Y = 7'b0000000; 	
  4'b1001: Y = 7'b0011000;
  4'b1010: Y = 7'b0001000;
  4'b1011: Y = 7'b0000011;
  4'b1100: Y = 7'b1000110;
  4'b1101: Y = 7'b0100001;
  4'b1110: Y = 7'b0000110;
  default: Y = 7'b0001110;
  endcase
  end
endmodule      