`timescale 1ns / 1ps

module mdnf(
    input wire [4:0] in,  
    output wire f1
);

wire a = in[4];
wire b = in[3];
wire c = in[2];
wire d = in[1];
wire e = in[0];
assign f1 = (~b && d && ~e) || (a && ~e) || (~b && c && d) || (c && d && ~e) || (b && ~c && e) || (b && ~d && e) || (a && d);

endmodule

