/*
	Not:

	in -- in
	out -- out

	out = !in

*/

module Not(
	input wire in,
	output wire out
);

/*
	Nand(a = in, b = in, out = out);

	-> nand2tetris
*/

Nand _Nand(in, in, out);

endmodule