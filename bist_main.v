`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:13 05/16/2018 
// Design Name: 
// Module Name:    bist_radix4 
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
module bist_main(

    input [3:0] a,b,
    input test,fault,clk,rst,en,
    output reg[31:0] y1
    );
	 wire [3:0]ta1,tb1,t1,t2,y;
	 wire [7:0]p,p1,p2,p3;
	 integer count;
	 wire [7:0]goldensignature=8'hde; //8'hde original
	 
tpg r1(clk,en,rst,t1);
tpg r2(clk,en,rst,t2);

mux_input r3 (a,t1,test,ta1);
mux_input r4 (b,t2,test,tb1);

radix_multiplier  r5(ta1,tb1,clk,rst,p);
assign p3= fault?p2:p;
assign p2=~p;
final_misr r6(clk,rst,p3,p1);
always@(posedge clk,posedge rst)
begin
if(rst)
count=0;
else if(count<256)
count=count+1;
end
always@(count,goldensignature,p1)
begin
if(count==256)
begin
if(goldensignature==p1)
y1=32'h50415353;
else
y1=32'h4641494c;
end
end
endmodule

