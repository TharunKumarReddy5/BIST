`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:02 06/11/2018 
// Design Name: 
// Module Name:    mux_down 
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
module mux_down(a,b,c,d,e,f,g,h,s,y);
input [5:0]a,b,c,d,e,f,g,h;
input [2:0]s;
output [5:0]y;
reg [5:0]y;

always @(a,b,c,d,e,f,g,h)
begin
case(s)
3'b000:y=a;
3'b001:y=b;
3'b010:y=c;
3'b011:y=d;
3'b100:y=e;
3'b101:y=f;
3'b110:y=g;
3'b111:y=h;
default:y=a;
endcase
end
endmodule
