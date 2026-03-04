//------------------------------------------------------------------------------
// Company:          UIUC ECE Dept.
// Engineer:         Stephen Kempf
//
// Create Date:    17:44:03 10/08/06
// Design Name:    ECE 385 Given Code - Incomplete ISDU for SLC-3
// Module Name:    Control - Behavioral
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 02-13-2017
//    Spring 2017 Distribution
//    Revised 07-25-2023
//    Xilinx Vivado
//	  Revised 12-29-2023
// 	  Spring 2024 Distribution
// 	  Revised 6-22-2024
//	  Summer 2024 Distribution
//	  Revised 9-27-2024
//	  Fall 2024 Distribution
//------------------------------------------------------------------------------

module control (
	input logic			clk, 
	input logic			reset,

	input logic  [15:0]	ir,
	input logic			ben,

	input logic 		continue_i,
	input logic 		run_i,

	output logic		ld_mar,
	output logic		ld_mdr,
	output logic		ld_ir,
	output logic		ld_pc,
	output logic        ld_led,
	output logic        ld_ben,

						
	output logic		gate_pc,
	output logic		gate_mdr,
	output logic        gate_alu,      //i added this 
	output logic        gate_mar_mux,  //i added this 
	output logic      [1:0]  dr_select,
	output logic      [1:0]  sr1_select,
	output logic      [1:0]  sr2_select,
	output logic        ld_regfile,
	output logic      [1:0] aluk, 
	output logic      [1:0] addr1_mux_select,    
	output logic      [1:0] addr2_mux_select,    
	output logic        mioenmux,
	output logic [1:0]	pcmux_select,
	output logic        ld_cc,
	output logic        nzp_out,
	
	//You should add additional control signals according to the SLC-3 datapath design

	output logic		mem_mem_ena, // Mem Operation Enable
	output logic		mem_wr_ena  // Mem Write Enable
);

	enum logic [19:0] {
		halted, 
		pause_ir1,
		pause_ir2, 
		s_18, 
		s_33_1,
		s_33_2,
		s_33_3,
		s_35,
		//things i added//
		s_32,
		s_1,
		s_5,
		s_9,
		s_6,
		s_25_1,
		s_25_2,
		s_25_3,
		s_16_1,
		s_16_2,
		s_16_3,
		s_27,
		s_7,
		s_23,
		s_16,
		s_0,
		s_22,
		s_12,
		s_4,
		s_21
		
	} state, state_nxt;   // Internal state logic


	always_ff @ (posedge clk)
	begin
		if (reset) 
			state <= halted;
		else 
			state <= state_nxt;
	end
   
	always_comb
	begin 
		
		// Default controls signal values so we don't have to set each signal
		// in each state case below (If we don't set all signals in each state,
		// we can create an inferred latch)
		ld_mar = 1'b0;
		ld_mdr = 1'b0;
		ld_ir = 1'b0;
		ld_pc = 1'b0;
		ld_led = 1'b0;
		
		//changed from default
		mem_mem_ena = 1'b0; // I did not name this, blame whoever wrote the default code
		mem_wr_ena = 1'b0;
		gate_alu = 1'b0;
		gate_mar_mux = 1'b0;
		ld_ben = 1'b0;
		sr1_select = 2'b00;
		sr2_select = 2'b00;
		dr_select = 2'b00;
		ld_regfile = 1'b0;
		//end changes
		
		gate_pc = 1'b0;   
		gate_mdr = 1'b0;  
		ld_cc = 1'b0;
		 
		pcmux_select = 2'b00;
		
	
		// Assign relevant control signals based on current state
		case (state)
			halted: ; 
			s_18 : 
				begin 
					gate_pc = 1'b1;
					ld_mar = 1'b1;
					pcmux_select = 2'b00;
					ld_pc = 1'b1;
				end
			s_33_1, s_33_2, s_33_3 : //you may have to think about this as well to adapt to ram with wait-states
			//I think there are 3 states because it can take multiple clock cycles for ram to respond to us?
				begin
					mem_mem_ena = 1'b1;
					ld_mdr = 1'b1;
					mioenmux = 1'b1; //sets MDR to load from memory
					// I think we will need to add a output to set MIO.EN, cause we need that to write to MDR
				end
			s_35 : 
				begin 
					gate_mdr = 1'b1;
					ld_ir = 1'b1;
				end
			pause_ir1: ld_led = 1'b1; 
			pause_ir2: ld_led = 1'b1; 
			// you need to finish the rest of state output logic..... 
			//things i added//  
			s_1: //AND
                if(ir[5] == 1'b0)
                        begin
                             gate_alu = 1'b1;
                             dr_select = 2'b00;
                             sr1_select = 2'b01;
                             sr2_select = 2'b00;
                             ld_regfile = 1'b1;
                             aluk = 2'b00;
                        end 
                else
                     begin 
                          gate_alu = 1'b1;
                          dr_select = 2'b00;
                          sr1_select = 2'b01;
                          sr2_select = 2'b01;
                          ld_regfile = 1'b1;
                          aluk= 2'b00;
                     end 
             s_5: //NOT
                if(ir[5] == 1'b0)
                        begin
                             gate_alu = 1'b1;
                             dr_select = 2'b00;
                             sr1_select = 2'b01;
                             sr2_select = 2'b00;
                             ld_regfile = 1'b1;
                             aluk = 2'b01;
                        end 
                else
                     begin 
                          gate_alu = 1'b1;
                          dr_select = 2'b00;
                          sr1_select = 2'b01;
                          sr2_select = 2'b01;
                          ld_regfile = 1'b1;
                          aluk= 2'b01;
                     end 
                     
            s_9: //NOT
                if(ir[5] == 1'b0)
                        begin
                             gate_alu = 1'b1;
                             dr_select = 2'b00;
                             sr1_select = 2'b01;
                             sr2_select = 2'b00;
                             ld_regfile = 1'b1;
                             aluk = 2'b10;
                        end 
                else
                     begin 
                          gate_alu = 1'b1;
                          dr_select = 2'b00;
                          sr1_select = 2'b01;
                          sr2_select = 2'b01;
                          ld_regfile = 1'b1;
                          aluk= 2'b10;
                     end 
              
              s_6: //LDR Part 1
              begin
                  gate_mar_mux = 1'b1;
                  dr_select = 2'b00;
                  sr1_select = 2'b01;
                  addr1_mux_select = 2'b00;
                  addr2_mux_select = 2'b10;
              end
              
              s_25_1, s_25_2, s_25_3: //LDR Part 2
              begin				
					mem_mem_ena = 1'b1;
					ld_mdr = 1'b1;
					mioenmux = 1'b1; //sets MDR to load from memory
					// I think we will need to add a output to set MIO.EN, cause we need that to write to MDR
			  end
			  
			  s_27: //LDR Part 3
			  begin
			     dr_select = 2'b00; //select IR[11:9] as DR
			     gate_mdr = 1'b1;
			     ld_cc = 1'b1;
			  end
                

              s_7: //STR Part 1
              begin //stolen from s_6 (they are the same)
                  gate_mar_mux = 1'b1;
                  dr_select = 2'b00;
                  sr1_select = 2'b01;
                  addr1_mux_select = 2'b00;
                  addr2_mux_select = 2'b10;
              end
              
              s_23: //STR Part 2
              begin				
                    sr1_select = 2'b00; //Sets SR_1 to IR[11:9] 
                    aluk = 2'b11; //Pass SR_1 on with no modifications on to BUS
					ld_mdr = 1'b1;
					mioenmux = 1'b0; //sets MDR to load from BUS
			  end
			  
			  s_16_1, s_16_2, s_16_3: //STR Part 3  // the ca said we wont need to wait
			  begin
			     mem_wr_ena = 1'b1; //tell the memory we are about to write
			     gate_mdr = 1'b1;  //i added this 
			     //I think that is literally it.
			  end
			  
			  s_4: //JSR
              begin				
                   dr_select = 2'b01; //ignore whatever IR is for DR and use register 7
                   gate_pc = 1'b0; //get PC onto the bus
                   ld_regfile = 1'b1; //allow regfile to load
			  end
			  
			  s_21: //JSR
              begin				
                   addr1_mux_select = 2'b01; //pass PC to adder
                   gate_pc = 1'b0; //get PC onto the bus
                   ld_pc = 1'b1; //allow pc to update with result from adder
                   addr2_mux_select = 2'b00; //pass SEXT IR[10:0] to adder
			  end			  
              
              s_12: //jmp
              begin
                    sr1_select = 2'b01;
                    aluk = 2'b11; //Pass SR_1 on with no modifications on to BUS
                    pcmux_select = 2'b01; //BUS value passes through mux
                    ld_pc = 1'b0;
              end
              
              s_22:  //br 
                begin
                   addr1_mux_select = 2'b01; //pass PC to adder
                   gate_pc = 1'b0; //get PC onto the bus
                   ld_pc = 1'b1; //allow pc to update with result from adder
                   addr2_mux_select = 2'b01; //pass SEXT IR[8:0] to adder
                end 
                
             s_0:
             begin 
                //ld_ir = 1'b1;
                //ld_ben = (ir[11] & nzp_out) | (ir[10] & nzp_out) | (ir[9] & nzp_out);
             end
                
                    
              
            
      

			default ;
		endcase
	end 


	always_comb
	begin
		// default next state is staying at current state
		state_nxt = state;

		unique case (state)
			halted : 
				if (run_i) 
					state_nxt = s_18;
			s_18 : 
				state_nxt = s_33_1; //notice that we usually have 'r' here, but you will need to add extra states instead 
			s_33_1 :                 //e.g. s_33_2, etc. how many? as a hint, note that the bram is synchronous, in addition, 
				state_nxt = s_33_2;   //it has an additional output register. 
			s_33_2 :
				state_nxt = s_33_3;
			s_33_3 : 
				state_nxt = s_35; //we need to not exit state 33 until the r button is pressed, we are not doing that right now
			s_35 : 
				state_nxt = s_32;
			// pause_ir1 and pause_ir2 are only for week 1 such that TAs can see 
			// the values in ir.
			pause_ir1 : 
				if (continue_i) 
					state_nxt = pause_ir2;
			pause_ir2 : 
				if (~continue_i)
					state_nxt = s_18;
			// you need to finish the rest of state transition logic.....
			
			s_32:
			    unique case(ir[15:12])
			         4'b0001: state_nxt = s_1;
			         4'b0101: state_nxt = s_5;
			         4'b1001: state_nxt = s_9;
			         4'b0000: state_nxt = s_0;
			         4'b1100: state_nxt = s_12;
			         4'b0100: state_nxt = s_4;
			         4'b0110: state_nxt = s_6;
			         4'b0111: state_nxt = s_7;
			         4'b1101: state_nxt = pause_ir1;
			         default: state_nxt = s_18;
			     endcase
			     
			s_1:
			 state_nxt = s_18;
		
		    s_5:
			 state_nxt = s_18;
		    
		    s_9:
			 state_nxt = s_18;
			
			s_6:
			 state_nxt = s_25_1;
			 
			s_25_1:
			 state_nxt = s_25_2;
			
			s_25_2:
			 state_nxt = s_25_3;
		  
		    s_25_3:
		      state_nxt = s_27;
		    
		    s_27:
		      state_nxt = s_18;
		   
		    s_7:
		      state_nxt = s_23;
		      
		    s_23:
		      state_nxt = s_16;
		    
		    s_16_1:
		      state_nxt = s_16_1;
		    
		   s_16_2:
		      state_nxt = s_16_2;
		   
		   s_16_3:
		      state_nxt = s_18;
		   
		   s_0:
                    if(ben == 0)
                        state_nxt = s_18;
                    else
                        state_nxt = s_22;	 
                     	   
		   s_22:
		      state_nxt = s_18;
		   
		   s_12:
		      state_nxt = s_18;
		   
		   s_4:
		      state_nxt = s_21;
		   
		   s_21:
		      state_nxt = s_18;
		   
		   
		   
			     
			     
			 
			
			default :;
		endcase
	end
	
endmodule
