module testbench;
    reg [2:0] n;
    wire [2:0] g;
    gray_code_counter dut (n, g);

    initial begin
        n = 3'b000;
        #10 n = 3'b001;
        #10 n = 3'b010;
        #10 n = 3'b011;
        #10 n = 3'b100;
        #10 n = 3'b101;
        #10 n = 3'b110;
        #10 n = 3'b111;
    end
endmodule
