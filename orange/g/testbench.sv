module testbench;
    reg [2:0] A;
    wire [7:0] Y;

    decoder_3to8 uut (A, Y);

    initial begin
        A = 3'b000;
        #10 A = 3'b001;
        #10 A = 3'b010;
        #10 A = 3'b011;
        #10 A = 3'b100;
        #10 A = 3'b101;
        #10 A = 3'b110;
        #10 A = 3'b111;
        #10 $finish;
    end
endmodule
