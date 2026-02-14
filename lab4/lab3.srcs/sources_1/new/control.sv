//Two-always example for state machine

module control (
	input  logic clk, 
	input  logic run,
	input  logic m,
	input  logic reset,
	input  logic [2:0] counter, //this counts the number of shifts done, we want to go back to idle when this reaches 8

    output logic nextState,
	output logic shift,
	output logic LoadA,
	output logic LoadB
);

// Declare signals curr_state, next_state of type enum
// with enum values of s_start, s_count0, ..., s_done as the state values
// Note that the length implies a max of 8 states, so you will need to bump this up for 8-bits
	enum logic [7:0] {
		s_idle,
		s_add, 
		s_shift
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
				if (run) begin
				    nextState = s_add;
				end else begin
				    nextState = s_idle;
				end
			end

			s_add: 
			begin
				LoadA = 1'b1;
				LoadB = 1'b0;
				shift = 1'b0;
				nextState = s_shift;
			end

            s_shift:
            begin
           
                
                case (counter[2:0])
                    3'b111 : begin
                        shift = 1'b0;
                        nextState = s_idle;
                    end
                    
                    default begin
                        shift = 1'b1;
                        
                        if (m) begin
                            nextState = s_add; //if m = 1 then add
                        end else begin
                            nextState = s_shift; // if m = 0, skip addition this cycle, due to sometimes skipping adding, we need to count shifts, not clocks.
                        end
                        
                    end
                endcase

                LoadA = 1'b0;
                LoadB = 1'b0;
                
            end
            
			default:  //we should never be here but define regardless so no latch
			begin 
				LoadA = 1'b0;
				LoadB = 1'b0;
				shift = 1'b0;
				nextState = s_idle;
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