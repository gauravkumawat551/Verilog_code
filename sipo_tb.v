module tb();
  reg clk;
  reg din;
  wire [3:0]dout;
  
  sipo dut(.clk(clk),.d_in(din),.d_out(dout));
  initial begin
    clk=0;
    forever #10 clk=~clk;
  end
  initial begin
    $dumpfile("sipo.vcd");
    $dumpvars;
    din=0;#90;//inputing 0000(4*10) and outputing 0000(4*10)
    
    din=1;#20//*feeding data as ther period of clk is 20ns it gets pos edge in every 20 ns
    din=0;#20
    din=1;#20
    din=0;
  end
    initial begin
      #200
      $finish;
    end
endmodule
    
    
    
