`include "pitch.vh"
module song(clk, BTN, clkdivider);
input clk;
input [3:0] BTN;
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
    case(note)
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
        
//        35:clkdivider <= A;
//        36:clkdivider <= _;
//        37:clkdivider <= E6;
//        38:clkdivider <= _;
//        39:clkdivider <= A;
//        40:clkdivider <= _;
//        41:clkdivider <= G;
//        42:clkdivider <= A;
//        43:clkdivider <= _;
//        44:clkdivider <= E6;
//        45:clkdivider <= A;
//        46:clkdivider <= G;
//        47:clkdivider <= A;
//        48:clkdivider <= _;
//        49:clkdivider <= E;
//        50:clkdivider <= G;
//        51:clkdivider <= A;
//        52:clkdivider <= _;
//        53:clkdivider <= C6;
//        54:clkdivider <= _;
//        55:clkdivider <= B;
//        56:clkdivider <= _;
//        57:clkdivider <= G;
//        58:clkdivider <= A;
//        59:clkdivider <= _;
//        60:clkdivider <= A;
//        61:clkdivider <= _;
//        62:clkdivider <= G;
//        63:clkdivider <= A;
//        64:clkdivider <= _;
//        65:clkdivider <= C6;
//        66:clkdivider <= C6;
//        67:clkdivider <= A;
//        68:clkdivider <= A;
//        69:clkdivider <= _;
//        70:clkdivider <= G;
//        71:clkdivider <= A;
//        72:clkdivider <= C6;
//        73:clkdivider <= D6;
//        74:clkdivider <= E6;
//        75:clkdivider <= A;
//        76:clkdivider <= A;
//        77:clkdivider <= _;
//        78:clkdivider <= G;
//        79:clkdivider <= A;
//        80:clkdivider <= C6;
//        81:clkdivider <= D6;
//        82:clkdivider <= E6;
//        83:clkdivider <= A;
//        84:clkdivider <= _;
//        85:clkdivider <= C6;
//        86:clkdivider <= C6;
//        87:clkdivider <= D6;
//        88:clkdivider <= C6;
//        89:clkdivider <= D6;
//        90:clkdivider <= C6;
//        91:clkdivider <= D6;
//        92:clkdivider <= E6;
//        93:clkdivider <= A;
//        94:clkdivider <= C6;
//        95:clkdivider <= G;
//        96:clkdivider <= A;
//        97:clkdivider <= E;
//        98:clkdivider <= G;
//        99:clkdivider <= A;
//        100:clkdivider <= _;
//        101:clkdivider <= G;
//        102:clkdivider <= A;
//        103:clkdivider <= C6;
//        104:clkdivider <= D6;
//        105:clkdivider <= E6;
//        106:clkdivider <= A;
//        107:clkdivider <= A;
//        108:clkdivider <= _;
//        109:clkdivider <= _;
//        110:clkdivider <= G;
//        111:clkdivider <= A;
//        112:clkdivider <= C6;
//        113:clkdivider <= D6;
//        114:clkdivider <= E6;
//        115:clkdivider <= D6;
//        116:clkdivider <= E6;
//        117:clkdivider <= A;
//        118:clkdivider <= C6;
//        119:clkdivider <= G;
//        120:clkdivider <= A;
//        121:clkdivider <= E;
//        122:clkdivider <= A;
//        123:clkdivider <= _;
//        124:clkdivider <= A;
//        125:clkdivider <= A;
//        126:clkdivider <= G;
//        127:clkdivider <= A;
//        128:clkdivider <= A;
//        129:clkdivider <= _;
        
        
        
    endcase
    note<=note+1;
end


endmodule