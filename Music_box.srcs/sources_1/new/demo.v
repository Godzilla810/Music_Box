`include "pitch.vh"
module music(clk, BTN, btn, speaker);
input clk;
input [3:0] BTN;
input [7:0] btn;
output reg speaker;

//按鍵定義
reg [18:0] clkdivider;

always @(*) begin
    case(btn)
        8'b00000001 : clkdivider<=`F6;
        8'b00000010 : clkdivider<=`E6;
        8'b00000100 : clkdivider<=`D6;
        8'b00001000 : clkdivider<=`C6;
        8'b00010000 : clkdivider<=`B;
        8'b00100000 : clkdivider<=`A;
        8'b01000000 : clkdivider<=`G;
        8'b10000000 : clkdivider<=`E;
    endcase
end
//發聲器
reg [18:0] counter;
always @(posedge clk) begin
    if (btn != 0) begin
        if(counter==0) begin
            counter <= clkdivider-1;
            speaker <= ~speaker;
            end
        else counter <= counter-1;
    end
    else
        speaker <= 0;
end
endmodule