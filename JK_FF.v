`timescale 1ns / 1ps
module JK_FF(JK, clk, q, qb);
  input [1:0] JK;  
  input clk;       
  output q, qb; 
  
  always @(posedge clk) begin
    case (JK)
      2'b00: q = q;       // No change
      2'b01: q = 0;       // Reset
      2'b10: q = 1;       // Set
      2'b11: q = ~q;      // Toggle
    endcase
    qb = ~q;              // Complement of q
  end
endmodule

