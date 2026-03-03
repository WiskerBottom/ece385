`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 05:07:46 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input logic sr1_out,
input logic sr2_mux_out,
input logic [2:0] aluk,

output logic [15:0] alu_out
    );
    
always_comb begin 
alu_out = 2'b00;

    case(aluk) 
    2'b00: alu_out = sr1_out + sr2_mux_out;
    2'b01: alu_out = sr1_out & sr2_mux_out;
    2'b10: alu_out = ~sr1_out;
    2'b11: alu_out = sr1_out;
    endcase
    
end 
    


    
endmodule
