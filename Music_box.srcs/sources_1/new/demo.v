`include "pitch.vh"
module music(clk, state, btn, clkdivider);
input clk;
input [1:0] state;
input [7:0] btn;
output reg [18:0] clkdivider;

//按鍵定義
always @(*) begin
    if (state == 2'b00) begin
        case(btn)
            default : clkdivider<=`_;
            8'b00000001 : clkdivider<=`F6;
            8'b00000010 : clkdivider<=`E6;
            8'b00000100 : clkdivider<=`D6;
            8'b00001000 : clkdivider<=`C6;
            8'b00010000 : clkdivider<=`B;
            8'b00100000 : clkdivider<=`A;
            8'b01000000 : clkdivider<=`G;
            8'b10000000 : clkdivider<=`E;
        endcase
    end else
        clkdivider <= clkdivider; // 保持不?
    end
endmodule