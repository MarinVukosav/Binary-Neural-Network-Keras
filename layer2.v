`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:34 06/22/2019 
// Design Name: 
// Module Name:    alu2 
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
module alu2(in2, out2);
input [49:0] in2;
output reg [9:0] out2;

  reg [8:0] t0;
  reg [49:0] w0 = 50'b11101000100101001111011001101011100101011000000110;
  reg [8:0] th0 = 9'd25;
  reg [49:0] weighted0;
  reg [8:0] t1;
  reg [49:0] w1 = 50'b00100100001110001101111101110011111101000001001011;
  reg [8:0] th1 = 9'd26;
  reg [49:0] weighted1;
  reg [8:0] t2;
  reg [49:0] w2 = 50'b10100101001111111100101010100010010101000011001101;
  reg [8:0] th2 = 9'd24;
  reg [49:0] weighted2;
  reg [8:0] t3;
  reg [49:0] w3 = 50'b11111110111111100100101110100011011011111111010001;
  reg [8:0] th3 = 9'd23;
  reg [49:0] weighted3;
  reg [8:0] t4;
  reg [49:0] w4 = 50'b00000100111001000000011111101110111010000100000101;
  reg [8:0] th4 = 9'd23;
  reg [49:0] weighted4;
  reg [8:0] t5;
  reg [49:0] w5 = 50'b01111010111001100010011100010100100001000100111110;
  reg [8:0] th5 = 9'd22;
  reg [49:0] weighted5;
  reg [8:0] t6;
  reg [49:0] w6 = 50'b11000111100100000111110001100011100010000001011111;
  reg [8:0] th6 = 9'd26;
  reg [49:0] weighted6;
  reg [8:0] t7;
  reg [49:0] w7 = 50'b10111001111110101111011000101001100111110111010100;
  reg [8:0] th7 = 9'd2;
  reg [49:0] weighted7;
  reg [8:0] t8;
  reg [49:0] w8 = 50'b11111001101111000011100101100101101011101011100001;
  reg [8:0] th8 = 9'd27;
  reg [49:0] weighted8;
  reg [8:0] t9;
  reg [49:0] w9 = 50'b01000110110001010000101110001000011110000111101010;
  reg [8:0] th9 = 9'd33;
  reg [49:0] weighted9;
  
   integer idx;

  always @* begin
    for( idx = 0; idx<50; idx = idx + 1) begin
      weighted0[idx] = ((w0[idx])~^(in2[idx]));
      weighted1[idx] = ((w1[idx])~^(in2[idx]));
      weighted2[idx] = ((w2[idx])~^(in2[idx]));
      weighted3[idx] = ((w3[idx])~^(in2[idx]));
      weighted4[idx] = ((w4[idx])~^(in2[idx]));
      weighted5[idx] = ((w5[idx])~^(in2[idx]));
      weighted6[idx] = ((w6[idx])~^(in2[idx]));
      weighted7[idx] = ((w7[idx])~^(in2[idx]));
      weighted8[idx] = ((w8[idx])~^(in2[idx]));
      weighted9[idx] = ((w9[idx])~^(in2[idx]));
		end
		end
		
	 always @* begin
    t0 = weighted0[0] + weighted0[1] + weighted0[2] + weighted0[3] + weighted0[4] + weighted0[5] + weighted0[6] + weighted0[7] + weighted0[8] + weighted0[9];
		t1 = weighted1[0] + weighted1[1] + weighted1[2] + weighted1[3] + weighted1[4] + weighted1[5] + weighted1[6] + weighted1[7] + weighted1[8] + weighted1[9];
		 t2 = weighted2[0] + weighted2[1] + weighted2[2] + weighted2[3] + weighted2[4] + weighted2[5] + weighted2[6] + weighted2[7] + weighted2[8] + weighted2[9];
		 t3 = weighted3[0] + weighted3[1] + weighted3[2] + weighted3[3] + weighted3[4] + weighted3[5] + weighted3[6] + weighted3[7] + weighted3[8] + weighted3[9];
		 t4 = weighted4[0] + weighted4[1] + weighted4[2] + weighted4[3] + weighted4[4] + weighted4[5] + weighted4[6] + weighted4[7] + weighted4[8] + weighted4[9];
		 t5 = weighted5[0] + weighted5[1] + weighted5[2] + weighted5[3] + weighted5[4] + weighted5[5] + weighted5[6] + weighted5[7] + weighted5[8] + weighted5[9];
		 t6 = weighted6[0] + weighted6[1] + weighted6[2] + weighted6[3] + weighted6[4] + weighted6[5] + weighted6[6] + weighted6[7] + weighted6[8] + weighted6[9];
		 t7 = weighted7[0] + weighted7[1] + weighted7[2] + weighted7[3] + weighted7[4] + weighted7[5] + weighted7[6] + weighted7[7] + weighted7[8] + weighted7[9];
		 t8 = weighted8[0] + weighted8[1] + weighted8[2] + weighted8[3] + weighted8[4] + weighted8[5] + weighted8[6] + weighted8[7] + weighted8[8] + weighted8[9];
		 t9 = weighted9[0] + weighted9[1] + weighted9[2] + weighted9[3] + weighted9[4] + weighted9[5] + weighted9[6] + weighted9[7] + weighted9[8] + weighted9[9];
		end
	always @* begin
    out2[0] = t0 > th0;
    out2[1] = t1 > th1;
    out2[2] = t2 > th2;
    out2[3] = t3 > th3;
    out2[4] = t4 > th4;
    out2[5] = t5 > th5;
    out2[6] = t6 > th6;
    out2[7] = t7 > th7;
    out2[8] = t8 > th8;
    out2[9] = t9 > th9;
	 end

endmodule