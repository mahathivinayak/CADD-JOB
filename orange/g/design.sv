module decoder_3to8 (
    input  logic [2:0] A,
    output logic [7:0] Y
);

    always_comb begin
        Y = 8'b00000000;
        Y[A] = 1'b1;
    end

endmodule
