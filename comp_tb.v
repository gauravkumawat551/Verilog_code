
`timescale 1ns / 1ps

module tb;
  reg [1:0] x, y;        
  wire xly,xgy,xey;          
    integer i, j;

  comp dut (.x(x),.y(y),.xly(xly),.xgy(xgy),.xey(xey));

    initial begin
      $dumpfile("comp.vcd");
      $dumpvars;
      for (i = 0; i <=3 ; i = i + 1) begin
        for (j = 0; j <= 3; j = j + 1) begin
                x = i;  
                y = j;  
                #10;    
            end
        end

        $finish; 
    end
endmodule
