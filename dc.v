`timescale 1ns / 1ps

module dc # (width = 2)
(
    input e,
    input [width - 1 :0] a,
    output [2**(width) - 1 :0] fdc
    );
assign fdc = !e ? 1'b0 : 1'b1 << a;
endmodule
