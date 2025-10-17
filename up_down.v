`timescale 1ns / 1ps

module up_down(clk,reset,ud,q);
  input clk,reset,ud;
  output reg[3:0]q;
  
  initial q=4'b0000; 
  always@(posedge clk)begin
    if(reset)
      q=4'b0000;
      else begin
        if(ud)//ud=1 for up counting
        	q=q+1'b1;
    	else//ud=0 for down counting
          q=q-1'b1; end
    if(q<4'b0000)
      q=4'b1111;
  end
endmodule
