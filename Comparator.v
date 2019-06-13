module Comparator (
output           Sign,
input      [7:0] Data1,
input      [7:0] Data2
);

wire [7:0] Sub;
assign Sub = Data1 - Data2;
assign Sign = Sub[7];
endmodule
