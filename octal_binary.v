`timescale 1ns / 1ps

module octal_binary(oct,bin);
    input [7:0]oct;
    output [2:0]bin;
 or o1(bin[2],oct[7],oct[6],oct[5],oct[4]);
 or o2(bin[1],oct[7],oct[6],oct[3],oct[2]);
 or o3(bin[0],oct[7],oct[5],oct[3],oct[1]);
    
endmodule
