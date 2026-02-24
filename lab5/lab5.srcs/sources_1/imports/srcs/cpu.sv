//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//    Revised 12-29-2023
//    Revised 09-25-2024
//------------------------------------------------------------------------------

module cpu (
    input   logic        clk,
    input   logic        reset,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,
    output  logic [15:0] mem_wdata,
    output  logic [15:0] mem_addr,
    output  logic        mem_mem_ena,
    output  logic        mem_wr_ena
    
);


// Internal connections, follow the datapath block diagram and add the additional needed signals
logic ld_mar; 
logic ld_mdr; 
logic ld_ir; 
logic ld_pc; 
logic ld_led;

logic busmux; //i have to make a bus mux that is going to be a 2:4 mux 
logic mioenmux; //i have to make a 2:1 mux 

logic gate_pc;
logic gate_mdr;

logic gate_alu;  //i added this 
logic gate_mar_mux; 

logic [1:0] pcmux; 

logic [15:0] mar; 
logic [15:0] mdr;
logic [15:0] ir;
logic [15:0] pc;
logic ben;
logic [15:0] bus;


assign mem_addr = mar;
assign mem_wdata = mdr;

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly
control cpu_control (
    .*
);


assign led_o = ir;
assign hex_display_debug = ir;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (),   //i have to figure that out

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc),
    .data_i(),    //pcmux out

    .data_q(pc)
);


//need to make MAR, MDR

load_reg #(.DATA_WIDTH(16)) mar_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mar),
    .data_i(),    ///busoutput 

    .data_q(mar)   
);


load_reg #(.DATA_WIDTH(16)) mdr_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mdr),
    .data_i(),    //output of mioenmux

    .data_q(mdr)
);

busmux BUS (
    .GatePC(gate_pc),
    .GateALU(gate_alu),         //ask do i have to make it and why is it not in the control 
    .GateMARMUX(gate_mar_mux),              
    .GateMDR(gate_mdr),
    .busselect(),
    .busout(bus)
  

);

pcmux PCMUX (
    .adderin(16'b0),   //ask ta do we have to make an adder mux 
    .busin(bus),    
    .pcin(pc),
    .select(pcmux),  //this comes fromn the control unit, ask ta how to connext this 
    .pcmuxout(ld_pc)
    
    
);





endmodule