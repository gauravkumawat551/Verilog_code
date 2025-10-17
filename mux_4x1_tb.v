`timescale 1ns / 1ps
module tb;
    reg [3:0] in;         
    reg [1:0] sel;         
    wire y;                

    mux_4x1 dut (.in(in),.sel(sel),.y(y));

    integer i, j;

    initial begin
       $dumpfile("mux_4x1.vcd");
       $dumpvars;
       
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                in = i[3:0];         
                sel = j[1:0];        
                #10;                 
            end
        end

        $finish;                  
    end
endmodule

