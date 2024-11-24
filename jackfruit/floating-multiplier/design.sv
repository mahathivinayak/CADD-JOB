module multiplier(input logic [31:0] a, b, output logic [31:0] y);

logic [7:0] exp, exp1, exp2;
logic [23:0] m1, m2;
logic [22:0] fraction;
logic [47:0] result;

assign {exp1, m1} = {a[30:23], 1'b1, a[22:0]};
assign {exp2, m2} = {b[30:23], 1'b1, b[22:0]};
assign y = {1'b0, exp, fraction};

assign result = m1 * m2;
assign fraction = result[47] ? result[46:24] : result[45:23];
assign exp = result[47] ? (exp1 + exp2 - 126) : (exp1 + exp2 - 127);

endmodule
