`timescale 1ns/1ps

module D_FF(D,clk,Q);
    input D,clk;       
    output reg Q; 
    always @(posedge clk) begin
        Q = D;
    end
endmodule

module sipo(clk,d_in,d_out);
    input clk,d_in;   
  	output [3:0]d_out; 
  	
    wire q1, q2, q3, q4;
  	
    D_FF FF1(.D(d_in),.clk(clk),.Q(q1));
    D_FF FF2(.D(q1),.clk(clk),.Q(q2));
    D_FF FF3(.D(q2),.clk(clk),.Q(q3));
    D_FF FF4(.D(q3),.clk(clk),.Q(q4));
  assign d_out[3] = q4;
  assign d_out[2] = q3;
  assign d_out[1] = q2;
  assign d_out[0] = q1;

endmodule
