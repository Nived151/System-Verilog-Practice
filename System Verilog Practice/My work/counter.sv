module(
    input logic [4:0]data,
    input logic load,
    input logic enable,
    input logic clk,
    input logic rst_,
    output logic [4:0]count
);
timeunit 1ns;
timeprecision 100ps;

always_ff @(posedge clk) begin
    if(!rst_)
        count <= 5'd0;
    else if (load)
        count <= data;
    else if (enable)
        count <= count + 1'b1;
end


endmodule