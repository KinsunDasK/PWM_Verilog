`timescale 1ns / 1ps

module PWM_tb();

reg clk =1'b0, rst;
wire dout;


PWM dut (.clk(clk),.rst(rst),.dout(dout));

initial begin
rst = 1'b1;
#100 rst = 1'b0;
end

always #1 clk = ~clk;

initial begin
#1000; 
$finish;
end

endmodule
