`timescale 1ns / 1ps
module tb();
  reg clk,rst;
  wire [3:0]count;
  mod6_counter dut(.clk(clk),.rst(rst),.count(count));
  initial begin
    clk=0;
    forever #10 clk=~clk;
  end
  initial begin 
    $dumpfile("clock,vcd");
    $dumpvars;
  	rst=0;#1200 
    $finish;
  end
    endmodule
    
   
