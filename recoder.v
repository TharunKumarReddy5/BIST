`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:38 06/11/2018 
// Design Name: 
// Module Name:    recoder 
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
module recoder(a,b,pp0,pp1);

input [3:0]a,b;
output [5:0]pp0,pp1;
wire [5:0]ze,aa1,aa2,an1,an2;
wire [3:0]an;
assign ze=6'b000000;
assign an=(~a)+1;
assign aa1={a[3],a[3],a};
assign an1={(~a[3]),(~a[3]),an};
assign aa2={a[3],a,1'b0};
assign an2={(~a[3]),an,1'b0};

mux_up m1(ze,aa1,an2,an1,b[1:0],pp0);
mux_down m2(ze,aa1,aa1,aa2,an2,an1,an1,ze,b[3:1],pp1);

endmodule
