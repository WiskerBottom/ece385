module full_adder_rpa (input logic x,y,c,
output logic s, p, g, z); 
assign p = x^y;
assign g= x&y;
assign s = p^c;
assign z= g|(p&c);

endmodule


module CLA_ADDER4( input logic [3:0] A, B,
input logic c_in, 
output logic [3:0] S,
output logic c_out, PP, GG);

logic c0,c1,c2,c3;

logic c = {c0, c1,c2,c3};
logic [3:0] p,g;

assign p = A^B;
assign g = A&B;
assign s=  p^c;

assign c0 = c_in;
assign c1= (c_in & p[0]) | g[0];
assign c2= (c_in & p[0] & p[1]) | (g[0]&p[1]) | g[1];
assign c3= (c_in & p[0] & p[1] & p[2]) | (g[0]& p[1] & p[2]) | (g[1] & p[2]) | g[2];
assign c_out = g[3] | (p[3] & c3);
assign PP = p[0] & p[1] & p[2] & p[3];
assign GG = g[3] | (g[2] & p[3]) | (g[1] & p[3] & p[2]) | (g[0] & p[3] & p[2] & p[1]);

/*
    full_adder_rpa FA0(.x(A[0]), .y(B[0]), .c(c0), .s(S[0]), .p(p[0]), .g(g[0]), .z(c0));
    full_adder_rpa FA1(.x(A[1]), .y(B[1]), .c(c1), .s(S[1]), .p(p[1]), .g(g[1]), .z(c1));
    full_adder_rpa FA2(.x(A[2]), .y(B[2]), .c(c2), .s(S[2]), .p(p[2]), .g(g[2]), .z(c2));
    full_adder_rpa FA3(.x(A[3]), .y(B[3]), .c(c3), .s(S[3]), .p(p[3]), .g(g[3]), .z(c3));
*/

endmodule

module lookahead_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);

logic PP0,PP4,PP8,PP12;
logic GG0,GG4,GG8,GG12;
logic c4,c8,c12;
assign c4   = GG0 | (PP0 & cin);
assign c8   = GG4 | (GG0 & PP4) | (cin & PP0 & PP4);
assign c12  = GG8 | (GG4 & PP8) | (GG0 & PP8 & PP4) | (cin & PP8 & PP4 & PP0);
assign cout = GG12 | (GG8 & PP12) | (GG4 & PP12 & PP8) | (GG0 & PP12 & PP8 & PP4) | (cin & PP12 & PP8 & PP4 & PP0);

	CLA_ADDER4 FA4(.A(a[3:0]), .B(b[3:0]), .c_in(cin), .S(s[3:0]), .PP(PP0), .GG(GG0), .c_out());
	CLA_ADDER4 FA5(.A(a[7:4]), .B(b[7:4]), .c_in(c4), .S(s[7:4]), .PP(PP4), .GG(GG4), .c_out());
    CLA_ADDER4 FA6(.A(a[11:8]), .B(b[11:8]), .c_in(c8), .S(s[11:8]), .PP(PP8), .GG(GG8), .c_out());
    CLA_ADDER4 FA7(.A(a[15:12]), .B(b[15:12]), .c_in(c12), .S(s[15:12]), .PP(PP12), .GG(GG12), .c_out());



endmodule
