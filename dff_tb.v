`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:06:50 06/11/2018
// Design Name:   dff
// Module Name:   F:/BIST/dff_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_tb;

	// Inputs
	reg D;
	reg clk;
	reg rst;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.D(D), 
		.clk(clk), 
		.rst(rst), 
		.Q(Q)
	);
	
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		D=1;
		#100;
		D=0;
        
		// Add stimulus here

	end
      
endmodule

