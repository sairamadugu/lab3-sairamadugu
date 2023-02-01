module adder_1c(input logic [3:0]A , input logic [3:0] B ,input logic C_IN,output logic C_OUT, output logic [3:0] SUM );

wire logic[2:0]C_INT;

fulladder_1c   u1 (A[0],B[0],C_IN,C_INT[0],SUM[0]);
fulladder_1c   u2 (A[1],B[1],C_INT[0],C_INT[1],SUM[1]);
fulladder_1c   u3 (A[2],B[2],C_INT[1],C_INT[2],SUM[2]);
fulladder_1c   u4 (A[3],B[3],C_INT[2],C_OUT,SUM[3]);
endmodule




module fulladder_1c(input logic a ,input logic b , input logic c_in , output logic c_out , output logic sum);
always_comb
begin
case({a,b,c_in}) 

3'b000 : begin sum =0 ; c_out =0; end
3'b001 : begin sum =1 ; c_out =0; end
3'b010 : begin sum =1 ; c_out =0; end
3'b011 : begin sum =0 ; c_out =1; end
3'b100 : begin sum =1 ; c_out =0; end
3'b101 : begin sum =0 ; c_out =1; end
3'b110 : begin sum =0 ; c_out =1; end
3'b111 : begin sum =1 ;  c_out =1; end
endcase
end
endmodule
