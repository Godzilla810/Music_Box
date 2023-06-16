module control (
    input clk,
    input [3:0] BTN,
    input [7:0] btn,
    output speaker
    );
reg [18:0] clkdivider;
wire [18:0] clkdivider1,clkdivider2;
always @(posedge clk) begin
    if (BTN == 4'b0001)
        clkdivider <= clkdivider1;
    else
        clkdivider <= clkdivider2;
end
music m1(
    .clk        (clk),
    .BTN        (BTN),
    .btn        (btn),
    .clkdivider (clkdivider1)
    );
    
song s1(
    .clk        (clk),
    .BTN        (BTN),
    .clkdivider (clkdivider2)
    );

speaker spk1(
    .clk        (clk),
    .clkdivider (clkdivider),
    .speaker    (speaker)
    );
    
endmodule