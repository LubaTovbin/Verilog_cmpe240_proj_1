module Top_Proj_1 (

		output [7:0] RAM_B_DATA_OUT,
		input  [7:0] RAM_A_DATA_IN ,
		input        RESET,
		input        CLK
		);

	wire [2:0] AddrA;
	wire [1:0] AddrB;
	wire [7:0] DOut1;
	reg  [7:0] DOut2;
	wire       IncA;
	wire       IncB;
	wire       WEA;
	wire       WEB;
	wire       Sign;
	wire [7:0] ADDOut; //no overflow assumed
	wire [7:0] SUBOut;
	wire [7:0] DataInB;
	
	assign ADDOut = DOut1 + DOut2;
	assign SUBOut = DOut1 - DOut2;
	assign DataInB = (Sign) ? ADDOut : SUBOut;	
	
	always @(posedge CLK)
	begin
		 DOut2 <= DOut1;
	end
	
	Controller Controller_inst(
			.IncA  (IncA ),
			.IncB  (IncB ), 
			.WEA   (WEA  ),  
			.WEB   (WEB  ),  
			.Reset (RESET),
			.clk   (CLK  )		
		);
			
					
	CounterA CounterA_inst(
			.AddrA (AddrA),
			.IncA  (IncA ),
			.Reset (RESET),
			.clk   (CLK  )
		);
								
			
	MemoryA MemoryA_inst(
			.DataOutA (DOut1  ),
			.AddrA    (AddrA  ),
			.DataInA  (RAM_A_DATA_IN),
			.WEA      (WEA    )
		);  
	
	Comparator Comparator_inst(
			.Sign  (Sign ),
			.Data1 (DOut1),
			.Data2 (DOut2)
		);
		
	CounterB CounterB_inst(
		.AddrB (AddrB),
		.IncB  (IncB ),
		.Reset (RESET),
		.clk   (CLK  )
	);
				
		
	MemoryB MemoryB_inst(
			.DataOutB (RAM_B_DATA_OUT),
			.AddrB    (AddrB         ),
			.DataInB  (DataInB       ),
			.WEB      (WEB           )
		);  
	
endmodule
