module tb();
  reg clk;
  reg [3:0]din;
  wire [3:0]dout;
  
  pipo dut(.clk(clk),.d_in(din),.d_out(dout));
  initial begin
    clk=0;
    forever #10 clk=~clk;
  end
  initial begin
    $dumpfile("pipo.vcd");
    $dumpvars;
    #10 
    din=4'b0000;#20//datas to test 
    din=4'b0010;#20
    din=4'b1111;#20
    din=4'b1101;#20
    din=4'b0010;
  end
    initial begin
      #200
      $finish;
    end
endmodule
    
    
    
