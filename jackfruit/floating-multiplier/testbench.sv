module testbench;
    logic [31:0] a, b, y;

    multiplier dut(a, b, y);

    initial begin
        a = 32'h3fc00000;
        b = 32'h40000000;
        #10;

        a = 32'h40400000;
        b = 32'h3f800000;
        #10;

        a = 32'h3f800000;
        b = 32'h3f800000;
        #10;

        a = 32'h00000000;
        b = 32'h3f800000;
        #10;

        a = 32'h7f800000;
        b = 32'h3f800000;
        #10;
    end
endmodule
