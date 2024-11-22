/*Problem Statment :-

Design hardware to add two 8-bit unsigned BCD numbers. Sketch a schematic for your design, and
write an HDL module for the BCD adder. The inputs are A, B, and Cin, and the outputs are S and
Cout. Cin and Cout are 1-bit carries, and A, B, and S are 8-bit BCD numbers.

### Instructions :- 

- Understand BCD numbers and the addition of BCD numbers
- Write the algorithm for BCD addition
- Functional simulation
- Synthesis*/
module bcd_adder(input logic [7:0] A, B, input logic Cin, output logic [7:0] S, Cout);

logic Ctemp;

always_comb begin 
    {Ctemp, S[3:0]} = (A[3:0] + B[3:0] + Cin < 9) ? 
                      (A[3:0] + B[3:0] + Cin) : 
                      (A[3:0] + B[3:0] + Cin + 4'b0110);

    {Cout, S[7:4]} = (A[7:4] + B[7:4] + Ctemp < 9) ? 
                     (A[7:4] + B[7:4] + Ctemp) : 
                     (A[7:4] + B[7:4] + Ctemp + 4'b0110);
end

endmodule
