module tb();
  reg clk,reset;
  wire [3:0] sec_units,sec_tens,min_units,min_tens,hour_units;
  wire [1:0]hour_tens;
  clock_12_hour dut(.clk(clk),.reset(reset),.sec_units(sec_units),.sec_tens(sec_tens),.min_units(min_units),.min_tens(min_tens),.hour_units(hour_units),.hour_tens(hour_tens));
  initial begin
    clk=0;
    forever #0.01 clk=~clk;
  end
  initial begin 
    $dumpfile("12 hour clock.vcd");
    $dumpvars;
    reset=1;
    #0.1
    reset=0;
    #10000
    $finish;
  end
endmodule
    
