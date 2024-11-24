module testbench;

    logic [31:0] a, b;
    logic cin;
    logic [31:0] s;
    logic cout;

    p_adder uut (a, b, cin, s, cout);

    initial begin
        a = 32'h00000000; b = 32'h00000000; cin = 1'b0;
        #10 a = 32'h00000001; b = 32'h00000001; cin = 1'b0;
        #10 a = 32'hFFFFFFFF; b = 32'h00000001; cin = 1'b0;
        #10 a = 32'hAAAAAAAA; b = 32'h55555555; cin = 1'b0;
        #10 a = 32'h12345678; b = 32'h87654321; cin = 1'b1;
        #10 a = 32'hFFFFFFFF; b = 32'hFFFFFFFF; cin = 1'b1;
        #10 $finish;
    end

endmodule
