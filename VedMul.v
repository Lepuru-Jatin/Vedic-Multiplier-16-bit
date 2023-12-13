module ha(a,b,sum,carry);
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule


module mux(y,a,b,s);
output y;
input a,b,s;
wire w1,w2,w3;
not(w1,s);
and(w2,a,s);
and(w3,b,w1);
or(y,w2,w3);
endmodule


module fa(s,cout,a,b,cin);
input a,b,cin;
output s,cout;
wire w1;
xor(w1,a,b);
xor(s,w1,cin);
mux u0(cout,cin,a,w1);
endmodule


module full_adder_4bit(S,Cout,A,B);
input [3:0] A,B;
output [3:0] S;
output Cout;
wire w1,w2,w3;
fa u1(S[0],w1,A[0],B[0],0);
fa u2(S[1],w2,A[1],B[1],w1);
fa u3(S[2],w3,A[2],B[2],w2);
fa u4(S[3],Cout,A[3],B[3],w3);
endmodule


module full_adder_8bit(S,Cout,A,B);
input [7:0] A,B;
output [7:0] S;
output Cout;
wire w1,w2,w3,w4,w5,w6,w7;
fa u1(S[0],w1,A[0],B[0],0);
fa u2(S[1],w2,A[1],B[1],w1);
fa u3(S[2],w3,A[2],B[2],w2);
fa u4(S[3],w4,A[3],B[3],w3);
fa u5(S[4],w5,A[4],B[4],w4);
fa u6(S[5],w6,A[5],B[5],w5);
fa u7(S[6],w7,A[6],B[6],w6);
fa u8(S[7],Cout,A[7],B[7],w7);
endmodule


module full_adder_12bit(S,Cout,A,B);
input [11:0] A,B;
output [11:0] S;
output Cout;
wire w1,w2,w3,w4,w5,w6,w7;
fa u1(S[0],w1,A[0],B[0],0);
fa u2(S[1],w2,A[1],B[1],w1);
fa u3(S[2],w3,A[2],B[2],w2);
fa u4(S[3],w4,A[3],B[3],w3);
fa u5(S[4],w5,A[4],B[4],w4);
fa u6(S[5],w6,A[5],B[5],w5);
fa u7(S[6],w7,A[6],B[6],w6);
fa u8(S[7],w8,A[7],B[7],w7);
fa u9(S[8],w9,A[8],B[8],w8);
fa u10(S[9],w10,A[9],B[9],w9);
fa u11(S[10],w11,A[10],B[10],w10);
fa u12(S[11],Cout,A[11],B[11],w11);
endmodule


module full_adder_16bit(S,Cout,A,B);
input [15:0] A,B;
output [15:0] S;
output Cout;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15;
fa u1(S[0],w1,A[0],B[0],0);
fa u2(S[1],w2,A[1],B[1],w1);
fa u3(S[2],w3,A[2],B[2],w2);
fa u4(S[3],w4,A[3],B[3],w3);
fa u5(S[4],w5,A[4],B[4],w4);
fa u6(S[5],w6,A[5],B[5],w5);
fa u7(S[6],w7,A[6],B[6],w6);
fa u8(S[7],w8,A[7],B[7],w7);
fa u9(S[8],w9,A[8],B[8],w8);
fa u10(S[9],w10,A[9],B[9],w9);
fa u11(S[10],w11,A[10],B[10],w10);
fa u12(S[11],w12,A[11],B[11],w11);
fa u13(S[12],w13,A[12],B[12],w12);
fa u14(S[13],w14,A[13],B[13],w13);
fa u15(S[14],w15,A[14],B[14],w14);
fa u16(S[15],Cout,A[15],B[15],w15);
endmodule


module full_adder_20bit(S,Cout,A,B);
input [19:0] A,B;
output [19:0] S;
output Cout;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19;
fa u1(S[0],w1,A[0],B[0],0);
fa u2(S[1],w2,A[1],B[1],w1);
fa u3(S[2],w3,A[2],B[2],w2);
fa u4(S[3],w4,A[3],B[3],w3);
fa u5(S[4],w5,A[4],B[4],w4);
fa u6(S[5],w6,A[5],B[5],w5);
fa u7(S[6],w7,A[6],B[6],w6);
fa u8(S[7],w8,A[7],B[7],w7);
fa u9(S[8],w9,A[8],B[8],w8);
fa u10(S[9],w10,A[9],B[9],w9);
fa u11(S[10],w11,A[10],B[10],w10);
fa u12(S[11],w12,A[11],B[11],w11);
fa u13(S[12],w13,A[12],B[12],w12);
fa u14(S[13],w14,A[13],B[13],w13);
fa u15(S[14],w15,A[14],B[14],w14);
fa u16(S[15],w16,A[15],B[15],w15);
fa u17(S[16],w17,A[16],B[16],w16);
fa u18(S[17],w18,A[17],B[17],w17);
fa u19(S[18],w19,A[18],B[18],w18);
fa u20(S[19],Cout,A[19],B[19],w19);
endmodule


