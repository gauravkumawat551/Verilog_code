`timescale 1ns/1ns
module tb();
  reg [7:0]data;
  wire [2:0]error_bit;
  wire [7:0]corrected_data;
  parity_corrector dut(.data(data),.error_bit(error_bit),.corrected_data(corrected_data));
  initial begin
    $dumpfile("parity corrector.vcd");
    $dumpvars;
    data=8'b10110110;//data to test
    #10
    data=8'b10010110;
    #10
    $finish;
  end
endmodule
