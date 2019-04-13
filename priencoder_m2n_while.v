module priencoder_m2n_while(x, valid_in, y);
parameter m = 4;
parameter n = 2;
input [m-1:0]x;
output valid_in; // 인풋중에 한개라도 1이 존재하는지??
output reg[n-1:0]y;
integer i;

assign valid_in = |x;

always @(*) begin
    i = m-1;
    while(x[i] == 0 && i>=0) i=i-1; // false 면 출력하고 끝. true면 계속 탐색.
    y=i;
    end
endmodule
