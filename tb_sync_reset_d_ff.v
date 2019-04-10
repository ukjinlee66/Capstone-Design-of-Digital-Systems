module tb_sync_reset_d_ff;
   
    reg d,clk,reset;
    wire q;
     sync_reset_d_ff uut( .d(d), .clk(clk), .reset(reset), .q(q));
    initial begin
        d=0;
        clk=0;
        reset=0;
     end
        
     always #10 clk=~clk;
     
     initial #55 d=1;
     initial #85 reset=1;
     initial #115 reset=0;

endmodule