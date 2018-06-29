`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:52:07 06/12/2018
// Design Name:   lfsr
// Module Name:   F:/BIST/misr_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lfsr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module misr_tb;

	// Inputs
	reg [7:0] z;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	lfsr uut (
		.z(z), 
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		z = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst=0;
		z=8'b10101010;
        
		// Add stimulus here

	end
      
endmodule

