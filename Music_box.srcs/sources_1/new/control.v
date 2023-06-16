module control (
    input clk,
    input [3:0] BTN,
    input [7:0] btn,
    output speaker
    );
wire [18:0] clkdivider;
music m1(
    .clk        (clk),
    .BTN        (BTN),
    .btn        (btn),
    .clkdivider (clkdivider)
    );

speaker s1(
    .clk        (clk),
    .clkdivider (clkdivider),
    .speaker    (speaker)
    );
    
endmodule