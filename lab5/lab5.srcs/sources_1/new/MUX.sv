`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 03:21:02 PM
// Design Name: 
// Module Name: MUX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX #(parameter DATA_WIDTH = 1, parameter DATA_SELECT = 1) (


input logic [DATA_WIDTH-1:0] data_1,
input logic [DATA_WIDTH-1:0] data_2,
input logic  [DATA_WIDTH-1:0] data_3,
input logic [DATA_WIDTH-1:0] data_4,

input logic  [DATA_SELECT-1:0] muxselect,

output logic [DATA_WIDTH-1:0] data_out

    );
   
always_comb begin 
//data_out = (DATA_WIDTH-1)'b0;

        case(muxselect)
        2'b00: data_out = data_1;
        2'b01: data_out = data_2;
        2'b10: data_out = data_3;
        2'b11: data_out = data_4;
        
      endcase
end  
    
endmodule



