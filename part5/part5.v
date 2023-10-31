module part5
  (
    input wire [15:0]SW,
    output wire [6:0]HEX7,HEX6,HEX5,HEX4,HEX2,HEX1,HEX0
  );
  
  wire [3:0]S2,S1,S0;
  
  bcdadder u1(.A1(SW[15:12]),.A0(SW[11:8]),.B1(SW[7:4]),.B0(SW[3:0]),.S2(S2),.S1(S1),.S0(S0));
  digit_7seg u2(.datain(S0),.Y(HEX0));
  digit_7seg u3(.datain(S1),.Y(HEX1));
  digit_7seg u4(.datain(S2),.Y(HEX2));

  digit_7seg u5(.datain(SW[15:12]),.Y(HEX7));
  digit_7seg u6(.datain(SW[11:8]),.Y(HEX6));

  digit_7seg u7(.datain(SW[7:4]),.Y(HEX5));
  digit_7seg u8(.datain(SW[3:0]),.Y(HEX4));

endmodule