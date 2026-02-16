module two_comp( input logic [7:0] value, output logic [7:0] two_complement );
    
    logic [7:0] inverted_value;
    logic [16:0] sum;
    assign inverted_value = ~(value); //the negation preformed before adding in two's comp
    
    select_adder adder( //sledgehammer for pin needle ahhhh module
        .a({8'b0, inverted_value[7:0]}), //the inverted value
        .b({15'b0,1'b1}), //just 1
        .cin(0),
        .s(sum), 
        .cout(x));
    
    assign two_complement = sum[7:0]; //truncate off the extra data
    
    
    
endmodule
