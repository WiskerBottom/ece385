module testbench();

timeunit 10ns;
timeprecision 1ns;


logic		clk;

logic 		reset;

logic 		run_i;
logic 		continue_i;
logic [15:0] sw_i;

logic [15:0] led_o;
logic [7:0]  hex_seg_left;
logic [3:0]  hex_grid_left;
logic [7:0]  hex_seg_right;
logic [3:0]  hex_grid_right;



processor_top processor_top0 (.*);

initial begin: CLOCK_INITIALIZATION 
    clk = 1'b1;
end

always begin: CLOCK_GENERATION
    #1 clk = ~clk;
end

initial begin 
    continue_i <= 0;
    reset = 1;
    run_i <= 0;
    #100;
    reset = 0;
    #100
    
    sw_i <= 16'h0031;
    
    #20
    
    run_i <= 1; 
    
    #100
    
    run_i <= 0; 
    
    #100

    sw_i <= 16'h0002;
    
    
    
    #100
    
    continue_i <= 1; 
    
    #100
    
    continue_i <= 0; 
    
    sw_i <= 16'h0002;
    
        
    #100
    
    continue_i <= 1; 
    
    #100
    
    continue_i <= 0; 
    
    #100
    
    
    
    $finish();

end 
endmodule
