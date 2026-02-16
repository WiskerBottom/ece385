
module ShiftCounter(

    input logic shift_en,
    input logic reset,
    input logic clk,
    
    output logic [3:0] ShiftCount
    
    );
    
	enum logic [3:0] {
		s_count0, 
		s_count1, 
		s_count2, 
		s_count3,
		s_count4,
		s_count5,
		s_count6,
		s_count7,
		s_count8
	} curr_state, next_state; 

//decide what next state should be
always_comb
	begin
		unique case (curr_state) 
			s_count0 : begin
			     next_state = s_count1; 
			     ShiftCount = 4'd0;
			end
			s_count1 : begin
			     next_state = s_count2; 
			     ShiftCount = 4'd1;
			end
			s_count2 : begin
			     next_state = s_count3; 
			     ShiftCount = 4'd2;
			end
			s_count3 : begin
			     next_state = s_count4; 
			     ShiftCount = 4'd3;
			end
			s_count4 : begin
			     next_state = s_count5; 
			     ShiftCount = 4'd4;
			end
			s_count5 : begin
			     next_state = s_count6; 
			     ShiftCount = 4'd5;
			end
			s_count6 : begin
			     next_state = s_count7; 
			     ShiftCount = 4'd6;
			end
			s_count7 : begin
			     next_state = s_count8; 
			     ShiftCount = 4'd7;
			end
			
			s_count8: begin
			    next_state = s_count0;
			    ShiftCount = 4'd8;
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
		    if (shift_en) begin
			     curr_state <= next_state;
			end else begin
			     curr_state <= curr_state;
			end
		end
	end
    
endmodule
