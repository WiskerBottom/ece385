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
input logic [15:0] GateMARMUX,
input logic [15:0] GatePC,
input logic [15:0] GateALU,
input logic [15:0] GateMDR,
input logic [3:0] busselect,

output logic [15:0] busout
    );
    

always_comb begin
    case(busselect)
    4'b0000: busout = GatePC;
    4'b0001: busout = GateMARMUX;
    4'b0010: busout = GateALU;
    4'b0100: busout = busselect;
    endcase 
end 
    
    
    
endmodule
