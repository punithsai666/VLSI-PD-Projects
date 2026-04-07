module alu_tb;
    reg [3:0] A, B;
    reg [2:0] Opcode;
    wire [3:0] ALU_Out;
    wire CarryOut;

    alu_4bit uut (A, B, Opcode, ALU_Out, CarryOut);

    initial begin
        $dumpfile("alu_test.vcd"); // This creates the waveform file
        $dumpvars(0, alu_tb);
        
        // Test 1: Addition (10 + 3 = 13)
        A = 4'b1010; B = 4'b0011; Opcode = 3'b000; #10;
        
        // Test 2: AND Logic
        A = 4'b1100; B = 4'b1010; Opcode = 3'b010; #10;

        // Test 3: Multiplication (3 * 2 = 6)
        A = 4'b0011; B = 4'b0010; Opcode = 3'b111; #10;
        
        $display("Simulation Complete!");
        $finish;
    end
endmodule