module fulladder_1
  (
    input wire a,b,cin,
    output wire sum,co
  );
  assign {co,sum}= {1'b0, a}+{1'b0, b}+{1'b0, cin};
endmodule