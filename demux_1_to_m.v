module demux_1_to_m(select, in, y);
parameter m=4;
parameter k=2;
input [k-1:0]select;
input in;
output reg[m-1:0]y;
integer i;

always @(*)
    for(i=0;i<m;i=i+1) begin
    if(select==i)
        y[i]=in;
     else
        y[i] = 1'b0;
     end
endmodule