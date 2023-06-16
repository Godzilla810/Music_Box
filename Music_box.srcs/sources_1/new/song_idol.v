`include "pitch.vh"
module song(clk, state, clkdivider);
input clk;
input [1:0] state;
output reg [18:0] clkdivider;
reg [30:0] counter_note;
reg custom_clk;
//節拍
always @(posedge clk) begin
    if(counter_note==0) begin
        counter_note <= 10_000_000;
        custom_clk <= ~custom_clk;
        end
    else counter_note <= counter_note-1;
end
//曲子
reg  [7:0] note;    //小節數
always @(posedge custom_clk) begin
if (state == 2'b01) begin
    case(note)
        0:clkdivider <= `_;
        1:clkdivider <= `E;
        2:clkdivider <= `G;
        3:clkdivider <= `A;
        4:clkdivider <= `_;
        5:clkdivider <= `E6;
        6:clkdivider <= `_;
        7:clkdivider <= `A;
        8:clkdivider <= `_;
        9:clkdivider <= `G;
        10:clkdivider <= `A;
        11:clkdivider <= `_;
        12:clkdivider <= `E6;
        13:clkdivider <= `A;
        14:clkdivider <= `G;
        15:clkdivider <= `A;
        16:clkdivider <= `_;
        17:clkdivider <= `E;
        18:clkdivider <= `G;
        19:clkdivider <= `A;
        20:clkdivider <= `_;
        21:clkdivider <= `C6;
        22:clkdivider <= `_;
        23:clkdivider <= `B;
        24:clkdivider <= `_;
        25:clkdivider <= `G;
        26:clkdivider <= `A;
        27:clkdivider <= `_;
        28:clkdivider <= `B;
        29:clkdivider <= `C6;
        30:clkdivider <= `D6;
        31:clkdivider <= `F6;
        32:clkdivider <= `_;
        33:clkdivider <= `E6;
        34:clkdivider <= `_;
    endcase
    note<=note+1;
    end
else
    note <= 0;
end


endmodule