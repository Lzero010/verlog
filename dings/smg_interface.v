module smg_interface
(
 input CLK,
input RSTn,
input [23:0]Number_Sig,
output [7:0]SMG_Data,
output [5:0]Scan_Sig
);
wire [3:0]Number_Data;
smg_control_module U1
(
 .CLK( CLK ),
.RSTn( RSTn ),
.Number_Sig( Number_Sig ), 
.Number_Data( Number_Data ) 
);

 smg_encode_module U2
(
 .CLK( CLK ),
 .RSTn( RSTn ),
 .Number_Data( Number_Data ), 
 .SMG_Data( SMG_Data ) 
);

smg_scan_module U3
(
 .CLK( CLK ),
 .RSTn( RSTn ),
 .Scan_Sig( Scan_Sig ) 
);

endmodule