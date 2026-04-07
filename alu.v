module alu_4bit(
    input [3:0] A, B,
    input [2:0] Opcode,
    output reg [3:0] ALU_Out,
    output reg CarryOut
);
    always @(*) begin
        case(Opcode)
            3'b000: {CarryOut, ALU_Out} = A + B;  // Addition
            3'b001: ALU_Out = A - B;              // Subtraction
            3'b010: ALU_Out = A & B;              // AND
            3'b011: ALU_Out = A | B;              // OR
            3'b100: ALU_Out = A ^ B;              // XOR
            3'b101: ALU_Out = ~A;                 // NOT A
            3'b110: ALU_Out = (A < B)? 4'b0001:4'b0000; // SLT
            3'b111: ALU_Out = A * B;              // Multiplication
            default: ALU_Out = A + B;
        endcase
    end
endmodule