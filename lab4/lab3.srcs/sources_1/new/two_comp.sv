module two_comp( input logic [3:0] value, output logic [3:0] two_complement );
    
    logic [3:0] inverted_value;
    logic [16:0] sum;
    assign inverted_value = ~(value); //the negation preformed before adding in two's comp
    
    select_adder adder( //sledgehammer for pin needle ahhhh module
        .a({12'b0, value[3:0]}), //the inverted value
        .b(16'b0), //just 0
        .cin(1), // the +1 done after invert of 2's complement
        .s(sum), 
        .cout(x));
    
    assign two_complement = sum[3:0]; //truncate off the extra data
    
endmodule
