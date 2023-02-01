

module adder_1a(output logic [3:0]sum,output logic  cout,input logic [3:0]a,b,input logic  cin);

wire logic  c0,c1,c2;

adder u1(sum[0],c0,a[0],b[0],cin);
adder u2(sum[1],c1,a[1],b[1],c0);
adder u3(sum[2],c2,a[2] ,b[2],c1);
adder u4(sum[3],cout,a[3],b[3],c2);
endmodule



module adder(output logic  s ,co , input logic  a,b ,cin);
assign s = (a^b^cin);
assign co = ((a&b)|(b&cin)|(cin&a));
endmodule
