module _32bit_xor_testbench();
`define DELAY 20
 // Inputs
 reg [31:0] a,b;
 // Outputs
 wire [31:0] res;
 _32bit_xor xor32bit(res[31:0],a[31:0],b[31:0]);

initial begin
a[31:0] = 32'b00000000000000000000000000000000;
b[31:0] = 32'b11111111111111111111111111111111;
#`DELAY;
a[31:0] = 32'b11111111111111111111111111111111;
b[31:0] = 32'b11111111111111111111111111111111;
#`DELAY;
a[31:0] = 32'b00000000000000111111111111111111;
b[31:0] = 32'b11111111111111111111111111111111;
#`DELAY;
a[31:0] = 32'b00000000000000111111111111111111;
b[31:0] = 32'b00000000000000000000000000000000;
end
 
 
initial
begin
$monitor("time = %2d, a =%32b, b=%32b, answer=%32b", $time, a, b, res);
end
      
endmodule