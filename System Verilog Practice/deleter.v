module scale_mux (
    input logic [1:0]in_a,
    input logic [1:0]in_b,
    input logic sel_a,
    output logic [1:0]out
);
timescale 1ns;
timeprecision 100ps;

always @(sel_a )begin
  case:
  default 
end//_comb

endmodule