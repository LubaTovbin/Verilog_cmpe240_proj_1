module Controller (

output IncA ,
output IncB ,
output WEA  ,
output WEB  ,
input  Reset,
input  clk
);

reg [4:0] cntr;

always @(posedge clk or posedge Reset)
begin
	if (Reset) 
		cntr <= 5'b00000;
	else if (cntr == 5'b11000)
		cntr <= 5'b00000;
		else
		cntr <= cntr + 1;
end

//assign #1 WEA = ~cntr[4] & ( cntr[3] ^ ( cntr[2]|cntr[1]|cntr[0] ));
assign  WEA = (cntr == 1 || cntr == 2 || cntr == 3 || cntr == 4 || cntr == 5 || cntr == 6 || cntr == 7 || cntr == 8) ? 1:0;
assign  IncA = cntr[4]^( cntr[3]|cntr[2]|cntr[1]|cntr[0] );

assign  WEB = (cntr == 11 || cntr == 13 || cntr == 15 || cntr == 17) ? 1:0;
assign  IncB = (cntr == 12 || cntr == 14 || cntr == 16 || cntr == 18 || cntr == 21 || cntr == 22 || cntr == 23 || cntr == 24) ? 1:0;



endmodule 