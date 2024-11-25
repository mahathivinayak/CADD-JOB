module func3(input logic a, b, c, d, output logic y, z);
    assign y = d | (a & ~b & c);
    assign z = (b & d) | (a & ~c & d);
endmodule
