
module ALU(A,B,opcode,result);
input [3:0] A,B;
input [2:0] opcode;
output reg [7:0] result;

wire [7:0] product; //wire to connect output of mult
//combinational multiplier instantiation
CombinationalMult uut1 (.a(A),.b(B),.product(product));
//4-bit adder
wire [3:0] partial_sum;
wire c_out;
FourBitFARippleCarry uut2 (.A1(A),.B1(B),.CI(1'b0),.S1(partial_sum),.CO(c_out));
wire [7:0] sum;
assign sum = {3'b000, c_out, partial_sum};
//4-bit subtractor
wire[3:0] partial_diff;
wire c_out2;
FourBitSubRipple uut3(.A1(A),.B1(B),.Diff(partial_diff),.No_Borrow(c_out2));
wire [7:0] diff;
assign diff = {4'b0000, partial_diff};
//divider
wire [3:0] partial_Q;
FourBitDivider uut4(.A1(A),.B1(B), .Q(partial_Q));
wire [7:0] Q;
assign Q = {4'b0000, partial_Q};


always @(*)
    begin
    case(opcode)
        
        3'b000: result = sum; //add
        3'b001: result = diff;
        3'b010: result = product;
        3'b011: result = Q;
        3'b100: result = A & B; //and
        3'b101: result = A | B; //or
        3'b110: result = A^B; //xor
        3'b111: result = {4'b0000,~A}; //not
        
        endcase
    end


endmodule
