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

logic mioenmux; //i have to make a 2:1 mux 

logic gate_pc;
logic gate_mdr;

logic gate_alu;  //i added this 
logic gate_mar_mux; 

logic [1:0] pcmux_select; 
logic [15:0] mar; 
logic [15:0] mdr;
logic [15:0] mdr_in;
logic [15:0] ir;
logic [15:0] pc;
logic [15:0] pc_input;
logic ben;
logic [15:0] bus;
logic dr_select;
logic [2:0] dr_mux_out;
logic sr1_select;
logic sr2_select;
logic [2:0] sr1_mux_out;
logic [15:0] sr1_out;
logic [15:0] sr2_out;
logic addr1_mux_select;
logic [15:0] addr1_mux_out;
logic [1:0] addr2_mux_select;
logic [15:0] addr2_mux_out;
logic [1:0] aluk;
logic [15:0] alu_out;
logic [15:0] addr_adder;
logic [15:0] sr2_mux_out;
logic ld_ben;
logic ben_out;

logic ld_regfile;

logic ld_cc;
logic [2:0] nzp;
logic [2:0] nzp_out;

assign mem_addr = mar; //why are these here they put it here not me 
assign mem_wdata = mdr;

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly
control cpu_control (
    .*
);



assign hex_display_debug = ir;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (bus[15:0]),   //comes from the bus 

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc), //value from control unit, determines if we load on the next rising clock or not
    .data_i(pc_input),    //this is the input value that the pc will take if loaded, comes from PCMUX

    .data_q(pc)
);


//need to make MAR, MDR

load_reg #(.DATA_WIDTH(16)) mar_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mar),
    .data_i(bus),    ///busoutput 

    .data_q(mar)   
);


load_reg #(.DATA_WIDTH(16)) mdr_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mdr),
    .data_i(mdr_in[15:0]),    //output of mioenmux

    .data_q(mdr)
);


//assign ben = ((ir[11] && nzp_out[2]) || (ir[10] && nzp_out[1]) || (ir[9] && nzp_out[0])); // | (nzp_out == 3'b000)
assign ben = (ir[11] & nzp_out[2]) | (ir[10] & nzp_out[1]) | (ir[9] & nzp_out[0]); // | (nzp_out == 3'b000)
//assign led_o[0] = ben_out;
//assign led_o[3:1] = nzp_out;
assign led_o = ir;
//assign ben = 1'b1;



always_comb
begin


    if(bus == 16'b0) begin
        nzp = 3'b010;
    end else if(bus[15] == 1'b1) begin
        nzp = 3'b100;
    end else begin
        nzp = 3'b001;
    end
    /* 
    if(bus[15] == 1'b1) begin
        nzp = 3'b100;
    end else if(bus[15:0] == 16'b0) begin
        nzp = 3'b010;
    end else begin
        nzp = 3'b001;
    end
    */
end 

load_reg #(.DATA_WIDTH(3)) nzp_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_cc),
    .data_i (nzp),   

    .data_q (nzp_out)
);


load_reg #(.DATA_WIDTH(3)) BEN (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ben),
    .data_i (ben),   

    .data_q (ben_out)
);

busmux BUS (
    .GateMARMUX(gate_mar_mux),
    .GatePC(gate_pc),
    .GateALU(gate_alu),
    .GateMDR(gate_mdr),
    .pc_in(pc[15:0]),
    .adder_mux_in(addr_adder),   //change for lab5.2
    .alu_in(alu_out), //change for lab5.2)
    .mdr_in(mdr[15:0]),
    .busout(bus[15:0])
  

);

pc_mux PCMUX (
    .adderin(addr_adder),   //ask ta do we have to make an adder mux 
    .busin(bus[15:0]),    
    .pcin(pc),
    .pcselect(pcmux_select),  //this comes fromn the control unit
    .pcmuxout(pc_input) //writes to pc_input which is the potential next value for the pc register (if control unit tells it to load)
    
    
);

mioenmux MIOENMUX(
    .busin(bus[15:0]),
    .cpu_rdata(mem_rdata[15:0]),    //might change
    .mioselect(mem_mem_ena),           //i changed this to mem enable
    .miomuxout(mdr_in[15:0])


);


MUX  #(.DATA_WIDTH(3), .DATA_SELECT(1)) dr_mux(
    .data_1(ir[11:9]),
    .data_2(3'b111),
    .data_3(),  //might be error 
    .data_4(),
    .muxselect(dr_select),   //add it to control
    .data_out(dr_mux_out)

);


MUX  #(.DATA_WIDTH(3), .DATA_SELECT(1)) SR1_mux(
    .data_1(ir[11:9]),
    .data_2(ir[8:6]),
    .data_3(),  //might be error 
    .data_4(),
    .muxselect(sr1_select),   //add it to control
    .data_out(sr1_mux_out)

);


MUX  #(.DATA_WIDTH(16)) SR2_mux(
    .data_1(sr2_out),
    .data_2({{11{ir[3]}},ir[4:0]}),
    .data_3(),  //might be error 
    .data_4(),
    .muxselect(sr2_select),   //add it to control
    .data_out(sr2_mux_out)

);


Reg_File reg_file(
    .dr_in(dr_mux_out),
    .busin(bus[15:0]),
    .sr1(sr1_mux_out),
    .sr2(ir[2:0]),
    .reset(reset),
    .clk(clk),
    .sr1_out(sr1_out),
    .sr2_out(sr2_out),
    .ld_regfile(ld_regfile)

);


ALU ALU0( //99% sure this should be ALU instance instead of a mux instance
    .sr1_out(sr1_out),
    .sr2_mux_out(sr2_mux_out),
    .aluk(aluk),   //add it to control
    .alu_out(alu_out)

);



MUX  #(.DATA_WIDTH(16)) ADDR1MUX(
    .data_1(sr1_out),
    .data_2(pc),
    .data_3(),  //might be error 
    .data_4(),
    .muxselect(addr1_mux_select),   //add it to control
    .data_out(addr1_mux_out)

);



MUX  #(.DATA_WIDTH(16), .DATA_SELECT(2)) ADDR2MUX(
    .data_1({{5{ir[10]}},ir[10:0]}),
    .data_2({{7{ir[8]}},ir[8:0]}),
    .data_3({{10{ir[5]}},ir[5:0]}),  //might be error 
    .data_4(16'b0),
    .muxselect(addr2_mux_select),   //add it to control
    .data_out(addr2_mux_out)

);

assign addr_adder = addr2_mux_out + addr1_mux_out;

//memory MEMORY (
//    .clk(clk),
//    .reset(reset),
//    .data(mdr[15:0]), //if writing to memory, input goes here
//    .address(mar[15:0]), //if writing to memory, address you are writing to goes here
//    .ena(mem_mem_ena), //I think this is general enable (read enable)?
//    .wren(mem_wr_ena), //I think this is write enable?
//    .readout(mem_rdata) //data output, used when reading
//); they already did that for us 






endmodule