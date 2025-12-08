`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 12:41:35 PM
// Design Name: 
// Module Name: FourBitDivider
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


module FourBitDivider(A1, B1, Q);
    input [3:0] A1, B1;
    output reg [3:0] Q;
    
    integer i;
    reg [3:0] temp;
    
    always @(*) begin
        temp = A1;
        Q = 4'd0;
        for (i=0; i<16; i=i+1) begin
            if (temp >= B1) begin
                temp = temp - B1;
                Q = Q + 1'b1;
            end
         end
       end
endmodule
