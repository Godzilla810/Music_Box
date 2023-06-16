
module music(clk, BTN, btn, speaker);
input clk;
input [3:0] BTN;
input [7:0] btn;
output reg speaker;

//parameter ON=1,OFF=0;
//reg state = OFF;
//always @(posedge clk or posedge BTN) begin
//    if (BTN[0])
//        state <= ~state;
//    else if (BTN[1] || BTN[2] || BTN[3])
//        state <= OFF;
//end

//音高定義
parameter F6 = 44739;
parameter E6 = 47384;
parameter D6 = 53191;
parameter C6 = 59694;
parameter B = 63259;
parameter A = 71022;
parameter G = 79719;
parameter F_up = 84459;
parameter F = 89542;
parameter E = 94841;
parameter D = 106474;
parameter C_up = 112816;
parameter C = 119503;
//按鍵定義
reg [18:0] clkdivider;

always @(*) begin
    case(btn)
        8'b00000001 : clkdivider<=F6;
        8'b00000010 : clkdivider<=E6;
        8'b00000100 : clkdivider<=D6;
        8'b00001000 : clkdivider<=C6;
        8'b00010000 : clkdivider<=B;
        8'b00100000 : clkdivider<=A;
        8'b01000000 : clkdivider<=G;
        8'b10000000 : clkdivider<=E;
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