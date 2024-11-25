module func(input logic a, b, c, d, output logic y);
    assign y = ~a | (~b & ~c) | (b & d) | (~b & ~d);
endmodule
