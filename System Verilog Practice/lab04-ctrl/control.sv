module control  (
                output logic      load_ac ,
                output logic      mem_rd  ,
                output logic      mem_wr  ,
                output logic      inc_pc  ,
                output logic      load_pc ,
                output logic      load_ir ,
                output logic      halt    ,
                input  opcode_t opcode  , // opcode type name must be opcode_t
                input             zero    ,
                input             clk     ,
                input             rst_   
                );
// SystemVerilog: time units and time precision specification
timeunit 1ns;
timeprecision 100ps;


always_ff @(posedge clk or negedge rst_)
  if (!rst_)
     < add code for initial state>
  else
     < add code for next state>

<add code for output decode>

endmodule
