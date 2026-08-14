
include "port.v";
module tb;
reg clk,rst,en;
reg [4:0]addr;
wire [31:0]outdata;

port dut(.*);

initial
begin
clk=1;
forever #10 clk=~clk;
end



initial
begin
	en=1;
addr=5'b10000;
rst=0;
#100;
rst=1;
#100;
rst=0;
#800 $finish;
end

endmodule



