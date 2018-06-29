`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:04 06/12/2018
// Design Name:   bist_main
// Module Name:   F:/BIST/bist_main_tb.v
// Project Name:  BIST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bist_main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bist_main_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg test;
	reg fault;
	reg clk;
	reg rst;
	reg en;

	// Outputs
	wire [31:0] y1;

	// Instantiate the Unit Under Test (UUT)
	bist_main uut (
		.a(a), 
		.b(b), 
		.test(test), 
		.fault(fault), 
		.clk(clk), 
		.rst(rst), 
		.en(en), 
		.y1(y1)
	);
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		test = 0;
		fault = 0;
		clk = 0;
		rst = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		en=1;
		rst=0;
		a=4'b1010;
		b=4'b1011;
		
        
		// Add stimulus here

	end
      
endmodule

