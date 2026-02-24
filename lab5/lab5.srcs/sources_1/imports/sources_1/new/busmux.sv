`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2026 01:35:58 AM
// Design Name: 
// Module Name: busmux
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


module busmux(
input logic [1:0] GateMARMUX,
input logic [1:0] GatePC,
input logic [1:0] GateALU,
input logic [1:0] GateMDR,
input logic [

    
//input logic [3:0] busselect,        //remove 

output logic [15:0] busout
    );
    

always_comb begin
   case({GatePC, GateMARMUX, GateALU, GateMDR})
    4'b1000: busout = pc 
    4'b0100: 
   

    endcase
end 
    
    
    
endmodule
