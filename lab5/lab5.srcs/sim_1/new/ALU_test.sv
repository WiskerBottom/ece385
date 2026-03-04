module testbench();

timeunit 10ns;
timeprecision 1ns;

logic [15:0] sr1_out;
logic [15:0] sr2_mux_out;
logic [2:0] aluk;

logic [15:0] alu_out;



ALU ALU0(.*);

initial begin 
    sr1_out <= 16'h000F;
    sr2_mux_out <= 16'h00F0; //register 2
    aluk <= 2'b00; //add
    #10
    aluk <= 2'b01; //and
    #10
    aluk <= 2'b10; //NOT SR1
    #10
    aluk <= 2'b11; //pass SR1
    
    $finish();

end 
endmodule

