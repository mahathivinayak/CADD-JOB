module testbench;
    reg [3:0] a;
    wire [1:0] y;

    priority_encoder dut (a, y);

    initial begin
        a = 4'b0000; #10;
        a = 4'b0001; #10;
        a = 4'b0011; #10;
        a = 4'b0111; #10;
        a = 4'b1xxx; #10;
    end
endmodule
