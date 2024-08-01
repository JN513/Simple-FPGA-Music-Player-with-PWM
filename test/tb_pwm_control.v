module tb_pwm_control();

reg [15:0] freq;
reg clk;

always #1 clk = ~clk;

PWM_Control u1(
    .freq(freq),
    .duty_cycle(),
    .period()
);


initial begin
    $dumpfile("build/tb_pwm_control.vcd");
    $dumpvars(0, tb_pwm_control);

    clk = 0;

    freq = 0;

    #10 freq = 31;

    #10 freq = 33;

    #10 freq = 35;

    #10 freq = 37;

    #10 freq = 39;

    #10 freq = 41;

    #10 freq = 44;

    #10 freq = 46;

    #10 freq = 49;

    #10 freq = 52;

    #10 freq = 55;

    #10 freq = 58;

    #10 $finish;
end

endmodule
