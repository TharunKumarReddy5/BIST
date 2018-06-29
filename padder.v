`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:59 06/11/2018 
// Design Name: 
// Module Name:    padder 
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
module padder(pp0,pp1,result);
input [5:0]pp0,pp1;
output [7:0]result;
wire [5:0]c;

assign result[0]=pp0[0];
assign result[1]=pp0[1];
half_adder f1(pp0[2],pp1[0],result[2],c[0]);
full_adder f2(pp0[3],pp1[1],c[0],result[3],c[1]);
full_adder f3(pp0[4],pp1[2],c[1],result[4],c[2]);
full_adder f4(pp0[5],pp1[3],c[2],result[5],c[3]);
full_adder f5(pp0[5],pp1[4],c[3],result[6],c[4]);
full_adder f6(pp0[5],pp1[5],c[4],result[7],c[5]);
endmodule
