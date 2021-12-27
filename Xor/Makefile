nand_test: test/Nand_test.v Nand.v
	@iverilog -o Nand_test.out test/Nand_test.v Nand.v
	@vvp Nand_test.out
	@diff Nand.out test/Nand.cmp
	@echo "------ PASSED THE NAND GATE! ------"

not_test: test/Not_test.v Not.v Nand.v
	@iverilog -o Not_test.out test/Not_test.v Not.v Nand.v
	@vvp Not_test.out
	@diff Not.out test/Not.cmp
	@echo "------ PASSED THE NOT GATE! ------"

and_test: test/And_test.v And.v Nand.v
	@iverilog -o And_test.out test/And_test.v And.v Nand.v
	@vvp And_test.out
	@diff And.out test/And.cmp
	@echo "------ PASSED THE AND GATE! ------"

or_test: test/Or_test.v Or.v Nand.v Not.v
	@iverilog -o Or_test.out test/Or_test.v Or.v Nand.v Not.v 
	@vvp Or_test.out
	@diff Or.out test/Or.cmp
	@echo "------ PASSED THE OR GATE! ------"

xor_test: test/Xor_test.v Xor.v Not.v And.v Or.v Nand.v
	@iverilog -o Xor_test.out test/Xor_test.v Xor.v Not.v And.v Or.v Nand.v
	@vvp Xor_test.out
	@diff Xor.out test/Xor.cmp
	@echo "------ PASSED THE XOR GATE! ------"

test: nand_test not_test and_test or_test xor_test
	@echo "\n"
	@echo "WOW!"
	@echo "------ ALL PASS ------\n"

all Xor_test.out: test/Xor_test.v Xor.v Not.v And.v Or.v Nand.v
	iverilog -o Xor_test.out test/Xor_test.v Xor.v Not.v And.v Or.v Nand.v

sim: Xor_test.out
	@vvp Xor_test.out
	@gtkwave Xor_test.vcd

clean:
	rm -f *.vcd *.out


