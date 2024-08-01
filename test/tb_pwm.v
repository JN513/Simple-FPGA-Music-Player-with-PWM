module tb_pwm();

reg clk;

always #1 clk = ~clk;


initial begin
    $dumpfile("build/tb_pwm.vcd");
    $dumpvars(0, tb_pwm);

    clk = 0;

    #1000 $finish;
end

endmodule
