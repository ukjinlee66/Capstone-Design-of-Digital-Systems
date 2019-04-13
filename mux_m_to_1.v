module mux_m_to_1(select, in, y);
parameter m=4; // input  size
parameter k=2; // selection size
input [k-1:0] select;
input [m-1:0]in;
output reg y;

integer i;
always @(*)
    for(i=0;i<m;i=i+1)
        if(select==i) y = in[i];
endmodule