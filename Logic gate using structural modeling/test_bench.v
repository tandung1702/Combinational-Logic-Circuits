`timescale 1ns / 1ps
module test_bench;
    reg a, b;
    wire and_g, 
         or_g,
         not_g,
	 buf_g,
         nand_g,
         nor_g,
         xor_g,
         xnor_g;
         
    logic_gates dut(a, b, and_g,or_g,not_g,buf_g,nand_g,nor_g,xor_g,xnor_g);
    initial begin
      $monitor($time,,"a=%b ,b=%b, and_out=%b ,or_out=%b ,not_out=%b , buf_out=%b, nand_out=%b ,nor_out=%b ,xor_out=%b ,xnor_out=%b ",a, b,and_g,or_g,not_g,buf_g,nand_g,nor_g,xor_g,xnor_g);
       $dumpfile("test_bench.vcd");
       $dumpvars(0,test_bench);
         a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
endmodule