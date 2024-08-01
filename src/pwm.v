module PWM (
    input wire clk,
    input wire reset,
    input wire [20:0] duty_cycle, // duty cycle = period * duty_cycle / 2097152
    input wire [20:0] period, // clk_freq / pwm_freq = period
    output reg pwm_out
);

reg [31:0] counter;

initial begin
    counter = 0;
    pwm_out = 0;
end

always @(posedge clk) begin
    if (reset) begin
        counter <= 0;
        pwm_out <= 0;
    end else begin
        if(counter < period) begin
            counter <= counter + 1'b1;
        end else begin
            counter <= 0;
        end
    end

    if (counter < duty_cycle) begin
        pwm_out <= 1'b1;
    end else begin
        pwm_out <= 1'b0;
    end
end
    
endmodule
