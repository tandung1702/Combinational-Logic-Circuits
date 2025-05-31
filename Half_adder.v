module Half_adder(SW,LEDG,LEDR);
     input[17:0] SW;
     output[7:0] LEDG;
     output[17:0] LEDR;
     assign LEDR=SW;
	
     allgate_GL DUT(SW[1],SW[0],LEDG[6],LEDG[5]);
endmodule

module half_adder_GL( a, b,  S, Cout);
  input a,b;
  output  S,Cout;

  xor G1(S,a,b);
  and G2(Cout,a,b);
endmodule

// module half_adder_DF( a, b,  S, Cout);
//   input a,b;
//   output S,Cout;	

//   assign S = a ^ b;
//   assign Cout = a & b;
// endmodule

// module half_adder_BH( a, b,  S, Cout);
// 	input a,b;
// 	output reg S,Cout;
	
// 	always @(a,b) begin
// 		S   <= a ^ b;
// 		Cout <= a&b  ;
// 	end
// endmodule
