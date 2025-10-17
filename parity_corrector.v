module parity_corrector(
    input [7:0] data, // 0th bit is ignored
    output [2:0] error_bit,
    output reg [7:0] corrected_data);
    wire [2:0] error_bit_wire; 

    assign error_bit_wire[0] = data[1] ^ data[3] ^ data[5] ^ data[7];
    assign error_bit_wire[1] = data[2] ^ data[3] ^ data[6] ^ data[7];
    assign error_bit_wire[2] = data[4] ^ data[5] ^ data[6] ^ data[7];

    assign error_bit = error_bit_wire;
    always @(*) begin
        corrected_data = data; 
        corrected_data[error_bit_wire]=~corrected_data[error_bit_wire]; // Correct the bit
    end
endmodule
