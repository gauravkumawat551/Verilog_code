module tb();
  reg [3:0]d;
  reg clk;
  input din;
  wire [3:0]o;
  wire dout;
  
  siso dut(.d(d),.clk(clk),.din(din),.o(o),.dout(dout));
  initial begin
    clk=0;
    forever #10 clk=~clk;
  end
  initial begin
    $dumpfile("siso.vcd");
    $dumpvars;
    din=1;#10//feeding data
    din=0;#10
    din=1;#10
    din=0;#10
  end
    initial begin
      #90
      $finish;
    end
    endmodule
    
    
    
