`timescale 1ns / 1ps

module mul(a,b,p);
  input[2:0]a,b;
  output [5:0]p;
  reg [5:0]c;
  reg [6:0]s;
  always@(a,b) begin
    reg temp_s,temp_c;
    Haddr(s[1],c[0],a[1]&b[0],a[0]&b[1]);
    Faddr(s[2],c[1],a[2]&b[0],a[1]&b[1],c[0]);
    Haddr(s[3],c[2],a[0]&b[2],s[2]);
    Faddr(s[4],c[3],a[2]&b[1],c[1],c[2]);
    Haddr(s[5],c[4],a[1]&b[2],s[4]);
    Faddr(s[6],c[5],a[2]&b[2],c[3],c[4]);
  end
  assign  p[0]=a[0]&b[0];
  assign p[1]=s[1];
  assign p[2]=s[3];
  assign p[3]=s[5];
  assign p[4]=s[6];
  assign p[5]=c[5];
 
  task Haddr;
    output s,c;
    input a,b;
    begin
      s=a^b;
      c=a&b;
    end
  endtask
  task Faddr;
    output s,c;
    input a,b,cin;
    begin
      s=a^b^cin;
      c=(a&b)|(a&cin)|(b&cin);
    end
  endtask
endmodule
