module testbench;
    reg a, b, c, d, e;
    wire y;

    func2 dut(a, b, c, d, e, y);

    initial begin
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; e = 1'b0; #10;
        a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; e = 1'b0; #10;
        a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; e = 1'b0; #10;
        a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; e = 1'b0; #10;
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; e = 1'b0; #10;
        a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; e = 1'b1; #10;
        a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1; e = 1'b1; #10;
    end
endmodule
