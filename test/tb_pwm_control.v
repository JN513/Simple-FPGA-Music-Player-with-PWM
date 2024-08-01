module tb_pwm_control();

reg clk;

always #1 clk = ~clk;


initial begin
    $dumpfile("build/tb_pwm_control.vcd");
    $dumpvars(0, tb_pwm_control);

    clk = 0;

    #1000 $finish;
end

endmodule
