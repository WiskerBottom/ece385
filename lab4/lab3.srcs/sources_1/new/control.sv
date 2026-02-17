//Two-always example for state machine

module control (
	input  logic clk, 
	input  logic run,
	input  logic m,
	input  logic reset,
	input  logic [3:0] counter, //this counts the number of shifts done, we want to go back to idle when this reaches 8

	output logic shift,
	output logic LoadA,
	output logic LoadB,
	output logic clear_x_a
);

// Declare signals curr_state, next_state of type enum
// with enum values of s_start, s_count0, ..., s_done as the state values
// Note that the length implies a max of 8 states, so you will need to bump this up for 8-bits
	enum logic [3:0] {
		s_idle,
		s_add, 
		s_shift,
		s_done,
		s_clear
	} curr_state, next_state; 

	always_comb
	begin
	// Assign outputs based on 'state'
		unique case (curr_state) 
			s_idle: 
			begin
				LoadA = 1'b0;
				LoadB = 1'b0; //B is initialized by the reset button, not the FSM's job
				shift = 1'b0;
				clear_x_a = 1'b0;

				if (run) begin
				    //LoadA = 1'b1;
				    next_state = s_clear;
				end else begin
				    next_state = s_idle;
				end
			end

			s_add: 
			begin
			
			    case (counter[3:0])
                    4'b1000 : begin
                        shift = 1'b0;
                        LoadB = 1'b0;
                        LoadA = 1'b0;
                        clear_x_a = 1'b0;
                        next_state = s_done;
                    end
                    
                    default begin
                    
                        if (m) begin //if m is 1 then do not load the result we get here.
			                LoadA = 1'b1;
			            end else begin
			                LoadA = 1'b0;
			            end
				        LoadB = 1'b0;
				        shift = 1'b0;
				        clear_x_a = 1'b0;

				        next_state = s_shift;
                    
                    end
                endcase
			end

            s_shift:
            begin
           
                
                case (counter[3:0])
                    4'd8 : begin
                        shift = 1'b0;
                        next_state = s_done;
                    end
                    
                    default begin
                        shift = 1'b1;
                        
                        //if (m) begin
                        next_state = s_add; //if m = 1 then add
                        //end else begin
                        //next_state = s_shift; // if m = 0, skip addition this cycle, due to sometimes skipping adding, we need to count shifts, not clocks.
                        //end
                        
                    end
                endcase

                LoadA = 1'b0;
                LoadB = 1'b0;
                clear_x_a = 1'b0;

                
            end
			
			
			s_done:
			begin
			    LoadA = 1'b0;
                LoadB = 1'b0;
                clear_x_a = 1'b0;
                shift = 1'b0;
                if(run) begin
                     next_state = s_done;
                end else begin 
                     next_state = s_idle;
                end
			end 
			 
			 
			s_clear:
			begin
			    clear_x_a = 1'b1;
			    
			    if (m) begin
				        next_state = s_add;
				    end else begin
				        next_state = s_shift;
				    end
				    
			end
			     
			default:  //we should never be here but define regardless so no latch
			begin 
				LoadA = 1'b0;
				LoadB = 1'b0;
				shift = 1'b0;
				clear_x_a = 1'b0;

				next_state = s_idle;
			end
			 
		endcase
	end

	always_ff @(posedge clk)  
	begin
		if (reset)
		begin
			curr_state <= s_idle;
		end
		else 
		begin
	         curr_state <= next_state; //update to next state
		end
	end

endmodule