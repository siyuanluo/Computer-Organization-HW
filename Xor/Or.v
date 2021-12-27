/*
	Or:

	in -- a, b
	out -- out

	(a == 1 || b == 1) --> out = 1

*/

module Or(
	input wire a,
	input wire b,
	output wire out
);

/*
	Not (in = a, out = out1);
    Not (in = b, out = out2);
    Nand(a = out1, b = out2, out = out);
*/

wire _a, _b;

Not _Not(a, _a);
Not __Not(b, _b);
Nand _Nand(_a, _b, out);

endmodule