module control (
    input clk,
    input [3:0] BTN,
    input [7:0] btn,
    output [3:0] led,
    output speaker
    );
wire [1:0] state;
reg [18:0] clkdivider;
wire [18:0] clkdivider1,clkdivider2;
always @(posedge clk) begin
    if (state == 2'b00)
        clkdivider <= clkdivider1;
    else
        clkdivider <= clkdivider2;
end

state sta1(
    .BTN        (BTN),
    .led        (led),
    .state     (state)
    );

music m1(
    .clk            (clk),
    .state          (state),
    .btn            (btn),
    .clkdivider     (clkdivider1)
    );
    
song s1(
    .clk            (clk),
    .state          (state),
    .clkdivider     (clkdivider2)
    );

speaker spk1(
    .clk        (clk),
    .clkdivider (clkdivider),
    .speaker    (speaker)
    );
    
endmodule