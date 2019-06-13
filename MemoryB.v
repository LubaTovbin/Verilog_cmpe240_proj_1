module MemoryB (

output reg [7:0] DataOutB,
input      [1:0] AddrB   ,
input      [7:0] DataInB ,
input      WEB
);
	reg [7:0] RAM_B [0:3];
	
	always @(*)
	begin
		if (WEB)
			RAM_B[AddrB] = DataInB;
		else
			DataOutB = RAM_B[AddrB];
	end
endmodule 