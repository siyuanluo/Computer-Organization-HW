/*

	Nand has been given in nand2tetris.
	And we could just use it here.

*/

module Nand(
	input wire a,
	input wire b,
	output wire out
);

/*
	just use nand.
*/

nand(out, a, b);

endmodule