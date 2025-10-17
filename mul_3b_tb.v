`timescale 1ns / 1ps
module mul_tb;
    reg [2:0] a, b;        
    wire [5:0] p;          
    integer i, j;

    mul dut (.a(a),.b(b),.p(p));

    initial begin
      $dumpfile("mul.vcd");
      $dumpvars;
        for (i = 0; i < 8; i = i + 1) begin
            for (j = 0; j < 8; j = j + 1) begin
                a = i;  
                b = j;  
                #10;    
            end
        end

        $finish; 
    end
endmodule
