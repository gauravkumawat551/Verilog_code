`timescale 1ns / 1ps

module half_adder(a,b,s,c);
    input a;
    input b;
    output s;
    output c;
    
    assign s=a^b;
    assign c=a&b;
    
endmodule
