`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:28 06/22/2019 
// Design Name: 
// Module Name:    top 
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
module top(
	input [74:0] in3,
	output reg [9:0] out3
    );
	wire [49:0] a;
	alu layer0(.in(in3),.out(a));
	alu2 layer1(.in2(a),.out2(out3));
	

endmodule