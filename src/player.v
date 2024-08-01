module Player #(
    parameter CLK_FREQ = 50000000,
    parameter MEMORY_FILE = "",
    parameter MEMORY_SIZE = 4096
) (
    input wire clk,
    input wire reset,
    output wire pwm_out
);

localparam MS = CLK_FREQ / 1000;
localparam INIT         = 3'b000;
localparam LOAD_HEADER  = 3'b001;
localparam LOAD_NOTE    = 3'b010;
localparam DECODE_NOTE  = 3'b011;
localparam EXECUTE_NOTE = 3'b100;
localparam DELAY        = 3'b101;
localparam IDLE         = 3'b110;

reg internal_reset;
reg [2:0] state;
reg [15:0] freq;
reg [20:0] duty_cycle, period;
reg [31:0] address, size, buffer, delay_counter, delay;

wire [20:0] duty_cycle_out, period_out;

reg [31:0] memory [(MEMORY_SIZE/4)-1: 0];

wire pwm_reset;

assign pwm_reset = reset | internal_reset;

initial begin
    if(MEMORY_FILE != "") begin
        $readmemh(MEMORY_FILE, memory, 0, (MEMORY_SIZE/4) - 1);
    end

    freq = 0;
    duty_cycle = 0;
    period = 0;
    internal_reset = 1'b0;
    state = INIT;
    address = 0;
    size = 0;
    delay_counter = 0;
end

always @(posedge clk) begin
    internal_reset <= 1'b0;

    if(reset) begin
        state <= INIT;
    end else begin
        case (state)
            INIT: begin
                internal_reset <= 1'b1;
                state <= LOAD_HEADER;
                delay_counter <= 0;
                address <= 0;
            end

            LOAD_HEADER: begin
                size <= memory[address];
                address <= address + 1'b1;
                state <= LOAD_NOTE;
            end

            LOAD_NOTE: begin
                if(address == size) begin
                    state <= IDLE;
                end else begin
                    buffer <= memory[address];
                    address <= address + 1'b1;
                    state <= DECODE_NOTE;
                end
            end

            DECODE_NOTE: begin
                state <= EXECUTE_NOTE;
                freq <= buffer[20:0];
                delay <= {21'h00000 ,buffer[31:21]};
            end

            EXECUTE_NOTE: begin
                state <= DELAY;
                period <= period_out;
                duty_cycle <= duty_cycle_out;
                internal_reset <= 1'b1;
                delay <= delay * MS;
            end

            DELAY: begin
                if(delay_counter == delay) begin
                    delay_counter <= 0;
                    state <= LOAD_NOTE;
                end else begin
                    delay_counter <= delay_counter + 1'b1;
                end
            end

            IDLE: begin
                duty_cycle <= 0;
                period <= 0;
                freq <= 0;
                state <= IDLE;
            end

            default: begin
                state <= IDLE;
            end
        endcase
    end
end

PWM U1(
    .clk(clk),
    .reset(pwm_reset),
    .duty_cycle(duty_cycle),
    .period(period),
    .pwm_out(pwm_out)
);

PWM_Control U2(
    .freq(freq),
    .duty_cycle(duty_cycle_out),
    .period(period_out)
);
    
endmodule
