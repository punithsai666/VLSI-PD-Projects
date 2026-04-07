module uart_tx_tb;
    reg clk, reset, tx_start;
    reg [7:0] data_in;
    wire tx_out, busy;

    // Instantiate the design
    uart_tx uut (clk, reset, data_in, tx_start, tx_out, busy);

    // Generate Clock (10ns period)
    always #5 clk = ~clk;

    initial begin
        // Setup Waveform Dump
        $dumpfile("uart_test.vcd");
        $dumpvars(0, uart_tx_tb);

        // Initialize signals
        clk = 0; reset = 1; tx_start = 0; data_in = 8'h00;
        #15 reset = 0; // Release reset

        // Start Transmission of 8'h41 (Binary: 01000001)
        #10 data_in = 8'h41; tx_start = 1;
        #10 tx_start = 0;

        // Wait for it to finish
        wait(!busy);
        #50 $display("UART Simulation Complete!");
        $finish;
    end
endmodule