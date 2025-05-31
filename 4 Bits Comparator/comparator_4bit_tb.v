module comparator_4bit_tb;
    reg [3:0] A, B;
    wire A_eq_B, A_gt_B, A_lt_B;

    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B)
    );

    initial begin        
        $dumpfile("comparator_4bit_tb.vcd"); 
        $dumpvars(0, comparator_4bit_tb);
        
      $monitor("A=%b | B=%b | A_eq_B=%b A_gt_B=%b A_lt_B=%b", A, B, A_eq_B, A_gt_B, A_lt_B);

        A = 4'b0000; B = 4'b0000; #10; // A == B
        A = 4'b1010; B = 4'b1010; #10; // A == B
        A = 4'b1001; B = 4'b0111; #10; // A > B
        A = 4'b0111; B = 4'b1001; #10; // A < B
        A = 4'b1111; B = 4'b0000; #10; // A > B
        A = 4'b0000; B = 4'b1111; #10; // A < B
        A = 4'b0101; B = 4'b1101; #10; // A < B
        A = 4'b1101; B = 4'b0101; #10; // A > B

        $finsih;
    end
endmodule
