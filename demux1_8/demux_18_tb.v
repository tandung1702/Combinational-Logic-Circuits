module demux_18_tb;
    wire [7:0] y;
    reg a;
    reg [2:0] s;

    demul18_GL dut (a, s, y);

    initial begin
        a = 1'b0;
        s = 3'b000;

        #100 a = 1'b1;

        #800 $finish;
    end
    initial begin
        $monitor("a = %b | s = %b | y = %b", $time, a, s, y);
    end

    always #100 s[0] = ~s[0];
    always #200 s[1] = ~s[1];
    always #400 s[2] = ~s[2];
endmodule
