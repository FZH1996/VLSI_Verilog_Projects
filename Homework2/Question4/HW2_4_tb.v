module FSM_testbench();
reg clk;
reg reset;
reg skip;
wire [1:0] state;
wire [2:0] count;
wire shutter;

FSM testbench_instantiation(clk,reset,skip,state[1:0],count[2:0],shutter);

always begin
clk <= 1'b0;
# 20;
clk <= 1'b1;
# 20;
end

initial begin
$monitor($time,"clk=%b\treset=%b\tskip=%b\tstate=%b\tcount=%b\tshutter=%b\n",clk,reset,skip,state,count,shutter);
# 5;
reset = 1'b1;
# 5;
skip = 1'b0;
# 15;
reset = 1'b0;
# 1030;
skip = 1'b1;
# 1000;
reset = 1'b1;
# 50;
reset = 1'b0;
# 100;
end
endmodule
