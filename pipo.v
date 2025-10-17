module D_FF(D,clk,Q);
    input D,clk;       
    output reg Q; 
    always @(posedge clk) begin
        Q = D;
    end
endmodule

module pipo(clk,d_in,d_out);
  input clk;
  input [3:0]d_in;   
  output [3:0]d_out;   	
  D_FF FF1(.D(d_in[0]),.clk(clk),.Q(d_out[0]));
  D_FF FF2(.D(d_in[1]),.clk(clk),.Q(d_out[1]));
  D_FF FF3(.D(d_in[2]),.clk(clk),.Q(d_out[2]));
  D_FF FF4(.D(d_in[3]),.clk(clk),.Q(d_out[3]));
 
endmodule
