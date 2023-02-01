module adder_1d_tb;
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  wire [3:0] sum;
  wire cout;

  integer i,j,k;

  adder_1a dut (sum, cout, a, b, cin);

  initial 
  begin
    for (i = 0; i < 16; i = i+1) 
    begin
        a=i;
      for (j = 0; j < 16; j = j+1) 
      begin
        b=j;
        for (k = 0; k < 2; k = k+1) 
        begin
            cin=k;
          #1;
          $display("a=%b b=%b cin=%b sum=%b cout=%b", a, b, cin, sum, cout);
        end
      end
    end
    $finish;
  end
endmodule
