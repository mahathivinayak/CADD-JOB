module func2(input logic a, b, c, d, e, output logic y);
    assign y = (~d & ~e) | a | (~b & ~c);
endmodule
