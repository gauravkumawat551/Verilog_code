`timescale 1ns / 1ps

module tb();
    reg a,b,cin;    
    wire sum,cout;  
    
full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
$dumpfile("full_adder.vcd");
$dumpvars;
       #10 a = 0; b = 0; cin = 0;
       #10 a = 0; b = 0; cin = 1;
       #10 a = 0; b = 1; cin = 0;
       #10 a = 0; b = 1; cin = 1;
       #10 a = 1; b = 0; cin = 0;
       #10 a = 1; b = 0; cin = 1;
       #10 a = 1; b = 1; cin = 0;
       #10 a = 1; b = 1; cin = 1;
       $finish;
end
endmodule
