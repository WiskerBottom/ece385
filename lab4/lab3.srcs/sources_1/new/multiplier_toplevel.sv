//Top level for ECE 385 adders lab
//modified for Spring 2024

//Note: lowest 2 HEX digits will reflect lower 8 bits of switch input
//Upper 4 HEX digits will reflect value in the accumulator


module multiplier_toplevel   (
	input  logic		reset_loadB_clearA,
	input  logic        clk,
	input  logic 		run, // _i stands for input
	input  logic [7:0] sw_i,

	output logic [7:0]  Aout,
	output logic [7:0]  Bout,
	output logic        Xval,
	//temp
	output logic x_in,
	output logic m,
	
	//end temp
	output logic [3:0]  hex_grid,
	output logic [7:0]  hex_seg
);
    logic A_load;  
	logic clear_x_a;
	logic [15:0] AdderResult;
    logic cin;
    logic shift_en;
    logic [7:0] sw_i_2_comp;
    logic [7:0] A_new;
    logic [3:0] count; //this is going to count what addition we are currently on, this will require an FSM (see ShiftCounter).
    assign m = Bout[0];

    

    two_comp sw_comp(.value(sw_i[7:0]), .two_complement(sw_i_2_comp));

    logic [7:0] two_complement_mux_out;
    mux #(.DATA_WIDTH(8)) adder_input_mux ( //when C is 1, output A
        .A(sw_i_2_comp[7:0]),
        .B(sw_i[7:0]),
        .C(m & count[2] & count[1] & count[0] & ~count[3]), //only 1 on 8th count and if m is 1    
        .out(two_complement_mux_out));

	select_adder adder(
        .a({two_complement_mux_out[7], two_complement_mux_out[7], two_complement_mux_out[7], two_complement_mux_out[7], two_complement_mux_out[7], two_complement_mux_out[7], two_complement_mux_out[7], two_complement_mux_out[7], two_complement_mux_out}), 
        .b({Aout[7], Aout[7], Aout[7], Aout[7], Aout[7], Aout[7], Aout[7], Aout[7], Aout[7:0]}), 
        .cin(0), 
        .s(AdderResult[15:0]));
            
    assign x_in = AdderResult[8];
    assign A_new = AdderResult[7:0];        
    
	load_reg #(.DATA_WIDTH(8)) regA (
        .clk(clk), 
        .reset(reset_loadB_clearA | clear_x_a), 
        .load(A_load), 
        .shift(shift_en), 
        .serial_in(Xval), 
        .data_i(A_new[7:0]), 
        .data_q(Aout[7:0]));
        
    load_reg #(.DATA_WIDTH(1)) regX ( //treat this as the 9th bit of reg A
        .clk(clk), 
        .reset(reset_loadB_clearA | clear_x_a), 
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
        .serial_in(Aout[0]), //shift in LSB of A (since we are kind of treading A+B as a long single number) 
        .data_i(sw_i[7:0]), 
        .data_q(Bout[7:0]));

    ShiftCounter counter(.clk(clk), .reset(reset_loadB_clearA | clear_x_a), .shift_en(shift_en), .ShiftCount(count));
    
	control controlMachine(.clk(clk), .run(run), .m(m), .reset(reset_loadB_clearA), .counter(count[3:0]), .shift(shift_en), .LoadA(A_load), .clear_x_a(clear_x_a));
		
endmodule