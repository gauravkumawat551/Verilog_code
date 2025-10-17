module parity_generator (
    input [7:0] data,    // 8-bit input data
  output even_parity,odd_parity);
  assign even_parity = ^data; 
  assign odd_parity = ~(^data);
endmodule
