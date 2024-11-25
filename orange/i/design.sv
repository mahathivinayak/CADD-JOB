module fsm(a, b, ps, ns, y);
    input logic a, b;
    input logic [1:0] ps;
    output logic [1:0] ns;
    output logic y;

    assign ns[0] = a & ~ps[1] & ~ps[0];
    assign ns[1] = b & ps[0];

    always_comb begin
        if (ns == 2'b10)
            y = 1;
        else
            y = 0;
    end
endmodule
