`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2026 01:17:30 AM
// Design Name: 
// Module Name: pcmux
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


module pcmux(   //ask ca for select will it get confused
    input logic [15:0] adderin, 
    input logic [15:0] busin,  
    input logic [15:0] pcin, 
    input logic [1:0] pcselect,  
    output logic [15:0] pcmuxout
    );
    
always_comb begin
    case(pcselect)
    2'b00 : pcmuxout = pcin +1;     //not recommended 
    2'b01 : pcmuxout = busin;
    2'b10 : pcmuxout = adderin;
    endcase 
end 

    
    
    
endmodule
