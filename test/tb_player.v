module tb_player();

reg clk, reset;
wire pwm;

always #1 clk = ~clk;

Player #(
    .CLK_FREQ(50000000),
    .MEMORY_FILE("music/tetris.hex"),
    .MEMORY_SIZE(4096)
) Player_inst (
    .clk(clk),
    .reset(reset),
    .pwm_out(pwm)
);

initial begin
    $dumpfile("build/tb_player.vcd");
    $dumpvars(0, tb_player);

    clk = 0;
    reset = 1'b1;

    #10 reset = 1'b0;

    #1000 $finish;
end

endmodule
