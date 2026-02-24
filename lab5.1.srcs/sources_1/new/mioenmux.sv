`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2026 01:07:53 PM
// Design Name: 
// Module Name: mioenmux
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


module mioenmux( 
input logic [15:0] busin,
input logic [15:0] rdata,
input logic [1:0] mioselect,

output logic [15:0] miomuxout 
    );
    
always_comb begin
    case(mioselect)
    2'b00: miomuxout = busin;
    2'b01: miomuxout = rdata;
    endcase
   
end
    
endmodule
