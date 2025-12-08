`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 12:21:59 PM
// Design Name: 
// Module Name: FourBitSubRipple
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FourBitSubRipple(A1,B1,Diff,No_Borrow);
input [3:0] A1, B1;
output [3:0] Diff;
output No_Borrow;

wire [3:0] B_inverted;
wire carry_out;

assign B_inverted = ~B1;
FourBitFARippleCarry uu0 (.A1(A1),.B1(B_inverted),.CI(1'b1),.S1(DIFF),.CO(carry_out));
assign No_Borrow = carry_out;

endmodule