module full_adder_24bit(S,Cout,A,B);
input [23:0] A,B;
output [23:0] S;
output Cout;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23;
fa u1(S[0],w1,A[0],B[0],0);
fa u2(S[1],w2,A[1],B[1],w1);
fa u3(S[2],w3,A[2],B[2],w2);
fa u4(S[3],w4,A[3],B[3],w3);
fa u5(S[4],w5,A[4],B[4],w4);
fa u6(S[5],w6,A[5],B[5],w5);
fa u7(S[6],w7,A[6],B[6],w6);
fa u8(S[7],w8,A[7],B[7],w7);
fa u9(S[8],w9,A[8],B[8],w8);
fa u10(S[9],w10,A[9],B[9],w9);
fa u11(S[10],w11,A[10],B[10],w10);
fa u12(S[11],w12,A[11],B[11],w11);
fa u13(S[12],w13,A[12],B[12],w12);
fa u14(S[13],w14,A[13],B[13],w13);
fa u15(S[14],w15,A[14],B[14],w14);
fa u16(S[15],w16,A[15],B[15],w15);
fa u17(S[16],w17,A[16],B[16],w16);
fa u18(S[17],w18,A[17],B[17],w17);
fa u19(S[18],w19,A[18],B[18],w18);
fa u20(S[19],w20,A[19],B[19],w19);
fa u21(S[20],w21,A[20],B[20],w20);
fa u22(S[21],w22,A[21],B[21],w21);
fa u23(S[22],w23,A[22],B[22],w22);
fa u24(S[23],Cout,A[23],B[23],w23);
endmodule


module vmul2x2(a,b,op);
input [1:0] a,b;
output [3:0] op;
wire w1,w2,w3,w4,w5;
and(op[0],a[0],b[0]);
and(w2,b[0],a[1]);
and(w3,a[0],b[1]);
and(w4,a[1],b[1]);
ha a1(w2,w3,op[1],w5);
ha a2(w5,w4,op[2],op[3]);
endmodule
 

module vmul4x4(a,b,op);
input [3:0] a,b;
output [8:0] op;
wire w1,w2,w3;
wire [3:0] q0,q1,q2,q3,q4,q5;
wire [3:0] mix1,mix2;
vmul2x2 b1(a[1:0],b[1:0],q0[3:0]);
vmul2x2 b2(a[1:0],b[3:2],q1[3:0]);
vmul2x2 b3(a[3:2],b[1:0],q2[3:0]);
vmul2x2 b4(a[3:2],b[3:2],q3[3:0]);
full_adder_4bit c1(q4,w1,q1,q2);
assign mix1={2'b00,q0[3:2]};
full_adder_4bit c2(q5,w2,mix1,q4);
or(w3,w1,w2);
assign mix2={1'b0,w3,q5[3:2]};
full_adder_4bit c3(op[7:4],op[8],mix2,q3);
assign op[1:0]=q0[1:0];
assign op[3:2]=q5[1:0];
endmodule


module vmul8x8(a,b,op);
input [7:0] a,b;
output [16:0] op;
wire w1,w2;
wire [8:0] q0,q1,q2,q3;
wire [7:0] mix1;
wire [11:0] mix2,mix3,mix4;
wire [7:0] q01;
wire [11:0] q02;
vmul4x4 d1(a[3:0],b[3:0],q0[8:0]);
vmul4x4 d2(a[7:4],b[3:0],q1[8:0]);
vmul4x4 d3(a[3:0],b[7:4],q2[8:0]);
vmul4x4 d4(a[7:4],b[7:4],q3[8:0]);
assign mix1={4'b0000,q0[7:4]};
full_adder_8bit e1(q01,w1,mix1,q1[7:0]);
assign mix4={4'b0000,q01[7:0]};
assign mix2={4'b0000,q2[7:0]};
assign mix3={q3[7:0],4'b0000};
full_adder_12bit e2(q02,w2,mix2,mix3);
full_adder_12bit e3(op[15:4],op[16],q02,mix4);
assign op[3:0]=q0[3:0];
endmodule


module vmul16x16(a,b,op);
input [15:0] a,b;
output [31:0] op;
wire w1,w2,w3;
wire [15:0] mix1;
wire [23:0] mix2,mix3,mix4;
wire [15:0] q0,q1,q2,q3,q4;
wire [23:0] q5;
vmul8x8 f1(a[7:0],b[7:0],q0[15:0]);
vmul8x8 f2(a[15:8],b[7:0],q1[15:0]);
vmul8x8 f3(a[7:0],b[15:8],q2[15:0]);
vmul8x8 f4(a[15:8],b[15:8],q3[15:0]);
assign mix1={8'b00000000,q0[15:8]};
full_adder_16bit g1(q4,w1,mix1,q1[15:0]);
assign mix2={8'b00000000,q2[15:0]};
assign mix3={q3[15:0],8'b00000000};
full_adder_24bit g2(q5,w2,mix2,mix3);
assign mix4={7'b0000000,w1,q4[15:0]};
full_adder_24bit g3(op[31:8],w3,mix4,q5[23:0]);
assign op[7:0]=q0[7:0];
endmodule
