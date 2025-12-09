
module Top(clk,A,B,opcode, anode, cathode);
input clk;
input [3:0] A,B;
input [2:0] opcode;
output wire [3:0] anode;
output wire [6:0] cathode;

wire [7:0] result2;
ALU uut1 (.A(A),.B(B),.opcode(opcode),.result(result2));
wire [11:0] result3;
assign result3 = {4'b0000,result2};

reg en1=1'b1;
wire [15:0] bcd_out;
wire rdy;
reg [15:0] bcd_out_ready = 16'b0;
Bin12to16BCD uut2(.clk(clk), .en(en1), .bin_d_in(result3), .bcd_d_out(bcd_out), .rdy(rdy));
multisegDriver uut3 (.clk(clk),.bcd_in(bcd_out_ready),.seg_anode(anode),.seg_cathode(cathode));

always @(posedge clk)
    begin
        if(rdy)
            begin 
                bcd_out_ready <= bcd_out;
            end
    end
endmodule
