`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:06 06/11/2018 
// Design Name: 
// Module Name:    radix_net 
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
module radix_net (
input clk,reset,
input  [3:0] x,y,
output reg [7:0] out
);
reg [2:0] c=0 ;
 
reg   [7:0] pp=0; //partial products
reg   [7:0] spp=0; //shifted partial products
reg   [7:0] prod=0;
reg [3:0] i=0,j=0;
reg flag=0, temp=0 ;
wire [3:0] inv_x ;
//assign x= (~x) +1'b1;
assign inv_x = (~x) +1'b1;
always@(posedge clk)
begin
if(reset)
begin
out=0;
c=0;
pp=0;
flag=0;
spp=0;
i=0;
j=0;
prod=0;
end
else begin
 
if(!flag)
c={y[1],y[0],1'b0};
flag=1;
case(c)
////////////////////////
3'b000,3'b111: begin
if(i<8)
begin  i=i+1;
c={y[2*i+1],y[2*i],y[2*i-1]}; end
else
c=3'bxxx;
end
////////////////////////////
3'b001,3'b010:
begin
if(i<2)
begin
i=i+1;
c={y[2*i+1],y[2*i],y[2*i-1]};
pp={{4{x[3]}},x};
if(i==1'b1)
prod=pp;
else
begin
temp=pp[7];
j=i-1;
j=j<<1;
spp=pp<<j;
spp={temp,spp[6:0]};
prod=prod+spp;
end
end
else c=3'bxxx;
end
///////////////////////////
3'b011:
begin
if(i<2)
begin
i=i+1;
c={y[2*i+1],y[2*i],y[2*i-1]};
pp={{3{x[3]}},x,1'b0};
if(i==1'b1)
prod=pp;
else
begin
temp=pp[7];
j=i-1;
j=j<<1;
spp=pp<<j;
spp={temp,spp[6:0]};
prod=prod+spp;
end
end
else c=3'bxxx;
end
///////////////////////////
3'b100:
begin
if(i<2)
begin
i=i+1;
c={y[2*i+1],y[2*i],y[2*i-1]};
pp={{3{inv_x[3]}},inv_x,1'b0};
if(i==1'b1)
prod=pp;
else
begin
temp=pp[7];
j=i-1;
j=j<<1;
spp=pp<<j;
spp={temp,spp[6:0]};
prod=prod+spp;
end
end
else c=3'bxxx;
end
////////////////////////////////////
3'b101, 3'b110:
begin
if(i<2)
begin
i=i+1;
c={y[2*i+1],y[2*i],y[2*i-1]};
pp={{4{inv_x[3]}},inv_x};
if(i==1'b1)
prod=pp;
else
begin
temp=pp[7];
j=i-1;
j=j<<1;
spp=pp<<j;
spp={temp,spp[6:0]};
prod=prod+spp;
end
end
else c=3'bxxx;
end
////////////////
default:
out= prod;
endcase
end
end
 
endmodule