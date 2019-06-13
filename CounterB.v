module CounterB (
// increments every second clk edge; two times slower than CounterA
output reg [1:0] AddrB,
input            IncB ,
input            Reset,
input            clk
);

//reg clk_div_2 = 0;
/*
always @(posedge clk)
begin
	clk_div_2 <= ~clk_div_2;
end
*/
always @(posedge clk or posedge Reset)
begin
	if (Reset)
		 AddrB <= 2'b00;
	else if (IncB)
// the counter rolls over automatically
		 AddrB <= AddrB + 1;
	
end
endmodule 