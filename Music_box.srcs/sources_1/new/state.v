module state(
input [3:0] BTN,
output reg [3:0] led,
output reg [1:0] state
);
always @(*) begin
    case (BTN)
        4'b0001 : state <= 2'b00;
        4'b0010 : state <= 2'b01;
        4'b0100 : state <= 2'b10;
        4'b1000 : state <= 2'b11;
    endcase
end
always @(*) begin
    case (state)
        2'b00 : led <= 4'b0001;
        2'b01 : led <= 4'b0010;
        2'b10 : led <= 4'b0100;
        2'b11 : led <= 4'b1000;
    endcase
end
endmodule