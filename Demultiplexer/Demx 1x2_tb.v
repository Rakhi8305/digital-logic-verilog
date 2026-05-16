`timescale 1ns / 1ps

module demux1to2_tb;

    reg din, sel;
    wire y0, y1;

    // Instantiate the DEMUX module
    demux1to2 uut (
        .din(din),
        .sel(sel),
        .y0(y0),
        .y1(y1)
    );

    initial begin

        // Waveform generation
        $dumpfile("demux.vcd");
        $dumpvars(0, demux1to2_tb);

        // Display values
        $display("din sel | y0 y1");
        $monitor("%b    %b  | %b  %b", din, sel, y0, y1);

        // Test Case 1
        din = 0; sel = 0;
        #10;

        // Test Case 2
        din = 1; sel = 0;
        #10;

        // Test Case 3
        din = 0; sel = 1;
        #10;

        // Test Case 4
        din = 1; sel = 1;
        #10;

        $finish;

    end

endmodule