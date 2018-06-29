`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:24 06/11/2018 
// Design Name: 
// Module Name:    tpg 
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
module tpg(clk,en,rst,T);
input en,clk,rst;
output [3:0]T;
wire [2:0]D;
assign D[0]=en^T[3];
dff d0(D[0],clk,rst,T[1]);
assign D[1]=T[1];
dff d1(D[1],clk,rst,T[2]);
assign D[2]=T[2];
dff d2(D[2],clk,rst,T[3]);
assign T[0]=T[1]^T[2];
endmodule
