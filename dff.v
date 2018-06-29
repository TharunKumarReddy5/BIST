`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:58 06/11/2018 
// Design Name: 
// Module Name:    dff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff(D,clk,rst,Q);
input D,clk,rst;
output Q;
reg Q;
always @(posedge clk or posedge rst)
begin
if (rst)
Q=1'b0;
else
Q<=D;
end
endmodule
