/*
	Xor:

	in -- a, b
	out -- out

	out = Not(a == b)

*/

module Xor(
	input wire a,
	input wire b,
	output wire out
);

/*
    Not (in=a, out=nota);
    Not (in=b, out=notb);
    And (a=a, b=notb, out=aAndnotb);
    And (a=nota, b=b, out=notaAndb);
    Or  (a=aAndnotb, b=notaAndb, out=out);
*/

wire not_a, not_b, not_ab, not_ba;

Not _a(a, not_a);
Not _b(b, not_b);

And and_ab(a, not_b, not_ab);
And and_ba(not_a, b, not_ba);

Or _Or(not_ab, not_ba, out);

endmodule

/*
	Finished!
*/
