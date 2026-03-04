`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 03:20:01 PM
// Design Name: 
// Module Name: Reg_File
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





module Reg_File(
input logic [2:0] dr_in,
input logic [15:0] busin,
input logic [2:0] sr1,
input logic [2:0] sr2,    //pass in ir2:0 in cpu 
input logic reset,
input logic clk,
input logic ld_regfile,

output logic [15:0] sr1_out,
output logic [15:0] sr2_out




    );

logic [7:0] ld_reg;
logic [15:0] reg_out0;
logic [15:0] reg_out1;
logic [15:0] reg_out2;
logic [15:0] reg_out3;
logic [15:0] reg_out4;
logic [15:0] reg_out5;
logic [15:0] reg_out6;
logic [15:0] reg_out7;





load_reg #(.DATA_WIDTH(16)) reg0 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[0]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out0)
);


load_reg #(.DATA_WIDTH(16)) reg1 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[1]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out1)
);



load_reg #(.DATA_WIDTH(16)) reg2 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[2]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out2)
);


load_reg #(.DATA_WIDTH(16)) reg3 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[3]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out3)
);



load_reg #(.DATA_WIDTH(16)) reg4 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[4]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out4)
);



load_reg #(.DATA_WIDTH(16)) reg5 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[5]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out5)
);


load_reg #(.DATA_WIDTH(16)) reg6 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[6]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out6)
);


load_reg #(.DATA_WIDTH(16)) reg7 (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_reg[7]),
    .data_i (busin[15:0]),   //comes from the bus 

    .data_q (reg_out7)
);



always_comb begin
    ld_reg = 8'b0;
    if (ld_regfile) begin 
  
        case(dr_in)
        3'b000 : ld_reg[0] = 1'b1;
        3'b001 : ld_reg[1] = 1'b1;
        3'b010 : ld_reg[2] = 1'b1;
        3'b011 : ld_reg[3] = 1'b1;
        3'b100 : ld_reg[4] = 1'b1;
        3'b101 : ld_reg[5] = 1'b1;
        3'b110 : ld_reg[6] = 1'b1;
        3'b111 : ld_reg[7] = 1'b1;
        endcase
    
    end
    
end


    

always_comb begin
    sr1_out = 16'b0;
  
        case(sr1)
        3'b000 : sr1_out = reg_out0;
        3'b001 : sr1_out = reg_out1;
        3'b010 : sr1_out = reg_out2;
        3'b011 : sr1_out = reg_out3;
        3'b100 : sr1_out = reg_out4;
        3'b101 : sr1_out = reg_out5;
        3'b110 : sr1_out = reg_out6;
        3'b111 : sr1_out = reg_out7;
        endcase
    
    
    
end



always_comb begin
    sr2_out = 16'b0;
  
        case(sr2)
        3'b000 : sr2_out = reg_out0;
        3'b001 : sr2_out = reg_out1;
        3'b010 : sr2_out = reg_out2;
        3'b011 : sr2_out = reg_out3;
        3'b100 : sr2_out = reg_out4;
        3'b101 : sr2_out = reg_out5;
        3'b110 : sr2_out = reg_out6;
        3'b111 : sr2_out = reg_out7;
        endcase
    
    
    
end


endmodule




