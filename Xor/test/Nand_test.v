/*
	Reference from @wuhanstudio's work
*/

module Nand_test();

    integer file;

    reg a = 0;
    reg b = 0;
    wire out;
    
    Nand Nand(
        .a(a),
        .b(b),
        .out(out)
    );

    task display;
        #1 $fwrite(file, "| %1b | %1b | %1b |\n", a,b,out);
    endtask
      
    initial begin
        $dumpfile("Nand_test.vcd");
        $dumpvars(0, Nand_test);
        file = $fopen("Nand.out","w");
        $fwrite(file, "| a | b |out|\n");
        
        a=0;b=0;
        display();
          
        a=0;b=1;
        display();
        
        a=1;b=0;
        display();
        
        a=1;b=1;
        display();
        $finish();    
    end

endmodule