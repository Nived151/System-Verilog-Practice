module register(
input logic [7:0] data,
input logic enable,
input logic clk,
input logic rst_,
output logic [7:0] out
);
timeunit 1ns;
timeprecision 100ps;
always_ff @ (posedge clk)
if(!rst)
    out <=0;
else if(enable)
    out <= data;

endmodule