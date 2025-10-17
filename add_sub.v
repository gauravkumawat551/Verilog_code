`timescale 1ns / 1ps

module add_sub(a,b,c,sel,sd,cb);//sel=1 subtraction....sel=0 addition....sd-sum or difference......cb-carry or borrow
    input a,b,c,sel;
    output sd,cb;
    wire b_sel; 
    assign b_sel = b ^ sel;

    assign sd = a ^ b_sel ^ c;      
    assign cb = (a & b_sel) | (b_sel & c) | (c & a); 
endmodule
