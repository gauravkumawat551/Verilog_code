`timescale 1ns / 1ps

module tb();
    reg a,b,c,sel;    
    wire sd,cb;  
    
add_sub dut(.a(a),.b(b),.c(c),.sel(sel),.sd(sd),.cb(cb));

initial begin
$dumpfile("adder_subtractor.vcd");
$dumpvars;
for(sel=0;sel<=1;sel=sel+1)begin 
       #10 a = 0; b = 0; c= 0;
       #10 a = 0; b = 0; c = 1;
       #10 a = 0; b = 1; c = 0;
       #10 a = 0; b = 1; c = 1;
       #10 a = 1; b = 0; c = 0;
       #10 a = 1; b = 0; c = 1;
       #10 a = 1; b = 1; c = 0;
       #10 a = 1; b = 1; c = 1;    
end
#10 $finish;
end
endmodule
