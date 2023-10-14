`timescale 1ns / 1ps

module sdnf(
    input wire [4:0] in,
    output wire f
);

wire a = in[4];
wire b = in[3];
wire c = in[2];
wire d = in[1];
wire e = in[0];
assign f = (~a && ~b && ~c && d && ~e) || (~a && ~b && c && d && ~e) ||
           (~a && ~b && c && d && e) || (~a && b && ~c && ~d && e) ||
           (~a && b && ~c && d && e) || (~a && b && c && ~d && e) ||
           (~a && b && c && d && ~e) || (a && ~b && ~c && ~d && ~e)||
           (a && ~b && ~c && d && ~e) || (a && ~b && ~c && d && e) ||
           (a && ~b && c && ~d && ~e) || (a && ~b && c && d && ~e) ||
           (a && ~b && c && d && e) || (a && b && ~c && ~d && ~e) ||
           (a && b && ~c && ~d && e) || (a && b && ~c && d && ~e) ||
           (a && b && ~c && d && e) || (a && b && c && ~d && ~e) ||
           (a && b && c && ~d && e) || (a && b && c && d && ~e) ||
           (a && b && c && d && e);
endmodule

