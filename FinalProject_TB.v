module FinalProject_TB();
reg clk;
reg [3:0] A,B;
reg [2:0] opcode;
wire [3:0] anode;
wire [6:0] cathode;

Top uut (.clk(clk),.A(A),.B(B),.opcode(opcode), .anode(anode), .cathode(cathode));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
//initialize
A=0;
B=0;
opcode = 0;
#20;
//add
A = 4'b0011;
B = 4'b0011;
opcode = 3'b000;
#800;
//sub
A = 4'b0011;
B = 4'b0011;
opcode = 3'b001;
#800;
//mult
A = 4'b0011;
B = 4'b0011;
opcode = 3'b010;
#800;
//divide
A = 4'b0011;
B = 4'b0011;
opcode = 3'b011;
#800;
//and
A = 4'b0011;
B = 4'b0011;
opcode = 3'b100;
#800;
//or
A = 4'b0011;
B = 4'b0011;
opcode = 3'b101;
#800;
//xor
A = 4'b0011;
B = 4'b0011;
opcode = 3'b110;
#800;
//not
A = 4'b0011;
B = 4'b0011;
opcode = 3'b111;
#800;
$stop;

end
endmodule
