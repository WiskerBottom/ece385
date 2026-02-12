
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2026 06:16:38 PM
// Design Name: 
// Module Name: 2-1mux
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


module mux_8_4( //when C is 1 select [3;0] A
    input logic [3:0] A,
    input logic [3:0] B,
    input logic C,
    output logic [3:0] out
    );
    
    logic [3:0] and_AC;
    logic [3:0] and_NOTCB;
        
    always_comb begin 
        and_AC = A & C;
        and_NOTCB = B & ~C;
        
        out = and_AC | and_NOTCB;
    end
    
endmodule
