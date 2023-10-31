module comparator
  (
    input wire[4:0]a,
    output reg y
  );
  always@(*)
  begin
    if(a>9)
      y = 1'b1;
    else
      y = 1'b0;
  end
endmodule
