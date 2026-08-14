module port(clk,rst,en,addr,outdata);
input clk,rst,en;
input [4:0]addr;
output reg [15:0]outdata;
reg[15:0]mem[31:0];
always@(posedge clk,posedge rst)
begin
if(rst)
outdata<=16'b0;
else if(en)
outdata<=mem[addr];
else
outdata<=16'bx;
end
initial
begin
mem[0]=16'b0;
mem[1]=16'b0;
mem[2]=16'b0;
mem[3]=16'b0111;
mem[4]=16'b0;
mem[5]=16'b0;
mem[6]=16'b0;
mem[7]=16'b0;
mem[8]=16'b0;
mem[9]=16'b0;
mem[10]=16'b0;
mem[11]=16'b11111;
mem[12]=16'b0;
mem[13]=16'b0;
mem[14]=16'b0;
mem[15]=16'b0;
mem[16]=16'b1000;
mem[17]=16'b0;
mem[18]=16'b0;
mem[19]=16'b0;
mem[20]=16'b0;
mem[21]=16'b0;
mem[22]=16'b0;
mem[23]=16'b0;
mem[24]=16'b0;
mem[25]=16'b0;
mem[26]=16'b0;
mem[27]=16'b0;
mem[28]=16'b0;
mem[29]=16'b11111111111111111111111111;
mem[30]=16'b0;
mem[31]=16'b0;
end
endmodule

