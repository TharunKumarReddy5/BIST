`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:18:49 06/11/2018
// Design Name:   radix_multiplier
// Module Name:   F:/BIST/radix_multiplier_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: radix_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module radix_multiplier_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] final_result;

	// Instantiate the Unit Under Test (UUT)
	radix_multiplier uut (
		.a(a), 
		.b(b), 
		.final_result(final_result), 
		.clk(clk), 
		.rst(rst)
	);
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst=0;
		a=4'b1010;
		b=4'b0010;
		
        
		// Add stimulus here

	end
      
endmodule

