module adder(input logic [3:0] a, input logic [3:0] b, output logic [3:0] s);
    assign s = a ^ b;
endmodule
