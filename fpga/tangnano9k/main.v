module top (
    input  wire clk, // 27 mhz
    input  wire reset,
    input  wire rx,
    input  wire [1:0]btn,
    output wire tx,
    output wire [5:0]led,
    output wire pwm
);

wire clk_out;
reg reset_bousing;

Gowin_rPLL_50 your_instance_name(
    .clkout(clk_out), //output clkout
    .clkin(clk) //input clkin
);

Player #(
    .CLK_FREQ(50000000),
    .MEMORY_FILE("../../music/tetris.hex"),
    .MEMORY_SIZE(4096)
) Player_inst (
    .clk(clk_out),
    .reset(reset_bousing),
    .pwm_out(pwm)
);

always @(posedge clk_out) begin
    reset_bousing <= ~btn[0];
end

endmodule
