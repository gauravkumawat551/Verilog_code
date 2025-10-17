`timescale 1ns / 1ps

module tb();
    reg [7:0]oct;
    wire [2:0]bin;
    
    octal_binary dut(.oct(oct),.bin(bin));
    
   initial begin
    $dumpfile("octal_binary.vcd");
    $dumpvars;
    #10 oct=8'b00000001;
    #10 oct=8'b00000010;
    #10 oct=8'b00000100;
    #10 oct=8'b00001000;
    #10 oct=8'b00010000;
    #10 oct=8'b00100000;
    #10 oct=8'b01000000;
    #10 oct=8'b10000000;
    end
    initial begin
    #90 
    $finish;
    end 
endmodule
