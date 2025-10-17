`timescale 1ns / 1ps

module tb();
  reg [7:0] oct;      // Input for the Priority Encoder
  wire [2:0] bin;     // Output for the Priority Encoder

  priority_encoder dut(.oct(oct), .bin(bin)); // Instantiate DUT

  initial begin
    $dumpfile("priority_encoder.vcd"); // Dump the waveform
    $dumpvars;

    // Test all combinations of oct
    for (integer i = 0; i < 256; i = i + 1) begin
      #10 oct = i; // Assign input `oct` and wait for 10 time units
    end
  end

  initial begin
    #2560; // Run the testbench for all input combinations
    $finish; // Finish simulation
  end
endmodule
