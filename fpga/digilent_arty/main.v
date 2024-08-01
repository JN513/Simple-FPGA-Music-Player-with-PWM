module top (
    input wire clk,
    input wire reset,
    output wire [3:0]led,
    output wire [13:0]ck_io
);

reg clk_50mhz, reset_bousing;

initial begin
    clk_50mhz = 1'b0;
    reset_bousing = 1'b0;
end

Player #(
    .CLK_FREQ(50000000),
    .MEMORY_FILE("../../music/tetris.hex"),
    .MEMORY_SIZE(4096)
) Player_inst (
    .clk(clk_50mhz),
    .reset(reset_bousing),
    .pwm_out(ck_io[0])
);

always @(posedge clk) begin
    clk_50mhz <= ~clk_50mhz;
    reset_bousing <= reset;
end

endmodule
