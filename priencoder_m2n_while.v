module priencoder_m2n_while(x, valid_in, y);
parameter m = 4;
parameter n = 2;
input [m-1:0]x;
output valid_in; // ��ǲ�߿� �Ѱ��� 1�� �����ϴ���??
output reg[n-1:0]y;
integer i;

assign valid_in = |x;

always @(*) begin
    i = m-1;
    while(x[i] == 0 && i>=0) i=i-1; // false �� ����ϰ� ��. true�� ��� Ž��.
    y=i;
    end
endmodule
