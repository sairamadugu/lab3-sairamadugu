



module adder_1b(output logic [3:0] sum , output logic cout ,input logic [3:0] a,b , input logic cin , input wire c0 ,c1 ,c2);

wire logic w1[3:0] , w2[3:0] , w3[3:0] , w4[3:0];

xor x1(w1[0],a[0],b[0]);
xor x2(sum[0] , w1[0] ,cin);
and x3 (w2[0] , cin , b[0]);
and x4 (w3[0] , a[0] ,b[0]);
and x5 (w4[0] , a[0], cin);
or x6 (c0 , w2[0] ,w3[0],w4[0]);


xor x7(w1[1],a[1],b[1]);
xor x8(sum[1] , w1[1] ,cin);
and x9 (w2[1] , c0 , b[1]);
and x10 (w3[1] , a[1] ,b[1]);
and x11(w4[1] , a[1], c0);
or x12 (c1 , w2[1] ,w3[1],w4[1]);


xor x13(w1[2],a[2],b[2]);
xor x14(sum[2] , w1[2] ,c1);
and x15 (w2[2] , c1 , b[2]);
and x16(w3[2] , a[2] ,b[2]);
and x17 (w4[2] , a[2], b[2]);
or x18(c2, w2[2] ,w3[2],w4[2]);



xor x19(w1[3],a[3],b[3]);
xor x20(sum[3] , w1[3] ,c2);
and x21 (w2[3] , c2 , b[3]);
and x22(w3[3] , a[3] ,b[3]);
and x23 (w4[3] , a[3], b[3]);
or x24(cout , w2[3] ,w3[3],w4[3]);

endmodule
