`timescale 1ns/1ps

module alu_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] opcode;

wire [7:0] result;
wire carry;
wire zero;

// Instantiate ALU
alu_8bit uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry),
    .zero(zero)
);

initial begin

    // Generate waveform
    $dumpfile("alu_8bit.vcd");
    $dumpvars(0, alu_8bit_tb);

    $monitor("Time=%0t | A=%h | B=%h | Opcode=%b | Result=%h | Carry=%b | Zero=%b",
             $time, A, B, opcode, result, carry, zero);

    // Test values
    A = 8'h15;
    B = 8'h05;

    // Addition
    opcode = 3'b000;
    #10;

    // Subtraction
    opcode = 3'b001;
    #10;

    // AND
    opcode = 3'b010;
    #10;

    // OR
    opcode = 3'b011;
    #10;

    // XOR
    opcode = 3'b100;
    #10;

    // NOT A
    opcode = 3'b101;
    #10;

    // Increment A
    opcode = 3'b110;
    #10;

    // Decrement A
    opcode = 3'b111;
    #10;

    // Additional addition test for carry
    A = 8'hFF;
    B = 8'h01;
    opcode = 3'b000;
    #10;

    $finish;

end

endmodule