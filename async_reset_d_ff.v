module async_reset_d_ff(d, clk, reset, q);
input d,clk,reset;
output reg q;

always @(negedge reset or posedge clk)
begin
    if(!reset)
        q<= 0;
    else
        q<=d;
   end
endmodule