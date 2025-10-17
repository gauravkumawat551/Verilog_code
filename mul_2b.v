module mul_2b(a,b,p);
  input[1:0]a,b;
  output [3:0]p;
  reg [1:0]c,s;
  always@(a,b) begin
    Haddr(s[0],c[0],a[1]&b[0],a[0]&b[1]);
    Haddr(s[1],c[1],a[1]&b[1],c[0]);
  end
  assign  p[0]=a[0]&b[0];
  assign p[1]=s[0];
  assign p[2]=s[1];
  assign p[3]=c[1];
 ;
 
  task Haddr;
    output s,c;
    input a,b;
    begin
      s=a^b;
      c=a&b;
    end
  endtask

endmodule
    
