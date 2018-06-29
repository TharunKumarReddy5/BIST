`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:09 06/11/2018
// Design Name:   radix_net
// Module Name:   F:/BIST/radix_net_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: radix_net
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module radix_net_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	radix_net uut (
		.clk(clk), 
		.reset(reset), 
		.x(x), 
		.y(y), 
		.out(out)
	);
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset=0;
		x=4'b0111;
		y=4'b0011;
        
		// Add stimulus here

	end
      
endmodule

