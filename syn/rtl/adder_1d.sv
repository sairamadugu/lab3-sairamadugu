module adder_1d #(parameter N=4)
(output logic [N-1:0]sum , output logic c_out ,input logic [N-1:0] a,b ,input logic c_in);

always_comb

begin

{c_out,sum} = a+b+c_in;

end

endmodule
