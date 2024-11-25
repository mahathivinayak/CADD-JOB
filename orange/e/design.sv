module priority_encoder(input logic [3:0] a, output logic [1:0] y);
    assign y[1] = a[2] | a[3];
    assign y[0] = (~a[2] & a[1]) | a[3];
endmodule
