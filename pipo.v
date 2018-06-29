`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:47 06/09/2018 
// Design Name: 
// Module Name:    pipo_reg 
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
module pipo(
input [7:0]si,
input clk,rst,
output reg[7:0]so
);
always@(posedge clk)
begin
if(rst) begin
so=8'b0;
end
else begin
so=si;
end
end
endmodule

