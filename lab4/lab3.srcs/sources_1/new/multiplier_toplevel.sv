//Top level for ECE 385 adders lab
//modified for Spring 2024

//Note: lowest 2 HEX digits will reflect lower 8 bits of switch input
//Upper 4 HEX digits will reflect value in the accumulator


module multiplier_toplevel   (
	input  logic 		SWlogic [7:0], 
	input  logic		reset_loadB_clearA,
	input  logic        clk,
	input  logic 		run, // _i stands for input
	input  logic [7:0] sw_i,

	output logic 		Aval [7:0],
	output logic        Bval [7:0],
	output logic        Xval,
	output logic [3:0]  hex_grid,
	output logic [7:0]  hex_seg
);

	logic x; 
    logic cin;

	select_adder adder(.a({8'b0, sw_i}), .b({8'b0,Bval[8:0]}), .cin(0), .s({7'b0,x,Aval[7:0]}), .cout(x));
		
	load_reg regA(8) (.clk(clk), .);
	
	input  logic	    clk, 
	input  logic	    reset, 
	input  logic	    load,
	input  logic        shift,
	input  logic        serial_in,
	input  logic [DATA_WIDTH-1:0] data_i, // set input/output size based on parameter

	output logic [DATA_WIDTH-1:0] data_q	
		
endmodule