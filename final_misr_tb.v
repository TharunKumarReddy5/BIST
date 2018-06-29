`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:43:58 06/12/2018
// Design Name:   final_misr
// Module Name:   F:/BIST/final_misr_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: final_misr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module final_misr_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] z;

	// Outputs
	wire [7:0] qout;

	// Instantiate the Unit Under Test (UUT)
	final_misr uut (
		.clk(clk), 
		.rst(rst), 
		.z(z), 
		.qout(qout)
	);
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		z = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst=0;
		z=8'b10101010;		
        
		// Add stimulus here

	end
      
endmodule

