`timescale 1ns / 1ps

module tb();
 reg a,b;
 wire s,c;
 
 half_adder dut(.a(a),.b(b),.s(s),.c(c));
 
 initial begin
 $dumpfile("half_adder.vcd");
 $dumpvars;
 #10 a=1'b0;
 b=1'b0;
 #10 a=1'b0;
 b=1'b1;
 #10 a=1'b1;
 b=1'b0;
 #10 a=1'b1;
 b=1'b1;
 end

 initial begin
 #200
 $finish;
 end
endmodule
