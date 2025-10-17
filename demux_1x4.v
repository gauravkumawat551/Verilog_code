`timescale 1ns / 1ps

module demux_1x4 (i,sel,y0,y1,y2,y3);
    input i;
    input [1:0]sel;
    output y0,y1,y2,y3;
    assign y0 = (sel == 2'b00) ? i : 0;  //if sel =00 y0=i or else y0=0
    assign y1 = (sel == 2'b01) ? i : 0;  
    assign y2 = (sel == 2'b10) ? i : 0;
    assign y3 = (sel == 2'b11) ? i : 0;
endmodule
