module testbench(); //even though the testbench doesn't create any hardware, it still needs to be a module

timeunit 10ns;  // This is the amount of time represented by #1 
timeprecision 1ns;


logic clk;
logic reset;
logic load;
logic shift;
logic serial_in;
logic [7:0] data_i; //data in
logic [7:0] data_q; //data out


// Instantiating the DUT (Device Under Test)
// Make sure the module and signal names match with those in your design
load_reg #(.DATA_WIDTH(8)) regA_0  (.*);	


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
    serial_in <= 1'b0;
    load <= 1'b0;
    shift <= 1'b0;
    #100
    
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
    
	$finish(); //this task will end the simulation if the Vivado settings are properly configured

end
endmodule
