`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:36 06/11/2018
// Design Name:   pipo
// Module Name:   F:/BIST/pipo_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipo_tb;

	// Inputs
	reg [7:0] si;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] so;

	// Instantiate the Unit Under Test (UUT)
	pipo uut (
		.si(si), 
		.clk(clk), 
		.rst(rst), 
		.so(so)
	);

	initial begin
		// Initialize Inputs
		si = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst=0;
		si=8'b10010011;        
		// Add stimulus here

	end
      
endmodule

