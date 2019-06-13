module MemoryA (

output reg [7:0] DataOutA,
input      [2:0] AddrA   ,
input      [7:0] DataInA ,
input      WEA
);

	reg [7:0] RAM_A [0:7];

	always @(WEA, AddrA, DataInA)
	begin
		if (WEA)
			RAM_A[AddrA] = DataInA;
		else
			DataOutA = RAM_A[AddrA];
	end
endmodule 