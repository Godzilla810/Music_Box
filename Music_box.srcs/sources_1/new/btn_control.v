module control(
    input [3:0] BTN,
    input clk,
    input [7:0] btn,
    output reg speaker
);
wire speaker1,speaker2;
music m0(
    .clk(clk),
    .BTN(BTN[0]),
    .btn(btn),
    .speaker(speaker1)
);

song s0(
    .clk(clk),
    .speaker(speaker2)
);
always @(*)begin
    if(BTN == 4'b1000)
        speaker <= speaker1;
end
endmodule
