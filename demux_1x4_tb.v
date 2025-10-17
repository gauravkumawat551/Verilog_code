`timescale 1ns / 1ps

module tb();
  reg i;
  reg [1:0]sel;
  wire y0,y1,y2,y3;
demux_1x4 dut(.i(i),.sel(sel),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin
  $dumpfile("demux_1X4.vcd");
  $dumpvars;
  for(integer j=0;j<=1;j++) begin
    i=j;
    #10 sel=2'b00;
    #10 sel=2'b01;
    #10 sel=2'b10;
    #10 sel=2'b11;
  end
  end
  initial begin
  #90 
  $finish;
  end
endmodule
