module gray_code_counter(n, g);
    input logic[2:0] n;
    output logic[2:0] g;

    assign g[2] = n[2];
    assign g[1] = n[1] ^ n[2];
    assign g[0] = n[0] ^ n[1];
endmodule
