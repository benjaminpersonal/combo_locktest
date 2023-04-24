`default_nettype none
`timescale 1ns/1ps

module tb (
      input [7:0] io_in,
  output [7:0] io_out
    );

    initial begin
        $dumpfile ("tb.vcd");
        $dumpvars (0, tb);
        #1;
    end

    wire [7:0] inputs;
    wire [7:0] outputs;

    BenAtUvu_combo BenAtUvu_combo (
        .io_in (inputs),
        .io_out (outputs)
    );

endmodule
