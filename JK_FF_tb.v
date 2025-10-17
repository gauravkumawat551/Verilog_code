`timescale 1ns / 1ps

module tb();
  
  reg [1:0] JK;  
  reg clk;       
  wire q, qb;    
 
  JK_FF dut (.JK(JK),.clk(clk),.q(q),.qb(qb));

  initial begin
    clk = 0;  
    forever #10 clk = ~clk;
  end

  initial begin
    $dumpfile("JK_FF.vcd"); 
    $dumpvars;

    JK = 2'b00; 
    #100;       
    JK = 2'b01; 
    #100;       
    JK = 2'b10; 
    #100;      
    JK = 2'b11; 
    #200;      

    $finish;    
  end
endmodule
