`timescale 1ns / 1ps
module mul_tb;
  reg [1:0] a, b;        
  wire [3:0] p;          
    integer i, j;

    mul_2b dut (.a(a),.b(b),.p(p));

    initial begin
      $dumpfile("mul.vcd");
      $dumpvars;
      for (i = 0; i < 4; i = i + 1) begin
        for (j = 0; j < 4; j = j + 1) begin
                a = i;  
                b = j;  
                #10;    
            end
        end

        $finish; 
    end
endmodule
