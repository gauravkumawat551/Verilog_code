`timescale 1ns/1ps

module tb_PISO();
    reg clk;
    reg load;
    reg [3:0] parallel_in;
    wire serial_out;

  PISO dut(.clk(clk),.load(load),parallel_in(parallel_in),.serial_out(serial_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
      $dumpfile("piso.vcd");
      $dumpvars;
        load = 0;
        parallel_in = 4'b0000;

        #10 load = 1;
        parallel_in = 4'b1101; 
        #10 load = 0;
        #50; 
        $finish;
    end

endmodule
