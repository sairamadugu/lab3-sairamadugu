
// 1 bit adder 


module adder(output logic sum ,cout , input logic a ,b ,cin)


assign sum = a ^ b^cin;
assign  cout = (a&b)|(b&cin) | (cin&a);

end module

