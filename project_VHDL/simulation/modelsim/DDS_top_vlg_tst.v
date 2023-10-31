`timescale 1 ns/ 10 ps
module DDS_top_vlg_tst();
// constants                                           
// general purpose registers
// test vector input registers
reg clk;
// wires                                               
wire [9:0] y;

// assign statements (if any)                          
DDS_top i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.y(y)
);
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
    clk<=1'b0;                                                   
// --> end                                             
$display("Running testbench");                       
end                                                    
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          
    #1    clk<=~clk;                                                                                                
// --> end                                             
end                                                    
endmodule

