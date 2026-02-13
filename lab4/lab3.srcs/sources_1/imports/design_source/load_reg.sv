module load_reg #(parameter DATA_WIDTH = 8) 
    // define a parameter for the data width of the register
                             // so we don't have to make a new module for every register size
                             // Here, the default is set to 1
                             // changed to 8 bits for lab 4
(
	input  logic	    clk, 
	input  logic	    reset, 
	input  logic	    load,
	input  logic        shift,
	input  logic        serial_in,
	input  logic [DATA_WIDTH-1:0] data_i, // set input/output size based on parameter

	output logic [DATA_WIDTH-1:0] data_q
);

	logic [DATA_WIDTH-1:0] data_d;

	always_comb
	begin
		if (load) begin
			data_d = data_i;
		end else begin
		// Loading data_i into register when load is set (will either be switches or result of sum)
			data_d = data_q;
		end
	end
					
	always_ff @(posedge clk)
	begin
	
            begin
                // Setting the output data_o of the register to zeros as Reset is pressed
                if(reset) begin //notice that this is a synchronous reset
                    data_q <= '0;
                end else begin
                    if (shift) begin
	                    data_q <= {serial_in, data_q[2:0]}; //shift existing bits and add serial info
	                end else begin 
                        data_q <= data_d;
                    end
                end
            end
	end
		
endmodule
