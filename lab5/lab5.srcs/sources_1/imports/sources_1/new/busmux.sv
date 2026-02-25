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
input logic  GateMARMUX,
input logic  GatePC,
input logic  GateALU,
input logic  GateMDR,
input logic [15:0] pc_in,
input logic [15:0] adder_mux_in,
input logic [15:0] alu_in,
input logic [15:0] mdr_in,



    
//input logic [3:0] busselect,        //remove 

output logic [15:0] busout
    );
    

always_comb begin
    busout = 16'b0;
   case({GatePC, GateMARMUX, GateALU, GateMDR})
    4'b1000: busout = pc_in;
    4'b0100: busout = adder_mux_in;
    4'b0010: busout = alu_in;
    4'b0001: busout = mdr_in;
   
    endcase
end 
    
    
    
endmodule
