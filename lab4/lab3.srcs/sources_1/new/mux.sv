`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2026 11:01:39 PM
// Design Name: 
// Module Name: mux
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



module mux #(parameter DATA_WIDTH = 8) ( //when C is 1 select [3;0] A
    input logic [DATA_WIDTH-1:0] A,
    input logic [DATA_WIDTH-1:0] B,
    input logic C,
    output logic [DATA_WIDTH-1:0] out
    );
    
    logic [DATA_WIDTH-1:0] and_AC;
    logic [DATA_WIDTH-1:0] and_NOTCB;
        
    always_comb begin 
        and_AC = A & C;
        and_NOTCB = B & ~C;
        
        out = and_AC | and_NOTCB;
    end
    
endmodule
