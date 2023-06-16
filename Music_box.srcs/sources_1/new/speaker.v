module speaker(
    input clk,
    input [18:0] clkdivider,
    output reg speaker
);
    reg [18:0] counter;
always @(posedge clk) begin
    if(counter==0) begin
        counter <= clkdivider-1;
        speaker <= ~speaker;
        end
    else counter <= counter-1;
end
endmodule