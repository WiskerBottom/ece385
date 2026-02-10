module testbench(); //even though the testbench doesn't create any hardware, it still needs to be a module

timeunit 10ns;  // This is the amount of time represented by #1 
timeprecision 1ns;


// These signals are internal because the processor will be 
// instantiated as a submodule in testbench.
logic clk;
logic reset;
logic run_i;
logic [15:0] sw_i;

logic [15:0] sw_s;
logic [15:0] out;
logic [15:0] s;

logic sign_led;
logic 		sign_led;
logic [7:0]  hex_seg_a;
logic [3:0]  hex_grid_a;
logic [7:0]  hex_seg_b;
logic [3:0]  hex_grid_b;

// To store expected results
logic [3:0] ans_1a;
logic [3:0] ans_2b;

// Instantiating the DUT (Device Under Test)
// Make sure the module and signal names match with those in your design
adder_toplevel addertop0 (.*);	


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
	reset = 1;		// Toggle Reset (use blocking operator), because we want to have this happen 'first'
	run_i <= 1'b0;
    #100
    reset = 0;
    #100  
    //sw_i <= 16'b0111000011110000; //first input to adder
    sw_i <= 1;
    #100
    
    //first run of add
    run_i <= 1'b1;
    #100
    run_i <= 1'b0;
    #100 // wait for comp to finish
    //end of first run of add
    
    //sw_i <= 16'b0111000011110000; //load second number
    
    //second run of add
    run_i <= 1'b1;
    #100
    run_i <= 1'b0;
    #100 //wait for comp to finish
    //end of second run of add
    
    
	assert (s[15:0] == 16'b01110000111100000) else $display("calculation incorrect for select_adder");

	$finish(); //this task will end the simulation if the Vivado settings are properly configured

end
endmodule
