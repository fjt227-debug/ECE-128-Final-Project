
module FinalProject_TB();
reg clk;
reg [3:0] A;
reg [3:0] B;
reg [2:0] opcode;
wire [3:0] anode;
wire [6:0] cathode;

Top uut (.clk(clk),.A(A),.B(B),.opcode(opcode), .anode(anode), .cathode(cathode));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
      
        A = 0; 
        B = 0; 
        opcode = 0;
        #20;

        //add
        A = 4'd5; 
        B = 4'd3; 
        opcode = 3'b000; 
        #500000;
        //subtract
        A = 4'd9; 
        B = 4'd2; 
        opcode = 3'b001; 
        #500000;
        //multiply
        A = 4'd4; 
        B = 4'd3; 
        opcode = 3'b010; 
        #500000;
        //divide
        A = 4'd9; 
        B = 4'd3; 
        opcode = 3'b011; 
        #500000;
        //and
        A = 4'd7; 
        B = 4'd9; 
        opcode = 3'b100; 
        #500000;
        //or
        A = 4'd6; 
        B = 4'd10; 
        opcode = 3'b101; 
        #500000;
        //xor
        A = 4'd5; 
        B = 4'd2; 
        opcode = 3'b110; 
        #500000;
        //not
        A = 4'd9; 
        B = 4'd0; 
        opcode = 3'b111; 
        #500000;

        $stop;
    end

endmodule
