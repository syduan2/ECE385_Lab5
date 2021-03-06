module shift_reg_8(input[7:0] parallel_load,
				input serial_in, Clk, 
				input[1:0] mode, //mode 0: nothing, mode 1: shift right, mode 2: load parallel
				output[7:0] parallel_out,
				output serial_out);
	integer i;
	reg[7:0] R;
	assign parallel_out=R;
	assign serial_out=R[8];
	always @(posedge Clk) begin
			if(mode==1) begin
				for(i=8; i>0; i=i-1) begin
					R[i]=R[i-1];
				end
				R[0]=serial_in;
			end else if(mode==2) begin
				R=parallel_load;
			end
	end

endmodule
