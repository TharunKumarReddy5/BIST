`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:32 06/12/2018 
// Design Name: 
// Module Name:    lfsr 
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
module lfsr(
input [7:0]z,
input clk,rst,
output [7:0]q
);
wire [7:0]d;
assign d[0]=z[0]^q[0]^q[7];
dff d1(d[0],clk,rst,q[0]); 
assign d[1]=z[1]^q[0];
dff d2(d[1],clk,rst,q[1]);
assign d[2]=z[2]^q[1];
dff d3(d[2],clk,rst,q[2]);
assign d[3]=z[3]^q[2];
dff d4(d[3],clk,rst,q[3]);
assign d[4]=z[4]^q[3];
dff d5(d[4],clk,rst,q[4]);
assign d[5]=z[5]^q[4];
dff d6(d[5],clk,rst,q[5]);
assign d[6]=z[6]^q[5];
dff d7(d[6],clk,rst,q[6]);
assign d[7]=z[7]^q[6];
dff d8(d[7],clk,rst,q[7]);
endmodule
