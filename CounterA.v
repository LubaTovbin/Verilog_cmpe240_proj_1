module CounterA (

output reg [2:0] AddrA,
input            IncA,
input            Reset,
input            clk
);

always @(posedge clk or posedge Reset)
begin
	if (Reset)
		 AddrA <= 3'b000;
	else if (IncA)
// the counter rolls over automatically
		 AddrA <= AddrA + 1;
	
end
endmodule 
