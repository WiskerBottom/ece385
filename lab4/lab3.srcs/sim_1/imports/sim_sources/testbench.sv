module testbench(); //even though the testbench doesn't create any hardware, it still needs to be a module

timeunit 10ns;  // This is the amount of time represented by #1 
timeprecision 1ns;


logic clk;
logic m;
logic reset_loadB_clearA;
logic [16:0] sum;
logic [7:0] sw_i;
logic [7:0] Aout;
logic [7:0] Bout;
logic Xval;
logic x_in;
//logic        clk,
logic 		run; // _i stands for input
//logic [7:0] sw_i,

//logic [7:0]  Aval;
logic        Xval;
logic [3:0]  hex_grid;
logic [7:0]  hex_seg;


// Instantiating the DUT (Device Under Test)
// Make sure the module and signal names match with those in your design
multiplier_toplevel multiplier_toplevel0  (.*);	


initial begin: CLOCK_INITIALIZATION
	clk = 1'b1;
end 

// Toggle the clock
// #1 means wait for a delay of 1 timeunit, so simulation clock is 50 MHz technically 
// half of what it is on the FPGA board 

// Note: Since we do mostly behavioral simulations, timing is not accounted for in simulation, however
// this is important because we need to know what the time scale is for how long to run
// the simulation
always begin : CLOCK_GENERATION
	#1 clk = ~clk;
end

// Testing begins here
// The initial block is not synthesizable on an FPGA
// Everything happens sequentially inside an initial block
// as in a software program

// Note: Even though the testbench happens sequentially,
// it is recommended to use non-blocking assignments for most assignments because
// we do not want any dependencies to arise between different assignments in the 
// same simulation timestep. The exception is for reset, which we want to make sure
// happens first. 
initial begin
    /*
    run <= 1'b0;
    reset_loadB_clearA <= 1'b1;
    shift_en <= 1'b0;
    m <= 1'b0;
    repeat (10) @(posedge clk);
    reset_loadB_clearA <= 1'b0;
    #5;
    m <= 1'b0;
    run <= 1'b1;
    */
    
    
    /*
        
    sw_i <= 8'b00011101; //value we are repeatedly adding

    
    
    A_load <= 8'b00000111;
    shift_en <= 1'b1;
    Aval[7:0] <= 8'b11100000;
    reset_loadB_clearA <= 1'b1;
    
    
    reset = 0;
    #100  
    
    serial_in <= 1'b1;
    data_i[7:0] <= 8'b11000011;
    #100
    
    @(posedge clk);
    load <= 1'b1;
    
    @(posedge clk);
    load <= 1'b0;
    
    
    @(posedge clk);
    shift <= 1'b1;
    
    @(posedge clk);
    shift <= 1'b0;
    
    #100
    
    */
    
    reset_loadB_clearA <= 1'b0;
    run <= 1'b0;
    
    sw_i <= 8'b11000101; //value we are repeatedly adding
    //sw_i <= 8'b11111111; //value we are repeatedly adding
    
    
    #10
    
    @(posedge clk);
    reset_loadB_clearA <= 1'b1;
    @(posedge clk);
    reset_loadB_clearA <= 1'b0;
    
    sw_i <= 8'b00000111;
    //sw_i <= 8'b11111111;

    
    #10
    
    @(posedge clk);
    run <= 1'b1;
    @(posedge clk);
    run <= 1'b0;
    
    #60
    
    
    @(posedge clk);
    run <= 1'b1;
    @(posedge clk);
    run <= 1'b0;
    
    #60
    
    @(posedge clk);
    run <= 1'b1;
    @(posedge clk);
    run <= 1'b0;
    
    #60
    
	$finish(); //this task will end the simulation if the Vivado settings are properly configured

end
endmodule
