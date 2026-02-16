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
	
	//temp
    //input logic [7:0] Aout,
    //output logic [2:0] count,
    //input logic shift_en,
    input logic reset,
    input logic m,
    input logic A_load,
    input logic x_in,

	output logic [7:0]  Aval,
	output logic [7:0]  Bval,
	output logic        Xval,
	output logic [3:0]  hex_grid,
	output logic [7:0]  hex_seg,
	output logic [7:0] Aout
);

	//logic x; 
	logic clear_x_a;
	logic [15:0] AdderResult;
    logic cin;
    logic shift_en;
    logic [7:0] sw_i_2_comp;
    //logic A_load;
    //logic [7:0] Aout;
    logic [7:0] Bout;
    logic [2:0] count; //this is going to count what addition we are currently on, this will require an FSM (see ShiftCounter).
    //assign m = Bval[0];

    /*

    two_comp sw_comp(.value(sw_i[7:0]), .two_complement(sw_i_2_comp));

    //assign Aout = 8'b00001111;

    logic [7:0] two_complement_mux_out;
    mux #(.DATA_WIDTH(8)) adder_input_mux ( //when C is 1, output A
        .A(sw_i_2_comp[7:0]),
        .B(sw_i[7:0]),
        .C(m & count[2] & count[1] & count[0]), //only 1 on 8th count and if m is 1    
        .out(two_complement_mux_out));

	select_adder adder(
        .a({8'b0, two_complement_mux_out}), 
        .b({8'b0, Aout[7:0]}), 
        .cin(0), 
        .s(AdderResult[15:0]));
            
    assign x = AdderResult[8];
    assign Aval = AdderResult[7:0];        
    
    */
    
	load_reg #(.DATA_WIDTH(8)) regA (
        .clk(clk), 
        .reset(reset_loadB_clearA), 
        .load(A_load), 
        .shift(shift_en), 
        .serial_in(Xval), 
        .data_i(Aval[7:0]), 
        .data_q(Aout[7:0]));
        
    load_reg #(.DATA_WIDTH(1)) regX ( //treat this as the 9th bit of reg A
        .clk(clk), 
        .reset(reset_loadB_clearA), 
        .load(A_load), 
        .shift(0), //we dont shift in this household 
        .serial_in(x_in), 
        .data_i(x_in), 
        .data_q(Xval));

    load_reg #(.DATA_WIDTH(8)) regB (
        .clk(clk), 
        .reset(0), //we don't clear in this household 
        .load(reset_loadB_clearA), 
        .shift(shift_en),
        .serial_in(Aval[0]), //shift in LSB of A (since we are kind of treading A+B as a long single number) 
        .data_i(sw_i[7:0]), 
        .data_q(Bout[7:0]));

    


    /*
    ShiftCounter counter(.clk(clk), .reset(reset_loadB_clearA | clear_x_a), .shift_en(shift_en), .ShiftCount(count));
    
	control controlMachine(.clk(clk), .run(run), .m(m), .reset(reset_loadB_clearA), .counter(count[2:0]), .shift(shift_en), .LoadA(A_load), .clear_x_a(clear_x_a));
	*/
		
endmodule