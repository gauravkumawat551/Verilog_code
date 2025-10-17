module mod6_counter(clk,rst,count);
    input clk;     
    input rst;      
    output reg [3:0] count;
  	initial count=0;

    always @(posedge clk or posedge rst) begin
        if (rst) 
            count = 4'b0000; 
      else if (count == 5) 
            count = 4'b0000; 
      else
            count = count + 1'b1;
    end

endmodule
