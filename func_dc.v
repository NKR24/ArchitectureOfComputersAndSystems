`timescale 1ns / 1ps


module func_dc(
    input wire a, b, c, d, e,
    output wire f_funcdc
    );
wire[3 : 0] w0, w1, w2, w3,w4, w5, w6, w7;

dc #(2) dc0(.e(1'b0), .a({a, b}), .fdc(w0));
dc #(2) dc1(.e(w0[0]), .a({b, c}), .fdc(w1));
dc #(2) dc2(.e(w0[1]), .a({b, c}), .fdc(w2));
dc #(2) dc3(.e(w0[2]), .a({d, e}), .fdc(w3));
dc #(2) dc4(.e(w1[0]), .a({d, e}), .fdc(w4));
dc #(2) dc5(.e(w1[1]), .a({d, e}), .fdc(w5));
dc #(2) dc6(.e(w2[2]), .a({d, e}), .fdc(w6));
dc #(2) dc7(.e(w2[3]), .a({d, e}), .fdc(w7));

assign f_funcdc = w4[2] | w5[2] | w5[3] | w6[1] | w6[3] | w7[1] | w7[2] | w3[0] | w3[2] | w3[3] | w0[3];

endmodule
