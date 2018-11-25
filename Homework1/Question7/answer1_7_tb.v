module TOP_testbench;
reg [10:0] inps;
wire [4:0] add;
Top instance1(inps[10:0],add[4:0]);

initial
begin
$monitor ($time,"inps = %b \t output = %b \n",inps[10:0],add[4:0]);
#10;
inps[10:0] = 11'b00000011111;
#50;
inps[10:0] = 11'b11000011111;
#50;
inps[10:0] = 11'b00110011011;
#50;
end
endmodule
