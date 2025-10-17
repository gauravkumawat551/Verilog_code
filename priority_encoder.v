`timescale 1ns / 1ps

module priority_encoder(oct, bin);
  input [7:0] oct;   // 8 input lines
  output reg [2:0] bin; // 3 output lines

  always @(*) begin
    casez (oct)
      8'b1zzzzzzz: bin = 3'b111; // Priority for the highest bit
      8'b01zzzzzz: bin = 3'b110;
      8'b001zzzzz: bin = 3'b101;
      8'b0001zzzz: bin = 3'b100;
      8'b00001zzz: bin = 3'b011;
      8'b000001zz: bin = 3'b010;
      8'b0000001z: bin = 3'b001;
      8'b00000001: bin = 3'b000;
      default: bin = 3'b000; // Default case
    endcase
  end
endmodule
