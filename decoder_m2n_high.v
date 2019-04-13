module decoder_m2n_high(x ,enable ,y);
parameter m = 3;
parameter n = 8;
input [m-1:0]x;
input enable;
output reg[n-1:0]y;

always @(x or enable)
    if(!enable) y = {n{1'b0}};
    else        y = {{{n-1{1'b0}},1'b1}}<< x;
    
endmodule