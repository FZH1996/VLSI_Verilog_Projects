module float2fixed_tb;
reg   [5:0] mantissa;
reg   [2:0] exponent;
wire  [12:0] fixed;

float2fixed FF(mantissa[5:0],exponent[2:0], fixed[12:0]);

initial 
begin

$monitor($time, "mantissa = %b \t exponent = %b \t fixed = %b \t",mantissa[5:0],exponent[2:0],fixed[12:0]);

mantissa[5:0] = 6'b111011;
exponent[2:0] = 3'b101;
#50;

mantissa[5:0]    = 6'b011001;
exponent[2:0]     = 3'b101;
#50;

mantissa[5:0] = 6'b111111;
exponent[2:0] = 3'b111;
#50;

mantissa[5:0] = 6'b100011;
exponent[2:0] = 3'b101;
#50;

mantissa[5:0] = 6'b110000;
exponent[2:0] = 3'b100;
#50;

mantissa[5:0] = 6'b011011;
exponent[2:0] = 3'b100;
#50;

mantissa[5:0] = 6'b011001;
exponent[2:0] = 3'b111;
#50;

mantissa[5:0] = 6'b011011;
exponent[2:0] = 3'b110;
#50;

mantissa[5:0] = 6'b011110;
exponent[2:0] = 3'b010;
#50;


mantissa[5:0] = 6'b111111;
exponent[2:0] = 3'b011;
#50;

mantissa[5:0] = 6'b011011;
exponent[2:0] = 3'b000;
#50;

mantissa[5:0] = 6'b111100;
exponent[2:0] = 3'b001;
#50;

mantissa[5:0] = 6'b000000;
exponent[2:0] = 3'b100;
#50;

mantissa[5:0] = 6'b000001;
exponent[2:0] = 3'b100;
#50;
mantissa[5:0] = 6'b111000;
exponent[2:0] = 3'b001;
end
endmodule
