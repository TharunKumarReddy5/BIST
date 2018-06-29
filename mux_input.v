`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:44:56 06/12/2018 
// Design Name: 
// Module Name:    mux_input 
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
module mux_input(a,b,s,y);
input [3:0]a,b;
input s;
output [3:0]y;
assign y=((~s)&a)|(s&b);
endmodule
