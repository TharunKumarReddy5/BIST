`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:01:19 06/11/2018
// Design Name:   tpg
// Module Name:   F:/BIST/tpg_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tpg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tpg_tb;

	// Inputs
	reg en;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] T;

	// Instantiate the Unit Under Test (UUT)
	tpg uut (
		.en(en), 
		.clk(clk), 
		.rst(rst), 
		.T(T)
	);
	
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		en = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst=0;
		#100;
		en=1;
		
        
		// Add stimulus here

	end
      
endmodule

