`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:35 06/11/2018 
// Design Name: 
// Module Name:    mux_up 
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
module mux_up(a,b,c,d,s,y);
input [5:0]a,b,c,d;
input [1:0]s;
output [5:0]y;
reg [5:0]y;
always @(a,b,c,d)
begin
case(s)
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
default:y=1;
endcase
end
endmodule
