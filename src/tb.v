`default_nettype none
`timescale 1ns/1ps

module tb (
      input [3:0] code,
      input RST,
      input masterRST,
      input CLK,
      output [4:0] OUT
    );

    initial begin
        $dumpfile ("tb.vcd");
        $dumpvars (0, tb);
        #1;
    end

      wire [7:0] inputs = {1'b0,CLK,masterRST,RST,code};
      assign OUT = outputs[4:0];


    BenAtUvu_combo BenAtUvu_combo (
          .io_in (inputs),
          .io_out (outputs)
          

    );

endmodule
