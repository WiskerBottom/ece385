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
    logic shift_en;
    logic sw_i_2_comp [7:0];
    logic A_load;
    logic Aout [7:0];
    logic Bout [7:0];
    logic count [2:0]; //this is going to count what addition we are currently on, this will require an FSM (see ShiftCounter).
    assign m = Bval[0];

    two_comp sw_comp(.value(sw_i[7:0]), .two_complement(sw_i_2_comp));

    logic two_complement_mux_out [7:0];
    mux #(.DATA_WIDTH(8)) adder_input_mux ( //when C is 1, output A
        .A(sw_i_2_comp[7:0]),
        .B(sw_i[7:0]),
        .C(m & count[2] & count[1] & count[2]), //only 1 on 8th count and if m is 1
        .out(two_complement_mux_out));

	select_adder adder(
        .a({8'b0, two_complement_mux_out}), 
        .b({8'b0,Aval[8:0]}), 
        .cin(0), 
        .s({7'b0,x,Aval[7:0]}), 
        .cout(x));
            
	load_reg #(.DATA_WIDTH(8)) regA (
        .clk(clk), 
        .reset(reset_loadB_clearA), 
        .load(A_load), 
        .shift(shift_en), 
        .serial_in(x), 
        .data_i(Aval[7:0]), 
        .data_q(Aout[7:0]));
        
    load_reg #(.DATA_WIDTH(1)) regX ( //treat this as the 9th bit of reg A
        .clk(clk), 
        .reset(reset_loadB_clearA), 
        .load(A_load), 
        .shift(0), //we dont shift in this household 
        .serial_in(x), 
        .data_i(x), 
        .data_q(x));

    load_reg #(.DATA_WIDTH(8)) regB (
        .clk(clk), 
        .reset(0), //we don't clear in this household 
        .load(reset_loadB_clearA), 
        .shift(shift_en),
        .serial_in(Aval[0]), //shift in LSB of A (since we are kind of treading A+B as a long single number) 
        .data_i(sw_i[7:0]), 
        .data_q(Bout[7:0]));

    ShiftCounter counter(.*, .ShiftCount(count));
    
		
endmodule