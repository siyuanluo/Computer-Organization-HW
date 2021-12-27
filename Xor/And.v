/*
	And:

	in -- a, b
	out -- out
	
	(a == 1 && b == 1) --> out = 1

*/

module And(
	input wire a,
	input wire b,
	output wire out
);

wire _out;

/*
    Nand(a = a, b = b, out = out1);
    Nand(a = a, b = b, out = out2);
    Nand(a = out1, b = out2, out = out);

    -> nand2tetris
*/

nand(_out, a, b);  // make twice into once
nand(out, _out, _out);

endmodule

