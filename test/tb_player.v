module tb_player();

reg clk;

always #1 clk = ~clk;

initial begin
    $dumpfile("build/tb_player.vcd");
    $dumpvars(0, tb_player);

    clk = 0;

    #1000 $finish;
end

endmodule
