module testbench();

reg [5:0] args;
reg clk;
wire res, res1;
reg [0:31] reference_reg, error_reg, error_reg1;
initial
begin
    reference_reg = 32'h2356BBFF;
    args = 6'b000000;
    clk = 0;
    error_reg = 0;
    error_reg1 = 0;
end

always #10 clk = ~clk;

always@(posedge clk)
begin
    if(args == 6'd32)
        $finish;
    error_reg[args] = res == reference_reg[args]; //Вместо побитовой эквивалетности можно сделать приравнивание
    error_reg1[args] = res1 == reference_reg[args]; //Вместо побитовой эквивалетности можно сделать приравнивание
end

always@(posedge clk)
begin
    args = args + 1;
end

sdnf mod_f (.in(args[4:0]), .f(res));
mdnf mod_f1 (.in(args[4:0]), .f1(res1));

endmodule

