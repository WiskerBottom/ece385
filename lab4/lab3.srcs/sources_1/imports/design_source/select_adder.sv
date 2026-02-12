
module sel_adder_section (

	input  logic  [3:0] a, 
    input  logic  [3:0] b,
	input  logic         cin,
	
	output logic  [3:0] result,
	output logic         cout

    );

logic FA_carryout_Carry1;
logic FA_carryout_Carry0;

logic [3:0] FA_result_Carry1;
logic [3:0] FA_result_Carry0;

// - - - - - - - START SECOND ADDER CARRY 1 - - - - - - - 
ADDER4 FA_2_Carry1(.A(a[3:0]), .B(b[3:0]), .c_in(1), .S(FA_result_Carry1[3:0]), .c_out(FA_carryout_Carry1));
// - - - - - - - END SECOND ADDER CARRY 1 - - - - - - - - -

// - - - - - - - START SECOND ADDER CARRY 0 - - - - - - - 
ADDER4 FA_2_Carry0(.A(a[3:0]), .B(b[3:0]), .c_in(0), .S(FA_result_Carry0[3:0]), .c_out(FA_carryout_Carry0));
// - - - - - - - END SECOND ADDER CARRY 0 - - - - - - - - -

mux_8_4 mux(.A(FA_result_Carry1[3:0]), .B(FA_result_Carry0[3:0]), .C(cin), .out(result)); //if FA_carryout_1 is 1 pick .A
//

assign cout = (FA_carryout_Carry1 & cin) | FA_carryout_Carry0;
 

endmodule



module select_adder (/**/
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);
	/* TODO
		*
		* Insert code here to implement a CSA adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */

logic [3:0] FA_result_1;
logic FA_carryout_1;

logic [3:0] FA_result_2;
logic FA_carryout_2;

logic [3:0] FA_result_3;
logic FA_carryout_3;

logic [3:0] FA_result_4;
logic FA_carryout_4;



//.A and .B is 4 bits to add .c_in is 1 bit carry in, .S is 4 bit result, .c_out is 1 bit carry out

// - - - - - - - START FIRST ADDER - - - - - - - 
ADDER4 FA_1(.A(a[3:0]), .B(b[3:0]), .c_in(0), .S(FA_result_1[3:0]), .c_out(FA_carryout_1));
// - - - - - - - END FIRST ADDER - - - - - - - -

sel_adder_section Sel_Adder_Sec2(.a(a[7:4]), .b(b[7:4]), .cin(FA_carryout_1), .result(FA_result_2), .cout(FA_carryout_2));

sel_adder_section Sel_Adder_Sec3(.a(a[11:8]), .b(b[11:8]), .cin(FA_carryout_2), .result(FA_result_3), .cout(FA_carryout_3));

sel_adder_section Sel_Adder_Sec4(.a(a[15:12]), .b(b[15:12]), .cin(FA_carryout_3), .result(FA_result_4), .cout(FA_carryout_4));

assign s = {FA_result_4, FA_result_3, FA_result_2, FA_result_1};

endmodule
