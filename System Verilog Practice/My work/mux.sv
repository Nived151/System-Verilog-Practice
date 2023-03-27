module scale_mux (
    input logic [1:0]in_a,
    input logic [1:0]in_b,
    input logic sel_a,
    output logic [1:0]out
);

timeunit 1ns;
timeprecision 100ps;

always_comb
  case (sel_a)
    1'b1: in_a;
    1'b0: in_b;
    default: out = 'x';
  endcase

endmodule