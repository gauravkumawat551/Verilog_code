`timescale 1ns/1ps
module siso(d,clk,din,o,dout);
  input reg [3:0]d;
  input clk;
  input din;
  output reg [3:0]o;
  output reg dout;
  initial d=4'b0000;
  always @(posedge clk) begin
  din = d[0];
  D_FF(d[3],clk,o[3]);
  D_FF(d[2],clk,o[2]);
  D_FF(d[1],clk,o[1]);
  D_FF(d[0],clk,o[0]);
  dout=o[3];
  end
task D_FF;
  input D;  
  input clk;       
  output reg q; 
  always @(posedge clk) begin
    case (D)
      1'b0:begin q=0;end
      1'b1:begin q=1;end    
    endcase           
  end
endtask
endmodule
