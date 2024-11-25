module priority_encoder_8(input logic [7:0] A, output logic [2:0] Y);
    always_comb begin
        casez (A)
            8'b00000001: Y = 3'b000;
            8'b0000001X: Y = 3'b001;
            8'b000001XX: Y = 3'b010;
            8'b00001XXX: Y = 3'b011;
            8'b0001XXXX: Y = 3'b100;
            8'b001XXXXX: Y = 3'b101;
            8'b01XXXXXX: Y = 3'b110;
            8'b1XXXXXXX: Y = 3'b111;
            default: Y = 3'b000;
        endcase
    end
endmodule
