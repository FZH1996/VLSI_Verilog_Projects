module fixedtofloating;
reg [6:0] fixed;
reg [3:0] mantissa;
reg [2:0] exponent;
always @ (*) begin
if (fixed[5] != fixed[6]) begin
mantissa[3:0] = {fixed[6],fixed[5],fixed[4],fixed[3]};
exponent[2:0] = 3'b000;
end else if (fixed[4] != fixed[6]) begin
mantissa[3:0] = {fixed[5],fixed[4],fixed[3],fixed[2]};
exponent[2:0] = 3'b111;
end else if (fixed[3] != fixed[6]) begin
mantissa[3:0] = {fixed[4],fixed[3],fixed[2],fixed[1]};
exponent[2:0] = 3'b110;
end else if (fixed[2] != fixed[6]) begin
mantissa[3:0] = {fixed[3],fixed[2],fixed[1],fixed[0]};
exponent[2:0] = 3'b101;
end else begin
mantissa[3:0] = {fixed[2],fixed[1],fixed[0],1'b0};
exponent[2:0] = 3'b100;
end
end

initial 
begin
$monitor($time," Fixed Point Input = %b \t Mantissa = %b \t Exponent = %b \n",fixed[6:0],mantissa[3:0],exponent[2:0]);
#10;
fixed[6:0] = 1100100;
#50;
fixed[6:0] = 1010010;
#50;
fixed[6:0] = 0011100;
#50;
fixed[6:0] = 0100100;
#50;
fixed[6:0] = 0001010;
#50;
fixed[6:0] = 1011110;
#50;
fixed[6:0] = 0011000;
#50;
fixed[6:0] = 1110000;
#50;
fixed[6:0] = 1010100;
#50;
fixed[6:0] = 1111110;
#50;
fixed[6:0] = 0010000;
#50;
fixed[6:0] = 0000100;
#50;
fixed[6:0] = 0010010;
#50;
fixed[6:0] = 1111110;
#50;
fixed[6:0] = 0001000;
#50;
end
endmodule