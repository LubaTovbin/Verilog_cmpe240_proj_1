module Top_Proj_1_TB (
		
		);

	wire [7:0] RAM_B_DATA_OUT; 
	reg [7:0] RAM_A_DATA_IN ; 
	reg 	  RESET         ;          
	reg 	  CLK = 0;
	integer i = 0;
	
	initial
	begin
		     RESET = 1;
		#27  RESET = 0;
	end
	
	always @(posedge CLK)
	begin
		RAM_A_DATA_IN <= $random;
		//RAM_A_DATA_IN <= i;
                //i <= i + 1;
	end
	
/*	
	initial //memory content initialization
	begin
		$readmemh(memoryA.list, RAM_A);
	end
*/	 
	
	always #5 CLK = !CLK;
	
	Top_Proj_1 Top_Proj_1(
			.RAM_B_DATA_OUT (RAM_B_DATA_OUT), 
			.RAM_A_DATA_IN  (RAM_A_DATA_IN ), 
			.RESET          (RESET         ),          
			.CLK            (CLK           )  
               ); 
endmodule
