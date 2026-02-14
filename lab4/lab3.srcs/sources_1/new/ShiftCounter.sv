
module ShiftCounter(

    input logic shift_en,
    input logic reset,
    input logic clk,
    
    output logic [2:0] ShiftCount
    
    );
    
	enum logic [2:0] {
		s_count0, 
		s_count1, 
		s_count2, 
		s_count3,
		s_count4,
		s_count5,
		s_count6,
		s_count7
	} curr_state, next_state; 

//decide what next state should be
always_comb
	begin
		unique case (curr_state) 
			s_count0 : begin
			     next_state = s_count1; 
			     ShiftCount = 3'd0;
			end
			s_count1 : begin
			     next_state = s_count2; 
			     ShiftCount = 3'd1;
			end
			s_count2 : begin
			     next_state = s_count3; 
			     ShiftCount = 3'd2;
			end
			s_count3 : begin
			     next_state = s_count4; 
			     ShiftCount = 3'd3;
			end
			s_count4 : begin
			     next_state = s_count5; 
			     ShiftCount = 3'd4;
			end
			s_count5 : begin
			     next_state = s_count6; 
			     ShiftCount = 3'd5;
			end
			s_count6 : begin
			     next_state = s_count7; 
			     ShiftCount = 3'd6;
			end
			s_count7 : begin
			     next_state = s_count0; 
			     ShiftCount = 3'd7;
			end
			
			default begin //we should never get here, as all state combinations are listed above, put to prevent vivado from throwing a hissy fit
			     next_state = curr_state;
			end
		endcase
	end


//update state on next clock    
	always_ff @(posedge clk)  
	begin
		if (reset)
		begin
			curr_state <= s_count0;
		end
		else 
		begin
			curr_state <= next_state;
		end
	end
    
endmodule
