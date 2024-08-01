module tb_pwm();

reg clk, reset;

reg [20:0] duty_cycle, period;

always #1 clk = ~clk;

PWM u1(
    .clk(clk),
    .reset(reset),
    .duty_cycle(duty_cycle),
    .period(period),
    .pwm_out()
);

initial begin
    $dumpfile("build/tb_pwm.vcd");
    $dumpvars(0, tb_pwm);

    clk = 0;
    reset = 0;
    duty_cycle = 0;
    period = 0;

    #4 reset = 1;

    period = 2;
    duty_cycle = 1;

    #10 reset = 0;

    #20

    period = 4;
    duty_cycle = 2;
    reset = 1;

    #10 reset = 0;
    
    #20 $finish;
end

endmodule
