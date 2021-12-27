/*
	Multipl:

	input: a, b, sel
	output: out

	if(sel == 0 ) --> out = a
	else out = b
*/

module Mux(
	input wire a,
	input wire b,
	input wire sel,
	output wire out
);

/*
    Not(in = sel, out = outs);
    
    And(a = a, b = outs, out = out1);
    And(a = b, b = sel,   out = out2);

    Or (a = out1, b = out2, out = out);
*/

wire _out, a_out, b_out;

Not _Not(sel, _out);

And _And(a, _out, a_out);
And _And(b, sel, b_out);

Or _Or(a_out, b_out, out);

endmodule

