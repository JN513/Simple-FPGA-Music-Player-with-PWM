module top (
    input wire clk, // 50mhz clock
    input wire [3:0] btn,
    input wire [9:0] sw,
    output wire [9:0] led,
    output wire pwm_out
);

reg reset_bousing;

initial begin
    reset_bousing = 1'b0;
end

Player #(
    .CLK_FREQ(50000000),
    .MEMORY_FILE("../../music/takeonme.hex"),
    .MEMORY_SIZE(4096)
) Player_inst (
    .clk(clk),
    .reset(reset_bousing),
    .pwm_out(pwm_out)
);

always @(posedge clk) begin
    reset_bousing <= ~btn[0];
end

    
endmodule
