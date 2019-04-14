module ram_sp_sr_sw( //single port SRAM
clk ,
address ,
data ,
cs ,
we ,
oe
);
parameter DATA_WIDTH=8;
parameter ADDR_WIDTH=8;
parameter RAM_DEPTH = 1 << ADDR_WIDTH;

input clk;
input [ADDR_WIDTH-1:0]address;
input cs, we, oe;
input [DATA_WIDTH-1:0]data;

reg[DATA_WIDTH-1:0]data_out;
reg[DATA_WIDTH-1:0]mem[0:RAM_DEPTH-1];
reg oe_r;

assign data =(cs&&oe&&!we) ? data_out:8'bz;
always @(posedge clk)
    begin : MEM_WRITE
        if(cs&&we) begin
            mem[address]=data;
        end
    end
always @(posedge clk)
    begin : MEM_READ
        if(cs && !we && oe) begin
            data_out = mem[address];
            oe_r =1;
         end else begin
         oe_r=0;
         end
     end

endmodule
