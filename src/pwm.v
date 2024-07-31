module PWM #(
    parameter CLK_FREQ = 100000000
) (
    input wire clk,
    input wire rst,
    input wire [15:0] duty_cycle, // porcentagem do nivel alto da onda
    input wire [15:0] period, // periodo da onda
    output wire pwm
);
    
endmodule