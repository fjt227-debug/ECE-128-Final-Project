`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 12:20:54 PM
// Design Name: 
// Module Name: OnebitFA
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


module OnebitFA(A1,B1,CI,S1,CO);

input A1,B1,CI;
output S1,CO;

assign S1 = (A1 ^ B1) ^ CI;

assign CO = (A1 & B1) | ((A1^B1) & CI);

endmodule
