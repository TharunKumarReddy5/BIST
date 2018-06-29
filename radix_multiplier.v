`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:16 06/11/2018 
// Design Name: 
// Module Name:    radix_multiplier 
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
module radix_multiplier(a,b,clk,rst,final_result);
input [3:0]a,b;
input clk,rst;
output [7:0]final_result;
wire [5:0]pp0,pp1;
wire [7:0]final_result1;

recoder r1(a,b,pp0,pp1);
padder p1(pp0,pp1,final_result1);
pipo p2(final_result1,clk,rst,final_result);
endmodule
