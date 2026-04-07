module uart_tx(
    input clk,            // System Clock
    input reset,          // Reset signal
    input [7:0] data_in,  // 8-bit Data to transmit
    input tx_start,       // Trigger to start sending
    output reg tx_out,    // Serial output wire
    output reg busy       // High when busy transmitting
);

    // Define States
    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter DATA  = 2'b10;
    parameter STOP  = 2'b11;

    reg [1:0] state;
    reg [2:0] bit_index; // To track 8 bits (0 to 7)
    reg [7:0] shift_reg; // Internal buffer for data

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            tx_out <= 1'b1; // Line is HIGH when idle
            busy <= 0;
        end else begin
            case (state)
                IDLE: begin
                    tx_out <= 1'b1;
                    busy <= 0;
                    if (tx_start) begin
                        shift_reg <= data_in;
                        state <= START;
                        busy <= 1;
                    end
                end

                START: begin
                    tx_out <= 1'b0; // Pull line LOW for Start Bit
                    state <= DATA;
                    bit_index <= 0;
                end

                DATA: begin
                    tx_out <= shift_reg[bit_index]; // Send bit by bit
                    if (bit_index == 7)
                        state <= STOP;
                    else
                        bit_index <= bit_index + 1;
                end

                STOP: begin
                    tx_out <= 1'b1; // Pull line HIGH for Stop Bit
                    state <= IDLE;
                end
            endcase
        end
    end
endmodule