`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:04 04/16/2019 
// Design Name: 
// Module Name:    alu 
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



module alu(in, out);

  input [74:0] in;
  output reg [49:0] out;
  reg [6:0] t0;
  reg [74:0] w0 = 75'b111011100111011111011110000101101011000100110001100001101001110000000111111;
  reg [6:0] th0 = 7'd45;
  reg [74:0] weighted0;
  reg [6:0] t1;
  reg [74:0] w1 = 75'b000100011001100000100001111010010100111011001110011110000110100111111000000;
  reg [6:0] th1 = 7'd30;
  reg [74:0] weighted1;
  reg [6:0] t2;
  reg [74:0] w2 = 75'b000100011100100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th2 = 7'd25;
  reg [74:0] weighted2;
  reg [6:0] t3;
  reg [74:0] w3 = 75'b111011100111011111011110000101101011000100110001100001101001011000000111111;
  reg [6:0] th3 = 7'd45;
  reg [74:0] weighted3;
  reg [6:0] t4;
  reg [74:0] w4 = 75'b000100011000100000100001111010010100011011001110011110010110000111111000000;
  reg [6:0] th4 = 7'd29;
  reg [74:0] weighted4;
  reg [6:0] t5;
  reg [74:0] w5 = 75'b111011100111011111011110000101101011000100110001100001101001111000000111111;
  reg [6:0] th5 = 7'd45;
  reg [74:0] weighted5;
  reg [6:0] t6;
  reg [74:0] w6 = 75'b111011100111011111011110000101101011000110110001100001101001111000000111111;
  reg [6:0] th6 = 7'd45;
  reg [74:0] weighted6;
  reg [6:0] t7;
  reg [74:0] w7 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th7 = 7'd28;
  reg [74:0] weighted7;
  reg [6:0] t8;
  reg [74:0] w8 = 75'b111011100111011111011110000101101011000100110001100001101011111000000111111;
  reg [6:0] th8 = 7'd45;
  reg [74:0] weighted8;
  reg [6:0] t9;
  reg [74:0] w9 = 75'b111011100111011111011010000101101011001100110001100001101001111000000111111;
  reg [6:0] th9 = 7'd44;
  reg [74:0] weighted9;
  reg [6:0] t10;
  reg [74:0] w10 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th10 = 7'd29;
  reg [74:0] weighted10;
  reg [6:0] t11;
  reg [74:0] w11 = 75'b111011100111011111011110000101101011000100100001100001101001111000100111111;
  reg [6:0] th11 = 7'd44;
  reg [74:0] weighted11;
  reg [6:0] t12;
  reg [74:0] w12 = 75'b000100011000100000100001111010010100111011001110011110010100000111111100000;
  reg [6:0] th12 = 7'd28;
  reg [74:0] weighted12;
  reg [6:0] t13;
  reg [74:0] w13 = 75'b111011100111011111011110000101101011000100110001100001101001111000000111111;
  reg [6:0] th13 = 7'd45;
  reg [74:0] weighted13;
  reg [6:0] t14;
  reg [74:0] w14 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th14 = 7'd29;
  reg [74:0] weighted14;
  reg [6:0] t15;
  reg [74:0] w15 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th15 = 7'd29;
  reg [74:0] weighted15;
  reg [6:0] t16;
  reg [74:0] w16 = 75'b111011100111011111011110000101101011000100110001100101101001111000000111111;
  reg [6:0] th16 = 7'd46;
  reg [74:0] weighted16;
  reg [6:0] t17;
  reg [74:0] w17 = 75'b000100011000100000100001111010010100111011001110011110010110000111101000000;
  reg [6:0] th17 = 7'd29;
  reg [74:0] weighted17;
  reg [6:0] t18;
  reg [74:0] w18 = 75'b111011100111011111011110000101101011000100110001100001111001111000000111111;
  reg [6:0] th18 = 7'd45;
  reg [74:0] weighted18;
  reg [6:0] t19;
  reg [74:0] w19 = 75'b000100011000100000100001111010010101111011001110011110010110000111111000000;
  reg [6:0] th19 = 7'd29;
  reg [74:0] weighted19;
  reg [6:0] t20;
  reg [74:0] w20 = 75'b111011100111011111011110000101101011000100110001100001101001011000000111111;
  reg [6:0] th20 = 7'd45;
  reg [74:0] weighted20;
  reg [6:0] t21;
  reg [74:0] w21 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th21 = 7'd29;
  reg [74:0] weighted21;
  reg [6:0] t22;
  reg [74:0] w22 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th22 = 7'd29;
  reg [74:0] weighted22;
  reg [6:0] t23;
  reg [74:0] w23 = 75'b000100011000110000100001111010010100111011001111011110010110000111111000000;
  reg [6:0] th23 = 7'd29;
  reg [74:0] weighted23;
  reg [6:0] t24;
  reg [74:0] w24 = 75'b101011100111011111011110000101101011000110110001100001101001111000000111111;
  reg [6:0] th24 = 7'd44;
  reg [74:0] weighted24;
  reg [6:0] t25;
  reg [74:0] w25 = 75'b111011100111011111011110000101101011000100110001100001101001111010000111111;
  reg [6:0] th25 = 7'd45;
  reg [74:0] weighted25;
  reg [6:0] t26;
  reg [74:0] w26 = 75'b000100011000100000100101111010010100111011001110011110010110000111111000000;
  reg [6:0] th26 = 7'd29;
  reg [74:0] weighted26;
  reg [6:0] t27;
  reg [74:0] w27 = 75'b111011100111011111011110000101101011000100110001100001101001111000000111111;
  reg [6:0] th27 = 7'd45;
  reg [74:0] weighted27;
  reg [6:0] t28;
  reg [74:0] w28 = 75'b111011100111011111011110000101101011000100110001100001101001111000000111111;
  reg [6:0] th28 = 7'd45;
  reg [74:0] weighted28;
  reg [6:0] t29;
  reg [74:0] w29 = 75'b000100011100100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th29 = 7'd28;
  reg [74:0] weighted29;
  reg [6:0] t30;
  reg [74:0] w30 = 75'b111011100111011111011110000101101011000100110001100101101001111000000111111;
  reg [6:0] th30 = 7'd46;
  reg [74:0] weighted30;
  reg [6:0] t31;
  reg [74:0] w31 = 75'b111011100111011111011110000101101011000100110001100001101001111000000111111;
  reg [6:0] th31 = 7'd45;
  reg [74:0] weighted31;
  reg [6:0] t32;
  reg [74:0] w32 = 75'b000100011000100000100001111010010100111011001110011110010111000111111000000;
  reg [6:0] th32 = 7'd29;
  reg [74:0] weighted32;
  reg [6:0] t33;
  reg [74:0] w33 = 75'b111011100111011111011110000101101011000100110001100001101001111000000111111;
  reg [6:0] th33 = 7'd45;
  reg [74:0] weighted33;
  reg [6:0] t34;
  reg [74:0] w34 = 75'b000100011000100000100101111010010100111011001110011110010110000111111000000;
  reg [6:0] th34 = 7'd29;
  reg [74:0] weighted34;
  reg [6:0] t35;
  reg [74:0] w35 = 75'b010100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th35 = 7'd29;
  reg [74:0] weighted35;
  reg [6:0] t36;
  reg [74:0] w36 = 75'b111011100111011111011110000101101011000100110001100001111001111000000111111;
  reg [6:0] th36 = 7'd45;
  reg [74:0] weighted36;
  reg [6:0] t37;
  reg [74:0] w37 = 75'b000100011000100000000001111010010100111011001110011110010110000111111000000;
  reg [6:0] th37 = 7'd29;
  reg [74:0] weighted37;
  reg [6:0] t38;
  reg [74:0] w38 = 75'b111011100011011111011110000101101011000101110001100001111001111000000111111;
  reg [6:0] th38 = 7'd44;
  reg [74:0] weighted38;
  reg [6:0] t39;
  reg [74:0] w39 = 75'b000100011000100000100001111010010100101010001110011110000110000111111000000;
  reg [6:0] th39 = 7'd30;
  reg [74:0] weighted39;
  reg [6:0] t40;
  reg [74:0] w40 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th40 = 7'd29;
  reg [74:0] weighted40;
  reg [6:0] t41;
  reg [74:0] w41 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th41 = 7'd29;
  reg [74:0] weighted41;
  reg [6:0] t42;
  reg [74:0] w42 = 75'b000100011000100100100001111010010100111011111110011110010110000111111000000;
  reg [6:0] th42 = 7'd30;
  reg [74:0] weighted42;
  reg [6:0] t43;
  reg [74:0] w43 = 75'b111011100111011111011110000111101011000100110001100001101001111000000111111;
  reg [6:0] th43 = 7'd45;
  reg [74:0] weighted43;
  reg [6:0] t44;
  reg [74:0] w44 = 75'b111011100111011111011111000101101011000100100001100001101001111000000111111;
  reg [6:0] th44 = 7'd45;
  reg [74:0] weighted44;
  reg [6:0] t45;
  reg [74:0] w45 = 75'b000100011000100100100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th45 = 7'd29;
  reg [74:0] weighted45;
  reg [6:0] t46;
  reg [74:0] w46 = 75'b000100011000100000100001111010010100111010001110011110010110000111111000000;
  reg [6:0] th46 = 7'd29;
  reg [74:0] weighted46;
  reg [6:0] t47;
  reg [74:0] w47 = 75'b000100011000101000100001111010010100111010001110011110010110000111111000000;
  reg [6:0] th47 = 7'd30;
  reg [74:0] weighted47;
  reg [6:0] t48;
  reg [74:0] w48 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th48 = 7'd29;
  reg [74:0] weighted48;
  reg [6:0] t49;
  reg [74:0] w49 = 75'b000100011000100000100001111010010100111011001110011110010110000111111000000;
  reg [6:0] th49 = 7'd29;
  reg [74:0] weighted49;



 integer idx;

  always @* begin
    for( idx = 0; idx<75; idx = idx + 1) 
	 begin
      weighted0[idx] = ((w0[idx])~^(in[idx]));
      weighted1[idx] = ((w1[idx])~^(in[idx]));
      weighted2[idx] = ((w2[idx])~^(in[idx]));
      weighted3[idx] = ((w3[idx])~^(in[idx]));
      weighted4[idx] = ((w4[idx])~^(in[idx]));
      weighted5[idx] = ((w5[idx])~^(in[idx]));
      weighted6[idx] = ((w6[idx])~^(in[idx]));
      weighted7[idx] = ((w7[idx])~^(in[idx]));
      weighted8[idx] = ((w8[idx])~^(in[idx]));
      weighted9[idx] = ((w9[idx])~^(in[idx]));
      weighted10[idx] = ((w10[idx])~^(in[idx]));
      weighted11[idx] = ((w11[idx])~^(in[idx]));
      weighted12[idx] = ((w12[idx])~^(in[idx]));
      weighted13[idx] = ((w13[idx])~^(in[idx]));
      weighted14[idx] = ((w14[idx])~^(in[idx]));
      weighted15[idx] = ((w15[idx])~^(in[idx]));
      weighted16[idx] = ((w16[idx])~^(in[idx]));
      weighted17[idx] = ((w17[idx])~^(in[idx]));
      weighted18[idx] = ((w18[idx])~^(in[idx]));
      weighted19[idx] = ((w19[idx])~^(in[idx]));
      weighted20[idx] = ((w20[idx])~^(in[idx]));
      weighted21[idx] = ((w21[idx])~^(in[idx]));
      weighted22[idx] = ((w22[idx])~^(in[idx]));
      weighted23[idx] = ((w23[idx])~^(in[idx]));
      weighted24[idx] = ((w24[idx])~^(in[idx]));
      weighted25[idx] = ((w25[idx])~^(in[idx]));
      weighted26[idx] = ((w26[idx])~^(in[idx]));
      weighted27[idx] = ((w27[idx])~^(in[idx]));
      weighted28[idx] = ((w28[idx])~^(in[idx]));
      weighted29[idx] = ((w29[idx])~^(in[idx]));
      weighted30[idx] = ((w30[idx])~^(in[idx]));
      weighted31[idx] = ((w31[idx])~^(in[idx]));
      weighted32[idx] = ((w32[idx])~^(in[idx]));
      weighted33[idx] = ((w33[idx])~^(in[idx]));
      weighted34[idx] = ((w34[idx])~^(in[idx]));
      weighted35[idx] = ((w35[idx])~^(in[idx]));
      weighted36[idx] = ((w36[idx])~^(in[idx]));
      weighted37[idx] = ((w37[idx])~^(in[idx]));
      weighted38[idx] = ((w38[idx])~^(in[idx]));
      weighted39[idx] = ((w39[idx])~^(in[idx]));
      weighted40[idx] = ((w40[idx])~^(in[idx]));
      weighted41[idx] = ((w41[idx])~^(in[idx]));
      weighted42[idx] = ((w42[idx])~^(in[idx]));
      weighted43[idx] = ((w43[idx])~^(in[idx]));
      weighted44[idx] = ((w44[idx])~^(in[idx]));
      weighted45[idx] = ((w45[idx])~^(in[idx]));
      weighted46[idx] = ((w46[idx])~^(in[idx]));
      weighted47[idx] = ((w47[idx])~^(in[idx]));
      weighted48[idx] = ((w48[idx])~^(in[idx]));
      weighted49[idx] = ((w49[idx])~^(in[idx]));
		end
end
   always @* begin
    t0 = weighted0[0] + weighted0[1] + weighted0[2] + weighted0[3] + weighted0[4] + weighted0[5] + weighted0[6] + weighted0[7] + weighted0[8] + weighted0[9] + weighted0[10] + weighted0[11] + weighted0[12] + weighted0[13] + weighted0[14] + weighted0[15] + weighted0[16] + weighted0[17] + weighted0[18] + weighted0[19] + weighted0[20] + weighted0[21] + weighted0[22] + weighted0[23] + weighted0[24] + weighted0[25] + weighted0[26] + weighted0[27] + weighted0[28] + weighted0[29] + weighted0[30] + weighted0[31] + weighted0[32] + weighted0[33] + weighted0[34] + weighted0[35] + weighted0[36] + weighted0[37] + weighted0[38] + weighted0[39] + weighted0[40] + weighted0[41] + weighted0[42] + weighted0[43] + weighted0[44] + weighted0[45] + weighted0[46] + weighted0[47] + weighted0[48] + weighted0[49] + weighted0[50] + weighted0[51] + weighted0[52] + weighted0[53] + weighted0[54] + weighted0[55] + weighted0[56] + weighted0[57] + weighted0[58] + weighted0[59] + weighted0[60] + weighted0[61] + weighted0[62] + weighted0[63] + weighted0[64] + weighted0[65] + weighted0[66] + weighted0[67] + weighted0[68] + weighted0[69] + weighted0[70] + weighted0[71] + weighted0[72] + weighted0[73] + weighted0[74];
	 t1 = weighted1[0] + weighted1[1] + weighted1[2] + weighted1[3] + weighted1[4] + weighted1[5] + weighted1[6] + weighted1[7] + weighted1[8] + weighted1[9] + weighted1[10] + weighted1[11] + weighted1[12] + weighted1[13] + weighted1[14] + weighted1[15] + weighted1[16] + weighted1[17] + weighted1[18] + weighted1[19] + weighted1[20] + weighted1[21] + weighted1[22] + weighted1[23] + weighted1[24] + weighted1[25] + weighted1[26] + weighted1[27] + weighted1[28] + weighted1[29] + weighted1[30] + weighted1[31] + weighted1[32] + weighted1[33] + weighted1[34] + weighted1[35] + weighted1[36] + weighted1[37] + weighted1[38] + weighted1[39] + weighted1[40] + weighted1[41] + weighted1[42] + weighted1[43] + weighted1[44] + weighted1[45] + weighted1[46] + weighted1[47] + weighted1[48] + weighted1[49] + weighted1[50] + weighted1[51] + weighted1[52] + weighted1[53] + weighted1[54] + weighted1[55] + weighted1[56] + weighted1[57] + weighted1[58] + weighted1[59] + weighted1[60] + weighted1[61] + weighted1[62] + weighted1[63] + weighted1[64] + weighted1[65] + weighted1[66] + weighted1[67] + weighted1[68] + weighted1[69] + weighted1[70] + weighted1[71] + weighted1[72] + weighted1[73] + weighted1[74];
	 t2 = weighted2[0] + weighted2[1] + weighted2[2] + weighted2[3] + weighted2[4] + weighted2[5] + weighted2[6] + weighted2[7] + weighted2[8] + weighted2[9] + weighted2[10] + weighted2[11] + weighted2[12] + weighted2[13] + weighted2[14] + weighted2[15] + weighted2[16] + weighted2[17] + weighted2[18] + weighted2[19] + weighted2[20] + weighted2[21] + weighted2[22] + weighted2[23] + weighted2[24] + weighted2[25] + weighted2[26] + weighted2[27] + weighted2[28] + weighted2[29] + weighted2[30] + weighted2[31] + weighted2[32] + weighted2[33] + weighted2[34] + weighted2[35] + weighted2[36] + weighted2[37] + weighted2[38] + weighted2[39] + weighted2[40] + weighted2[41] + weighted2[42] + weighted2[43] + weighted2[44] + weighted2[45] + weighted2[46] + weighted2[47] + weighted2[48] + weighted2[49] + weighted2[50] + weighted2[51] + weighted2[52] + weighted2[53] + weighted2[54] + weighted2[55] + weighted2[56] + weighted2[57] + weighted2[58] + weighted2[59] + weighted2[60] + weighted2[61] + weighted2[62] + weighted2[63] + weighted2[64] + weighted2[65] + weighted2[66] + weighted2[67] + weighted2[68] + weighted2[69] + weighted2[70] + weighted2[71] + weighted2[72] + weighted2[73] + weighted2[74]; 
	 t3 = weighted3[0] + weighted3[1] + weighted3[2] + weighted3[3] + weighted3[4] + weighted3[5] + weighted3[6] + weighted3[7] + weighted3[8] + weighted3[9] + weighted3[10] + weighted3[11] + weighted3[12] + weighted3[13] + weighted3[14] + weighted3[15] + weighted3[16] + weighted3[17] + weighted3[18] + weighted3[19] + weighted3[20] + weighted3[21] + weighted3[22] + weighted3[23] + weighted3[24] + weighted3[25] + weighted3[26] + weighted3[27] + weighted3[28] + weighted3[29] + weighted3[30] + weighted3[31] + weighted3[32] + weighted3[33] + weighted3[34] + weighted3[35] + weighted3[36] + weighted3[37] + weighted3[38] + weighted3[39] + weighted3[40] + weighted3[41] + weighted3[42] + weighted3[43] + weighted3[44] + weighted3[45] + weighted3[46] + weighted3[47] + weighted3[48] + weighted3[49] + weighted3[50] + weighted3[51] + weighted3[52] + weighted3[53] + weighted3[54] + weighted3[55] + weighted3[56] + weighted3[57] + weighted3[58] + weighted3[59] + weighted3[60] + weighted3[61] + weighted3[62] + weighted3[63] + weighted3[64] + weighted3[65] + weighted3[66] + weighted3[67] + weighted3[68] + weighted3[69] + weighted3[70] + weighted3[71] + weighted3[72] + weighted3[73] + weighted3[74];
	 t4 = weighted4[0] + weighted4[1] + weighted4[2] + weighted4[3] + weighted4[4] + weighted4[5] + weighted4[6] + weighted4[7] + weighted4[8] + weighted4[9] + weighted4[10] + weighted4[11] + weighted4[12] + weighted4[13] + weighted4[14] + weighted4[15] + weighted4[16] + weighted4[17] + weighted4[18] + weighted4[19] + weighted4[20] + weighted4[21] + weighted4[22] + weighted4[23] + weighted4[24] + weighted4[25] + weighted4[26] + weighted4[27] + weighted4[28] + weighted4[29] + weighted4[30] + weighted4[31] + weighted4[32] + weighted4[33] + weighted4[34] + weighted4[35] + weighted4[36] + weighted4[37] + weighted4[38] + weighted4[39] + weighted4[40] + weighted4[41] + weighted4[42] + weighted4[43] + weighted4[44] + weighted4[45] + weighted4[46] + weighted4[47] + weighted4[48] + weighted4[49] + weighted4[50] + weighted4[51] + weighted4[52] + weighted4[53] + weighted4[54] + weighted4[55] + weighted4[56] + weighted4[57] + weighted4[58] + weighted4[59] + weighted4[60] + weighted4[61] + weighted4[62] + weighted4[63] + weighted4[64] + weighted4[65] + weighted4[66] + weighted4[67] + weighted4[68] + weighted4[69] + weighted4[70] + weighted4[71] + weighted4[72] + weighted4[73] + weighted4[74];
	 t5 = weighted5[0] + weighted5[1] + weighted5[2] + weighted5[3] + weighted5[4] + weighted5[5] + weighted5[6] + weighted5[7] + weighted5[8] + weighted5[9] + weighted5[10] + weighted5[11] + weighted5[12] + weighted5[13] + weighted5[14] + weighted5[15] + weighted5[16] + weighted5[17] + weighted5[18] + weighted5[19] + weighted5[20] + weighted5[21] + weighted5[22] + weighted5[23] + weighted5[24] + weighted5[25] + weighted5[26] + weighted5[27] + weighted5[28] + weighted5[29] + weighted5[30] + weighted5[31] + weighted5[32] + weighted5[33] + weighted5[34] + weighted5[35] + weighted5[36] + weighted5[37] + weighted5[38] + weighted5[39] + weighted5[40] + weighted5[41] + weighted5[42] + weighted5[43] + weighted5[44] + weighted5[45] + weighted5[46] + weighted5[47] + weighted5[48] + weighted5[49] + weighted5[50] + weighted5[51] + weighted5[52] + weighted5[53] + weighted5[54] + weighted5[55] + weighted5[56] + weighted5[57] + weighted5[58] + weighted5[59] + weighted5[60] + weighted5[61] + weighted5[62] + weighted5[63] + weighted5[64] + weighted5[65] + weighted5[66] + weighted5[67] + weighted5[68] + weighted5[69] + weighted5[70] + weighted5[71] + weighted5[72] + weighted5[73] + weighted5[74];
	 t6 = weighted6[0] + weighted6[1] + weighted6[2] + weighted6[3] + weighted6[4] + weighted6[5] + weighted6[6] + weighted6[7] + weighted6[8] + weighted6[9] + weighted6[10] + weighted6[11] + weighted6[12] + weighted6[13] + weighted6[14] + weighted6[15] + weighted6[16] + weighted6[17] + weighted6[18] + weighted6[19] + weighted6[20] + weighted6[21] + weighted6[22] + weighted6[23] + weighted6[24] + weighted6[25] + weighted6[26] + weighted6[27] + weighted6[28] + weighted6[29] + weighted6[30] + weighted6[31] + weighted6[32] + weighted6[33] + weighted6[34] + weighted6[35] + weighted6[36] + weighted6[37] + weighted6[38] + weighted6[39] + weighted6[40] + weighted6[41] + weighted6[42] + weighted6[43] + weighted6[44] + weighted6[45] + weighted6[46] + weighted6[47] + weighted6[48] + weighted6[49] + weighted6[50] + weighted6[51] + weighted6[52] + weighted6[53] + weighted6[54] + weighted6[55] + weighted6[56] + weighted6[57] + weighted6[58] + weighted6[59] + weighted6[60] + weighted6[61] + weighted6[62] + weighted6[63] + weighted6[64] + weighted6[65] + weighted6[66] + weighted6[67] + weighted6[68] + weighted6[69] + weighted6[70] + weighted6[71] + weighted6[72] + weighted6[73] + weighted6[74];
	 t7 = weighted7[0] + weighted7[1] + weighted7[2] + weighted7[3] + weighted7[4] + weighted7[5] + weighted7[6] + weighted7[7] + weighted7[8] + weighted7[9] + weighted7[10] + weighted7[11] + weighted7[12] + weighted7[13] + weighted7[14] + weighted7[15] + weighted7[16] + weighted7[17] + weighted7[18] + weighted7[19] + weighted7[20] + weighted7[21] + weighted7[22] + weighted7[23] + weighted7[24] + weighted7[25] + weighted7[26] + weighted7[27] + weighted7[28] + weighted7[29] + weighted7[30] + weighted7[31] + weighted7[32] + weighted7[33] + weighted7[34] + weighted7[35] + weighted7[36] + weighted7[37] + weighted7[38] + weighted7[39] + weighted7[40] + weighted7[41] + weighted7[42] + weighted7[43] + weighted7[44] + weighted7[45] + weighted7[46] + weighted7[47] + weighted7[48] + weighted7[49] + weighted7[50] + weighted7[51] + weighted7[52] + weighted7[53] + weighted7[54] + weighted7[55] + weighted7[56] + weighted7[57] + weighted7[58] + weighted7[59] + weighted7[60] + weighted7[61] + weighted7[62] + weighted7[63] + weighted7[64] + weighted7[65] + weighted7[66] + weighted7[67] + weighted7[68] + weighted7[69] + weighted7[70] + weighted7[71] + weighted7[72] + weighted7[73] + weighted7[74];
	 t8 = weighted8[0] + weighted8[1] + weighted8[2] + weighted8[3] + weighted8[4] + weighted8[5] + weighted8[6] + weighted8[7] + weighted8[8] + weighted8[9] + weighted8[10] + weighted8[11] + weighted8[12] + weighted8[13] + weighted8[14] + weighted8[15] + weighted8[16] + weighted8[17] + weighted8[18] + weighted8[19] + weighted8[20] + weighted8[21] + weighted8[22] + weighted8[23] + weighted8[24] + weighted8[25] + weighted8[26] + weighted8[27] + weighted8[28] + weighted8[29] + weighted8[30] + weighted8[31] + weighted8[32] + weighted8[33] + weighted8[34] + weighted8[35] + weighted8[36] + weighted8[37] + weighted8[38] + weighted8[39] + weighted8[40] + weighted8[41] + weighted8[42] + weighted8[43] + weighted8[44] + weighted8[45] + weighted8[46] + weighted8[47] + weighted8[48] + weighted8[49] + weighted8[50] + weighted8[51] + weighted8[52] + weighted8[53] + weighted8[54] + weighted8[55] + weighted8[56] + weighted8[57] + weighted8[58] + weighted8[59] + weighted8[60] + weighted8[61] + weighted8[62] + weighted8[63] + weighted8[64] + weighted8[65] + weighted8[66] + weighted8[67] + weighted8[68] + weighted8[69] + weighted8[70] + weighted8[71] + weighted8[72] + weighted8[73] + weighted8[74];
	 t9 = weighted9[0] + weighted9[1] + weighted9[2] + weighted9[3] + weighted9[4] + weighted9[5] + weighted9[6] + weighted9[7] + weighted9[8] + weighted9[9] + weighted9[10] + weighted9[11] + weighted9[12] + weighted9[13] + weighted9[14] + weighted9[15] + weighted9[16] + weighted9[17] + weighted9[18] + weighted9[19] + weighted9[20] + weighted9[21] + weighted9[22] + weighted9[23] + weighted9[24] + weighted9[25] + weighted9[26] + weighted9[27] + weighted9[28] + weighted9[29] + weighted9[30] + weighted9[31] + weighted9[32] + weighted9[33] + weighted9[34] + weighted9[35] + weighted9[36] + weighted9[37] + weighted9[38] + weighted9[39] + weighted9[40] + weighted9[41] + weighted9[42] + weighted9[43] + weighted9[44] + weighted9[45] + weighted9[46] + weighted9[47] + weighted9[48] + weighted9[49] + weighted9[50] + weighted9[51] + weighted9[52] + weighted9[53] + weighted9[54] + weighted9[55] + weighted9[56] + weighted9[57] + weighted9[58] + weighted9[59] + weighted9[60] + weighted9[61] + weighted9[62] + weighted9[63] + weighted9[64] + weighted9[65] + weighted9[66] + weighted9[67] + weighted9[68] + weighted9[69] + weighted9[70] + weighted9[71] + weighted9[72] + weighted9[73] + weighted9[74];
	 t10 = weighted10[0] + weighted10[1] + weighted10[2] + weighted10[3] + weighted10[4] + weighted10[5] + weighted10[6] + weighted10[7] + weighted10[8] + weighted10[9] + weighted10[10] + weighted10[11] + weighted10[12] + weighted10[13] + weighted10[14] + weighted10[15] + weighted10[16] + weighted10[17] + weighted10[18] + weighted10[19] + weighted10[20] + weighted10[21] + weighted10[22] + weighted10[23] + weighted10[24] + weighted10[25] + weighted10[26] + weighted10[27] + weighted10[28] + weighted10[29] + weighted10[30] + weighted10[31] + weighted10[32] + weighted10[33] + weighted10[34] + weighted10[35] + weighted10[36] + weighted10[37] + weighted10[38] + weighted10[39] + weighted10[40] + weighted10[41] + weighted10[42] + weighted10[43] + weighted10[44] + weighted10[45] + weighted10[46] + weighted10[47] + weighted10[48] + weighted10[49] + weighted10[50] + weighted10[51] + weighted10[52] + weighted10[53] + weighted10[54] + weighted10[55] + weighted10[56] + weighted10[57] + weighted10[58] + weighted10[59] + weighted10[60] + weighted10[61] + weighted10[62] + weighted10[63] + weighted10[64] + weighted10[65] + weighted10[66] + weighted10[67] + weighted10[68] + weighted10[69] + weighted10[70] + weighted10[71] + weighted10[72] + weighted10[73] + weighted10[74];
	 t11 = weighted11[0] + weighted11[1] + weighted11[2] + weighted11[3] + weighted11[4] + weighted11[5] + weighted11[6] + weighted11[7] + weighted11[8] + weighted11[9] + weighted11[10] + weighted11[11] + weighted11[12] + weighted11[13] + weighted11[14] + weighted11[15] + weighted11[16] + weighted11[17] + weighted11[18] + weighted11[19] + weighted11[20] + weighted11[21] + weighted11[22] + weighted11[23] + weighted11[24] + weighted11[25] + weighted11[26] + weighted11[27] + weighted11[28] + weighted11[29] + weighted11[30] + weighted11[31] + weighted11[32] + weighted11[33] + weighted11[34] + weighted11[35] + weighted11[36] + weighted11[37] + weighted11[38] + weighted11[39] + weighted11[40] + weighted11[41] + weighted11[42] + weighted11[43] + weighted11[44] + weighted11[45] + weighted11[46] + weighted11[47] + weighted11[48] + weighted11[49] + weighted11[50] + weighted11[51] + weighted11[52] + weighted11[53] + weighted11[54] + weighted11[55] + weighted11[56] + weighted11[57] + weighted11[58] + weighted11[59] + weighted11[60] + weighted11[61] + weighted11[62] + weighted11[63] + weighted11[64] + weighted11[65] + weighted11[66] + weighted11[67] + weighted11[68] + weighted11[69] + weighted11[70] + weighted11[71] + weighted11[72] + weighted11[73] + weighted11[74];
	 t12 = weighted12[0] + weighted12[1] + weighted12[2] + weighted12[3] + weighted12[4] + weighted12[5] + weighted12[6] + weighted12[7] + weighted12[8] + weighted12[9] + weighted12[10] + weighted12[11] + weighted12[12] + weighted12[13] + weighted12[14] + weighted12[15] + weighted12[16] + weighted12[17] + weighted12[18] + weighted12[19] + weighted12[20] + weighted12[21] + weighted12[22] + weighted12[23] + weighted12[24] + weighted12[25] + weighted12[26] + weighted12[27] + weighted12[28] + weighted12[29] + weighted12[30] + weighted12[31] + weighted12[32] + weighted12[33] + weighted12[34] + weighted12[35] + weighted12[36] + weighted12[37] + weighted12[38] + weighted12[39] + weighted12[40] + weighted12[41] + weighted12[42] + weighted12[43] + weighted12[44] + weighted12[45] + weighted12[46] + weighted12[47] + weighted12[48] + weighted12[49] + weighted12[50] + weighted12[51] + weighted12[52] + weighted12[53] + weighted12[54] + weighted12[55] + weighted12[56] + weighted12[57] + weighted12[58] + weighted12[59] + weighted12[60] + weighted12[61] + weighted12[62] + weighted12[63] + weighted12[64] + weighted12[65] + weighted12[66] + weighted12[67] + weighted12[68] + weighted12[69] + weighted12[70] + weighted12[71] + weighted12[72] + weighted12[73] + weighted12[74];
	 t13 = weighted13[0] + weighted13[1] + weighted13[2] + weighted13[3] + weighted13[4] + weighted13[5] + weighted13[6] + weighted13[7] + weighted13[8] + weighted13[9] + weighted13[10] + weighted13[11] + weighted13[12] + weighted13[13] + weighted13[14] + weighted13[15] + weighted13[16] + weighted13[17] + weighted13[18] + weighted13[19] + weighted13[20] + weighted13[21] + weighted13[22] + weighted13[23] + weighted13[24] + weighted13[25] + weighted13[26] + weighted13[27] + weighted13[28] + weighted13[29] + weighted13[30] + weighted13[31] + weighted13[32] + weighted13[33] + weighted13[34] + weighted13[35] + weighted13[36] + weighted13[37] + weighted13[38] + weighted13[39] + weighted13[40] + weighted13[41] + weighted13[42] + weighted13[43] + weighted13[44] + weighted13[45] + weighted13[46] + weighted13[47] + weighted13[48] + weighted13[49] + weighted13[50] + weighted13[51] + weighted13[52] + weighted13[53] + weighted13[54] + weighted13[55] + weighted13[56] + weighted13[57] + weighted13[58] + weighted13[59] + weighted13[60] + weighted13[61] + weighted13[62] + weighted13[63] + weighted13[64] + weighted13[65] + weighted13[66] + weighted13[67] + weighted13[68] + weighted13[69] + weighted13[70] + weighted13[71] + weighted13[72] + weighted13[73] + weighted13[74];
	 t14 = weighted14[0] + weighted14[1] + weighted14[2] + weighted14[3] + weighted14[4] + weighted14[5] + weighted14[6] + weighted14[7] + weighted14[8] + weighted14[9] + weighted14[10] + weighted14[11] + weighted14[12] + weighted14[13] + weighted14[14] + weighted14[15] + weighted14[16] + weighted14[17] + weighted14[18] + weighted14[19] + weighted14[20] + weighted14[21] + weighted14[22] + weighted14[23] + weighted14[24] + weighted14[25] + weighted14[26] + weighted14[27] + weighted14[28] + weighted14[29] + weighted14[30] + weighted14[31] + weighted14[32] + weighted14[33] + weighted14[34] + weighted14[35] + weighted14[36] + weighted14[37] + weighted14[38] + weighted14[39] + weighted14[40] + weighted14[41] + weighted14[42] + weighted14[43] + weighted14[44] + weighted14[45] + weighted14[46] + weighted14[47] + weighted14[48] + weighted14[49] + weighted14[50] + weighted14[51] + weighted14[52] + weighted14[53] + weighted14[54] + weighted14[55] + weighted14[56] + weighted14[57] + weighted14[58] + weighted14[59] + weighted14[60] + weighted14[61] + weighted14[62] + weighted14[63] + weighted14[64] + weighted14[65] + weighted14[66] + weighted14[67] + weighted14[68] + weighted14[69] + weighted14[70] + weighted14[71] + weighted14[72] + weighted14[73] + weighted14[74];
	 t15 = weighted15[0] + weighted15[1] + weighted15[2] + weighted15[3] + weighted15[4] + weighted15[5] + weighted15[6] + weighted15[7] + weighted15[8] + weighted15[9] + weighted15[10] + weighted15[11] + weighted15[12] + weighted15[13] + weighted15[14] + weighted15[15] + weighted15[16] + weighted15[17] + weighted15[18] + weighted15[19] + weighted15[20] + weighted15[21] + weighted15[22] + weighted15[23] + weighted15[24] + weighted15[25] + weighted15[26] + weighted15[27] + weighted15[28] + weighted15[29] + weighted15[30] + weighted15[31] + weighted15[32] + weighted15[33] + weighted15[34] + weighted15[35] + weighted15[36] + weighted15[37] + weighted15[38] + weighted15[39] + weighted15[40] + weighted15[41] + weighted15[42] + weighted15[43] + weighted15[44] + weighted15[45] + weighted15[46] + weighted15[47] + weighted15[48] + weighted15[49] + weighted15[50] + weighted15[51] + weighted15[52] + weighted15[53] + weighted15[54] + weighted15[55] + weighted15[56] + weighted15[57] + weighted15[58] + weighted15[59] + weighted15[60] + weighted15[61] + weighted15[62] + weighted15[63] + weighted15[64] + weighted15[65] + weighted15[66] + weighted15[67] + weighted15[68] + weighted15[69] + weighted15[70] + weighted15[71] + weighted15[72] + weighted15[73] + weighted15[74];
	 t16 = weighted16[0] + weighted16[1] + weighted16[2] + weighted16[3] + weighted16[4] + weighted16[5] + weighted16[6] + weighted16[7] + weighted16[8] + weighted16[9] + weighted16[10] + weighted16[11] + weighted16[12] + weighted16[13] + weighted16[14] + weighted16[15] + weighted16[16] + weighted16[17] + weighted16[18] + weighted16[19] + weighted16[20] + weighted16[21] + weighted16[22] + weighted16[23] + weighted16[24] + weighted16[25] + weighted16[26] + weighted16[27] + weighted16[28] + weighted16[29] + weighted16[30] + weighted16[31] + weighted16[32] + weighted16[33] + weighted16[34] + weighted16[35] + weighted16[36] + weighted16[37] + weighted16[38] + weighted16[39] + weighted16[40] + weighted16[41] + weighted16[42] + weighted16[43] + weighted16[44] + weighted16[45] + weighted16[46] + weighted16[47] + weighted16[48] + weighted16[49] + weighted16[50] + weighted16[51] + weighted16[52] + weighted16[53] + weighted16[54] + weighted16[55] + weighted16[56] + weighted16[57] + weighted16[58] + weighted16[59] + weighted16[60] + weighted16[61] + weighted16[62] + weighted16[63] + weighted16[64] + weighted16[65] + weighted16[66] + weighted16[67] + weighted16[68] + weighted16[69] + weighted16[70] + weighted16[71] + weighted16[72] + weighted16[73] + weighted16[74];
	 t17 = weighted17[0] + weighted17[1] + weighted17[2] + weighted17[3] + weighted17[4] + weighted17[5] + weighted17[6] + weighted17[7] + weighted17[8] + weighted17[9] + weighted17[10] + weighted17[11] + weighted17[12] + weighted17[13] + weighted17[14] + weighted17[15] + weighted17[16] + weighted17[17] + weighted17[18] + weighted17[19] + weighted17[20] + weighted17[21] + weighted17[22] + weighted17[23] + weighted17[24] + weighted17[25] + weighted17[26] + weighted17[27] + weighted17[28] + weighted17[29] + weighted17[30] + weighted17[31] + weighted17[32] + weighted17[33] + weighted17[34] + weighted17[35] + weighted17[36] + weighted17[37] + weighted17[38] + weighted17[39] + weighted17[40] + weighted17[41] + weighted17[42] + weighted17[43] + weighted17[44] + weighted17[45] + weighted17[46] + weighted17[47] + weighted17[48] + weighted17[49] + weighted17[50] + weighted17[51] + weighted17[52] + weighted17[53] + weighted17[54] + weighted17[55] + weighted17[56] + weighted17[57] + weighted17[58] + weighted17[59] + weighted17[60] + weighted17[61] + weighted17[62] + weighted17[63] + weighted17[64] + weighted17[65] + weighted17[66] + weighted17[67] + weighted17[68] + weighted17[69] + weighted17[70] + weighted17[71] + weighted17[72] + weighted17[73] + weighted17[74];
	 t18 = weighted18[0] + weighted18[1] + weighted18[2] + weighted18[3] + weighted18[4] + weighted18[5] + weighted18[6] + weighted18[7] + weighted18[8] + weighted18[9] + weighted18[10] + weighted18[11] + weighted18[12] + weighted18[13] + weighted18[14] + weighted18[15] + weighted18[16] + weighted18[17] + weighted18[18] + weighted18[19] + weighted18[20] + weighted18[21] + weighted18[22] + weighted18[23] + weighted18[24] + weighted18[25] + weighted18[26] + weighted18[27] + weighted18[28] + weighted18[29] + weighted18[30] + weighted18[31] + weighted18[32] + weighted18[33] + weighted18[34] + weighted18[35] + weighted18[36] + weighted18[37] + weighted18[38] + weighted18[39] + weighted18[40] + weighted18[41] + weighted18[42] + weighted18[43] + weighted18[44] + weighted18[45] + weighted18[46] + weighted18[47] + weighted18[48] + weighted18[49] + weighted18[50] + weighted18[51] + weighted18[52] + weighted18[53] + weighted18[54] + weighted18[55] + weighted18[56] + weighted18[57] + weighted18[58] + weighted18[59] + weighted18[60] + weighted18[61] + weighted18[62] + weighted18[63] + weighted18[64] + weighted18[65] + weighted18[66] + weighted18[67] + weighted18[68] + weighted18[69] + weighted18[70] + weighted18[71] + weighted18[72] + weighted18[73] + weighted18[74];
	 t19 = weighted19[0] + weighted19[1] + weighted19[2] + weighted19[3] + weighted19[4] + weighted19[5] + weighted19[6] + weighted19[7] + weighted19[8] + weighted19[9] + weighted19[10] + weighted19[11] + weighted19[12] + weighted19[13] + weighted19[14] + weighted19[15] + weighted19[16] + weighted19[17] + weighted19[18] + weighted19[19] + weighted19[20] + weighted19[21] + weighted19[22] + weighted19[23] + weighted19[24] + weighted19[25] + weighted19[26] + weighted19[27] + weighted19[28] + weighted19[29] + weighted19[30] + weighted19[31] + weighted19[32] + weighted19[33] + weighted19[34] + weighted19[35] + weighted19[36] + weighted19[37] + weighted19[38] + weighted19[39] + weighted19[40] + weighted19[41] + weighted19[42] + weighted19[43] + weighted19[44] + weighted19[45] + weighted19[46] + weighted19[47] + weighted19[48] + weighted19[49] + weighted19[50] + weighted19[51] + weighted19[52] + weighted19[53] + weighted19[54] + weighted19[55] + weighted19[56] + weighted19[57] + weighted19[58] + weighted19[59] + weighted19[60] + weighted19[61] + weighted19[62] + weighted19[63] + weighted19[64] + weighted19[65] + weighted19[66] + weighted19[67] + weighted19[68] + weighted19[69] + weighted19[70] + weighted19[71] + weighted19[72] + weighted19[73] + weighted19[74];
	 t20 = weighted20[0] + weighted20[1] + weighted20[2] + weighted20[3] + weighted20[4] + weighted20[5] + weighted20[6] + weighted20[7] + weighted20[8] + weighted20[9] + weighted20[10] + weighted20[11] + weighted20[12] + weighted20[13] + weighted20[14] + weighted20[15] + weighted20[16] + weighted20[17] + weighted20[18] + weighted20[19] + weighted20[20] + weighted20[21] + weighted20[22] + weighted20[23] + weighted20[24] + weighted20[25] + weighted20[26] + weighted20[27] + weighted20[28] + weighted20[29] + weighted20[30] + weighted20[31] + weighted20[32] + weighted20[33] + weighted20[34] + weighted20[35] + weighted20[36] + weighted20[37] + weighted20[38] + weighted20[39] + weighted20[40] + weighted20[41] + weighted20[42] + weighted20[43] + weighted20[44] + weighted20[45] + weighted20[46] + weighted20[47] + weighted20[48] + weighted20[49] + weighted20[50] + weighted20[51] + weighted20[52] + weighted20[53] + weighted20[54] + weighted20[55] + weighted20[56] + weighted20[57] + weighted20[58] + weighted20[59] + weighted20[60] + weighted20[61] + weighted20[62] + weighted20[63] + weighted20[64] + weighted20[65] + weighted20[66] + weighted20[67] + weighted20[68] + weighted20[69] + weighted20[70] + weighted20[71] + weighted20[72] + weighted20[73] + weighted20[74];
	 t21 = weighted21[0] + weighted21[1] + weighted21[2] + weighted21[3] + weighted21[4] + weighted21[5] + weighted21[6] + weighted21[7] + weighted21[8] + weighted21[9] + weighted21[10] + weighted21[11] + weighted21[12] + weighted21[13] + weighted21[14] + weighted21[15] + weighted21[16] + weighted21[17] + weighted21[18] + weighted21[19] + weighted21[20] + weighted21[21] + weighted21[22] + weighted21[23] + weighted21[24] + weighted21[25] + weighted21[26] + weighted21[27] + weighted21[28] + weighted21[29] + weighted21[30] + weighted21[31] + weighted21[32] + weighted21[33] + weighted21[34] + weighted21[35] + weighted21[36] + weighted21[37] + weighted21[38] + weighted21[39] + weighted21[40] + weighted21[41] + weighted21[42] + weighted21[43] + weighted21[44] + weighted21[45] + weighted21[46] + weighted21[47] + weighted21[48] + weighted21[49] + weighted21[50] + weighted21[51] + weighted21[52] + weighted21[53] + weighted21[54] + weighted21[55] + weighted21[56] + weighted21[57] + weighted21[58] + weighted21[59] + weighted21[60] + weighted21[61] + weighted21[62] + weighted21[63] + weighted21[64] + weighted21[65] + weighted21[66] + weighted21[67] + weighted21[68] + weighted21[69] + weighted21[70] + weighted21[71] + weighted21[72] + weighted21[73] + weighted21[74];
	 t22 = weighted22[0] + weighted22[1] + weighted22[2] + weighted22[3] + weighted22[4] + weighted22[5] + weighted22[6] + weighted22[7] + weighted22[8] + weighted22[9] + weighted22[10] + weighted22[11] + weighted22[12] + weighted22[13] + weighted22[14] + weighted22[15] + weighted22[16] + weighted22[17] + weighted22[18] + weighted22[19] + weighted22[20] + weighted22[21] + weighted22[22] + weighted22[23] + weighted22[24] + weighted22[25] + weighted22[26] + weighted22[27] + weighted22[28] + weighted22[29] + weighted22[30] + weighted22[31] + weighted22[32] + weighted22[33] + weighted22[34] + weighted22[35] + weighted22[36] + weighted22[37] + weighted22[38] + weighted22[39] + weighted22[40] + weighted22[41] + weighted22[42] + weighted22[43] + weighted22[44] + weighted22[45] + weighted22[46] + weighted22[47] + weighted22[48] + weighted22[49] + weighted22[50] + weighted22[51] + weighted22[52] + weighted22[53] + weighted22[54] + weighted22[55] + weighted22[56] + weighted22[57] + weighted22[58] + weighted22[59] + weighted22[60] + weighted22[61] + weighted22[62] + weighted22[63] + weighted22[64] + weighted22[65] + weighted22[66] + weighted22[67] + weighted22[68] + weighted22[69] + weighted22[70] + weighted22[71] + weighted22[72] + weighted22[73] + weighted22[74];
	 t23 = weighted23[0] + weighted23[1] + weighted23[2] + weighted23[3] + weighted23[4] + weighted23[5] + weighted23[6] + weighted23[7] + weighted23[8] + weighted23[9] + weighted23[10] + weighted23[11] + weighted23[12] + weighted23[13] + weighted23[14] + weighted23[15] + weighted23[16] + weighted23[17] + weighted23[18] + weighted23[19] + weighted23[20] + weighted23[21] + weighted23[22] + weighted23[23] + weighted23[24] + weighted23[25] + weighted23[26] + weighted23[27] + weighted23[28] + weighted23[29] + weighted23[30] + weighted23[31] + weighted23[32] + weighted23[33] + weighted23[34] + weighted23[35] + weighted23[36] + weighted23[37] + weighted23[38] + weighted23[39] + weighted23[40] + weighted23[41] + weighted23[42] + weighted23[43] + weighted23[44] + weighted23[45] + weighted23[46] + weighted23[47] + weighted23[48] + weighted23[49] + weighted23[50] + weighted23[51] + weighted23[52] + weighted23[53] + weighted23[54] + weighted23[55] + weighted23[56] + weighted23[57] + weighted23[58] + weighted23[59] + weighted23[60] + weighted23[61] + weighted23[62] + weighted23[63] + weighted23[64] + weighted23[65] + weighted23[66] + weighted23[67] + weighted23[68] + weighted23[69] + weighted23[70] + weighted23[71] + weighted23[72] + weighted23[73] + weighted23[74];
	 t24 = weighted24[0] + weighted24[1] + weighted24[2] + weighted24[3] + weighted24[4] + weighted24[5] + weighted24[6] + weighted24[7] + weighted24[8] + weighted24[9] + weighted24[10] + weighted24[11] + weighted24[12] + weighted24[13] + weighted24[14] + weighted24[15] + weighted24[16] + weighted24[17] + weighted24[18] + weighted24[19] + weighted24[20] + weighted24[21] + weighted24[22] + weighted24[23] + weighted24[24] + weighted24[25] + weighted24[26] + weighted24[27] + weighted24[28] + weighted24[29] + weighted24[30] + weighted24[31] + weighted24[32] + weighted24[33] + weighted24[34] + weighted24[35] + weighted24[36] + weighted24[37] + weighted24[38] + weighted24[39] + weighted24[40] + weighted24[41] + weighted24[42] + weighted24[43] + weighted24[44] + weighted24[45] + weighted24[46] + weighted24[47] + weighted24[48] + weighted24[49] + weighted24[50] + weighted24[51] + weighted24[52] + weighted24[53] + weighted24[54] + weighted24[55] + weighted24[56] + weighted24[57] + weighted24[58] + weighted24[59] + weighted24[60] + weighted24[61] + weighted24[62] + weighted24[63] + weighted24[64] + weighted24[65] + weighted24[66] + weighted24[67] + weighted24[68] + weighted24[69] + weighted24[70] + weighted24[71] + weighted24[72] + weighted24[73] + weighted24[74];
	 t25 = weighted25[0] + weighted25[1] + weighted25[2] + weighted25[3] + weighted25[4] + weighted25[5] + weighted25[6] + weighted25[7] + weighted25[8] + weighted25[9] + weighted25[10] + weighted25[11] + weighted25[12] + weighted25[13] + weighted25[14] + weighted25[15] + weighted25[16] + weighted25[17] + weighted25[18] + weighted25[19] + weighted25[20] + weighted25[21] + weighted25[22] + weighted25[23] + weighted25[24] + weighted25[25] + weighted25[26] + weighted25[27] + weighted25[28] + weighted25[29] + weighted25[30] + weighted25[31] + weighted25[32] + weighted25[33] + weighted25[34] + weighted25[35] + weighted25[36] + weighted25[37] + weighted25[38] + weighted25[39] + weighted25[40] + weighted25[41] + weighted25[42] + weighted25[43] + weighted25[44] + weighted25[45] + weighted25[46] + weighted25[47] + weighted25[48] + weighted25[49] + weighted25[50] + weighted25[51] + weighted25[52] + weighted25[53] + weighted25[54] + weighted25[55] + weighted25[56] + weighted25[57] + weighted25[58] + weighted25[59] + weighted25[60] + weighted25[61] + weighted25[62] + weighted25[63] + weighted25[64] + weighted25[65] + weighted25[66] + weighted25[67] + weighted25[68] + weighted25[69] + weighted25[70] + weighted25[71] + weighted25[72] + weighted25[73] + weighted25[74];
	 t26 = weighted26[0] + weighted26[1] + weighted26[2] + weighted26[3] + weighted26[4] + weighted26[5] + weighted26[6] + weighted26[7] + weighted26[8] + weighted26[9] + weighted26[10] + weighted26[11] + weighted26[12] + weighted26[13] + weighted26[14] + weighted26[15] + weighted26[16] + weighted26[17] + weighted26[18] + weighted26[19] + weighted26[20] + weighted26[21] + weighted26[22] + weighted26[23] + weighted26[24] + weighted26[25] + weighted26[26] + weighted26[27] + weighted26[28] + weighted26[29] + weighted26[30] + weighted26[31] + weighted26[32] + weighted26[33] + weighted26[34] + weighted26[35] + weighted26[36] + weighted26[37] + weighted26[38] + weighted26[39] + weighted26[40] + weighted26[41] + weighted26[42] + weighted26[43] + weighted26[44] + weighted26[45] + weighted26[46] + weighted26[47] + weighted26[48] + weighted26[49] + weighted26[50] + weighted26[51] + weighted26[52] + weighted26[53] + weighted26[54] + weighted26[55] + weighted26[56] + weighted26[57] + weighted26[58] + weighted26[59] + weighted26[60] + weighted26[61] + weighted26[62] + weighted26[63] + weighted26[64] + weighted26[65] + weighted26[66] + weighted26[67] + weighted26[68] + weighted26[69] + weighted26[70] + weighted26[71] + weighted26[72] + weighted26[73] + weighted26[74];
	 t27 = weighted27[0] + weighted27[1] + weighted27[2] + weighted27[3] + weighted27[4] + weighted27[5] + weighted27[6] + weighted27[7] + weighted27[8] + weighted27[9] + weighted27[10] + weighted27[11] + weighted27[12] + weighted27[13] + weighted27[14] + weighted27[15] + weighted27[16] + weighted27[17] + weighted27[18] + weighted27[19] + weighted27[20] + weighted27[21] + weighted27[22] + weighted27[23] + weighted27[24] + weighted27[25] + weighted27[26] + weighted27[27] + weighted27[28] + weighted27[29] + weighted27[30] + weighted27[31] + weighted27[32] + weighted27[33] + weighted27[34] + weighted27[35] + weighted27[36] + weighted27[37] + weighted27[38] + weighted27[39] + weighted27[40] + weighted27[41] + weighted27[42] + weighted27[43] + weighted27[44] + weighted27[45] + weighted27[46] + weighted27[47] + weighted27[48] + weighted27[49] + weighted27[50] + weighted27[51] + weighted27[52] + weighted27[53] + weighted27[54] + weighted27[55] + weighted27[56] + weighted27[57] + weighted27[58] + weighted27[59] + weighted27[60] + weighted27[61] + weighted27[62] + weighted27[63] + weighted27[64] + weighted27[65] + weighted27[66] + weighted27[67] + weighted27[68] + weighted27[69] + weighted27[70] + weighted27[71] + weighted27[72] + weighted27[73] + weighted27[74];
	 t28 = weighted28[0] + weighted28[1] + weighted28[2] + weighted28[3] + weighted28[4] + weighted28[5] + weighted28[6] + weighted28[7] + weighted28[8] + weighted28[9] + weighted28[10] + weighted28[11] + weighted28[12] + weighted28[13] + weighted28[14] + weighted28[15] + weighted28[16] + weighted28[17] + weighted28[18] + weighted28[19] + weighted28[20] + weighted28[21] + weighted28[22] + weighted28[23] + weighted28[24] + weighted28[25] + weighted28[26] + weighted28[27] + weighted28[28] + weighted28[29] + weighted28[30] + weighted28[31] + weighted28[32] + weighted28[33] + weighted28[34] + weighted28[35] + weighted28[36] + weighted28[37] + weighted28[38] + weighted28[39] + weighted28[40] + weighted28[41] + weighted28[42] + weighted28[43] + weighted28[44] + weighted28[45] + weighted28[46] + weighted28[47] + weighted28[48] + weighted28[49] + weighted28[50] + weighted28[51] + weighted28[52] + weighted28[53] + weighted28[54] + weighted28[55] + weighted28[56] + weighted28[57] + weighted28[58] + weighted28[59] + weighted28[60] + weighted28[61] + weighted28[62] + weighted28[63] + weighted28[64] + weighted28[65] + weighted28[66] + weighted28[67] + weighted28[68] + weighted28[69] + weighted28[70] + weighted28[71] + weighted28[72] + weighted28[73] + weighted28[74];
	 t29 = weighted29[0] + weighted29[1] + weighted29[2] + weighted29[3] + weighted29[4] + weighted29[5] + weighted29[6] + weighted29[7] + weighted29[8] + weighted29[9] + weighted29[10] + weighted29[11] + weighted29[12] + weighted29[13] + weighted29[14] + weighted29[15] + weighted29[16] + weighted29[17] + weighted29[18] + weighted29[19] + weighted29[20] + weighted29[21] + weighted29[22] + weighted29[23] + weighted29[24] + weighted29[25] + weighted29[26] + weighted29[27] + weighted29[28] + weighted29[29] + weighted29[30] + weighted29[31] + weighted29[32] + weighted29[33] + weighted29[34] + weighted29[35] + weighted29[36] + weighted29[37] + weighted29[38] + weighted29[39] + weighted29[40] + weighted29[41] + weighted29[42] + weighted29[43] + weighted29[44] + weighted29[45] + weighted29[46] + weighted29[47] + weighted29[48] + weighted29[49] + weighted29[50] + weighted29[51] + weighted29[52] + weighted29[53] + weighted29[54] + weighted29[55] + weighted29[56] + weighted29[57] + weighted29[58] + weighted29[59] + weighted29[60] + weighted29[61] + weighted29[62] + weighted29[63] + weighted29[64] + weighted29[65] + weighted29[66] + weighted29[67] + weighted29[68] + weighted29[69] + weighted29[70] + weighted29[71] + weighted29[72] + weighted29[73] + weighted29[74];
	 t30 = weighted30[0] + weighted30[1] + weighted30[2] + weighted30[3] + weighted30[4] + weighted30[5] + weighted30[6] + weighted30[7] + weighted30[8] + weighted30[9] + weighted30[10] + weighted30[11] + weighted30[12] + weighted30[13] + weighted30[14] + weighted30[15] + weighted30[16] + weighted30[17] + weighted30[18] + weighted30[19] + weighted30[20] + weighted30[21] + weighted30[22] + weighted30[23] + weighted30[24] + weighted30[25] + weighted30[26] + weighted30[27] + weighted30[28] + weighted30[29] + weighted30[30] + weighted30[31] + weighted30[32] + weighted30[33] + weighted30[34] + weighted30[35] + weighted30[36] + weighted30[37] + weighted30[38] + weighted30[39] + weighted30[40] + weighted30[41] + weighted30[42] + weighted30[43] + weighted30[44] + weighted30[45] + weighted30[46] + weighted30[47] + weighted30[48] + weighted30[49] + weighted30[50] + weighted30[51] + weighted30[52] + weighted30[53] + weighted30[54] + weighted30[55] + weighted30[56] + weighted30[57] + weighted30[58] + weighted30[59] + weighted30[60] + weighted30[61] + weighted30[62] + weighted30[63] + weighted30[64] + weighted30[65] + weighted30[66] + weighted30[67] + weighted30[68] + weighted30[69] + weighted30[70] + weighted30[71] + weighted30[72] + weighted30[73] + weighted30[74];
	 t31 = weighted31[0] + weighted31[1] + weighted31[2] + weighted31[3] + weighted31[4] + weighted31[5] + weighted31[6] + weighted31[7] + weighted31[8] + weighted31[9] + weighted31[10] + weighted31[11] + weighted31[12] + weighted31[13] + weighted31[14] + weighted31[15] + weighted31[16] + weighted31[17] + weighted31[18] + weighted31[19] + weighted31[20] + weighted31[21] + weighted31[22] + weighted31[23] + weighted31[24] + weighted31[25] + weighted31[26] + weighted31[27] + weighted31[28] + weighted31[29] + weighted31[30] + weighted31[31] + weighted31[32] + weighted31[33] + weighted31[34] + weighted31[35] + weighted31[36] + weighted31[37] + weighted31[38] + weighted31[39] + weighted31[40] + weighted31[41] + weighted31[42] + weighted31[43] + weighted31[44] + weighted31[45] + weighted31[46] + weighted31[47] + weighted31[48] + weighted31[49] + weighted31[50] + weighted31[51] + weighted31[52] + weighted31[53] + weighted31[54] + weighted31[55] + weighted31[56] + weighted31[57] + weighted31[58] + weighted31[59] + weighted31[60] + weighted31[61] + weighted31[62] + weighted31[63] + weighted31[64] + weighted31[65] + weighted31[66] + weighted31[67] + weighted31[68] + weighted31[69] + weighted31[70] + weighted31[71] + weighted31[72] + weighted31[73] + weighted31[74];
	 t32 = weighted32[0] + weighted32[1] + weighted32[2] + weighted32[3] + weighted32[4] + weighted32[5] + weighted32[6] + weighted32[7] + weighted32[8] + weighted32[9] + weighted32[10] + weighted32[11] + weighted32[12] + weighted32[13] + weighted32[14] + weighted32[15] + weighted32[16] + weighted32[17] + weighted32[18] + weighted32[19] + weighted32[20] + weighted32[21] + weighted32[22] + weighted32[23] + weighted32[24] + weighted32[25] + weighted32[26] + weighted32[27] + weighted32[28] + weighted32[29] + weighted32[30] + weighted32[31] + weighted32[32] + weighted32[33] + weighted32[34] + weighted32[35] + weighted32[36] + weighted32[37] + weighted32[38] + weighted32[39] + weighted32[40] + weighted32[41] + weighted32[42] + weighted32[43] + weighted32[44] + weighted32[45] + weighted32[46] + weighted32[47] + weighted32[48] + weighted32[49] + weighted32[50] + weighted32[51] + weighted32[52] + weighted32[53] + weighted32[54] + weighted32[55] + weighted32[56] + weighted32[57] + weighted32[58] + weighted32[59] + weighted32[60] + weighted32[61] + weighted32[62] + weighted32[63] + weighted32[64] + weighted32[65] + weighted32[66] + weighted32[67] + weighted32[68] + weighted32[69] + weighted32[70] + weighted32[71] + weighted32[72] + weighted32[73] + weighted32[74];
	 t33 = weighted33[0] + weighted33[1] + weighted33[2] + weighted33[3] + weighted33[4] + weighted33[5] + weighted33[6] + weighted33[7] + weighted33[8] + weighted33[9] + weighted33[10] + weighted33[11] + weighted33[12] + weighted33[13] + weighted33[14] + weighted33[15] + weighted33[16] + weighted33[17] + weighted33[18] + weighted33[19] + weighted33[20] + weighted33[21] + weighted33[22] + weighted33[23] + weighted33[24] + weighted33[25] + weighted33[26] + weighted33[27] + weighted33[28] + weighted33[29] + weighted33[30] + weighted33[31] + weighted33[32] + weighted33[33] + weighted33[34] + weighted33[35] + weighted33[36] + weighted33[37] + weighted33[38] + weighted33[39] + weighted33[40] + weighted33[41] + weighted33[42] + weighted33[43] + weighted33[44] + weighted33[45] + weighted33[46] + weighted33[47] + weighted33[48] + weighted33[49] + weighted33[50] + weighted33[51] + weighted33[52] + weighted33[53] + weighted33[54] + weighted33[55] + weighted33[56] + weighted33[57] + weighted33[58] + weighted33[59] + weighted33[60] + weighted33[61] + weighted33[62] + weighted33[63] + weighted33[64] + weighted33[65] + weighted33[66] + weighted33[67] + weighted33[68] + weighted33[69] + weighted33[70] + weighted33[71] + weighted33[72] + weighted33[73] + weighted33[74];
	 t34 = weighted34[0] + weighted34[1] + weighted34[2] + weighted34[3] + weighted34[4] + weighted34[5] + weighted34[6] + weighted34[7] + weighted34[8] + weighted34[9] + weighted34[10] + weighted34[11] + weighted34[12] + weighted34[13] + weighted34[14] + weighted34[15] + weighted34[16] + weighted34[17] + weighted34[18] + weighted34[19] + weighted34[20] + weighted34[21] + weighted34[22] + weighted34[23] + weighted34[24] + weighted34[25] + weighted34[26] + weighted34[27] + weighted34[28] + weighted34[29] + weighted34[30] + weighted34[31] + weighted34[32] + weighted34[33] + weighted34[34] + weighted34[35] + weighted34[36] + weighted34[37] + weighted34[38] + weighted34[39] + weighted34[40] + weighted34[41] + weighted34[42] + weighted34[43] + weighted34[44] + weighted34[45] + weighted34[46] + weighted34[47] + weighted34[48] + weighted34[49] + weighted34[50] + weighted34[51] + weighted34[52] + weighted34[53] + weighted34[54] + weighted34[55] + weighted34[56] + weighted34[57] + weighted34[58] + weighted34[59] + weighted34[60] + weighted34[61] + weighted34[62] + weighted34[63] + weighted34[64] + weighted34[65] + weighted34[66] + weighted34[67] + weighted34[68] + weighted34[69] + weighted34[70] + weighted34[71] + weighted34[72] + weighted34[73] + weighted34[74];
	 t35 = weighted35[0] + weighted35[1] + weighted35[2] + weighted35[3] + weighted35[4] + weighted35[5] + weighted35[6] + weighted35[7] + weighted35[8] + weighted35[9] + weighted35[10] + weighted35[11] + weighted35[12] + weighted35[13] + weighted35[14] + weighted35[15] + weighted35[16] + weighted35[17] + weighted35[18] + weighted35[19] + weighted35[20] + weighted35[21] + weighted35[22] + weighted35[23] + weighted35[24] + weighted35[25] + weighted35[26] + weighted35[27] + weighted35[28] + weighted35[29] + weighted35[30] + weighted35[31] + weighted35[32] + weighted35[33] + weighted35[34] + weighted35[35] + weighted35[36] + weighted35[37] + weighted35[38] + weighted35[39] + weighted35[40] + weighted35[41] + weighted35[42] + weighted35[43] + weighted35[44] + weighted35[45] + weighted35[46] + weighted35[47] + weighted35[48] + weighted35[49] + weighted35[50] + weighted35[51] + weighted35[52] + weighted35[53] + weighted35[54] + weighted35[55] + weighted35[56] + weighted35[57] + weighted35[58] + weighted35[59] + weighted35[60] + weighted35[61] + weighted35[62] + weighted35[63] + weighted35[64] + weighted35[65] + weighted35[66] + weighted35[67] + weighted35[68] + weighted35[69] + weighted35[70] + weighted35[71] + weighted35[72] + weighted35[73] + weighted35[74];
	 t36 = weighted36[0] + weighted36[1] + weighted36[2] + weighted36[3] + weighted36[4] + weighted36[5] + weighted36[6] + weighted36[7] + weighted36[8] + weighted36[9] + weighted36[10] + weighted36[11] + weighted36[12] + weighted36[13] + weighted36[14] + weighted36[15] + weighted36[16] + weighted36[17] + weighted36[18] + weighted36[19] + weighted36[20] + weighted36[21] + weighted36[22] + weighted36[23] + weighted36[24] + weighted36[25] + weighted36[26] + weighted36[27] + weighted36[28] + weighted36[29] + weighted36[30] + weighted36[31] + weighted36[32] + weighted36[33] + weighted36[34] + weighted36[35] + weighted36[36] + weighted36[37] + weighted36[38] + weighted36[39] + weighted36[40] + weighted36[41] + weighted36[42] + weighted36[43] + weighted36[44] + weighted36[45] + weighted36[46] + weighted36[47] + weighted36[48] + weighted36[49] + weighted36[50] + weighted36[51] + weighted36[52] + weighted36[53] + weighted36[54] + weighted36[55] + weighted36[56] + weighted36[57] + weighted36[58] + weighted36[59] + weighted36[60] + weighted36[61] + weighted36[62] + weighted36[63] + weighted36[64] + weighted36[65] + weighted36[66] + weighted36[67] + weighted36[68] + weighted36[69] + weighted36[70] + weighted36[71] + weighted36[72] + weighted36[73] + weighted36[74];
	 t37 = weighted37[0] + weighted37[1] + weighted37[2] + weighted37[3] + weighted37[4] + weighted37[5] + weighted37[6] + weighted37[7] + weighted37[8] + weighted37[9] + weighted37[10] + weighted37[11] + weighted37[12] + weighted37[13] + weighted37[14] + weighted37[15] + weighted37[16] + weighted37[17] + weighted37[18] + weighted37[19] + weighted37[20] + weighted37[21] + weighted37[22] + weighted37[23] + weighted37[24] + weighted37[25] + weighted37[26] + weighted37[27] + weighted37[28] + weighted37[29] + weighted37[30] + weighted37[31] + weighted37[32] + weighted37[33] + weighted37[34] + weighted37[35] + weighted37[36] + weighted37[37] + weighted37[38] + weighted37[39] + weighted37[40] + weighted37[41] + weighted37[42] + weighted37[43] + weighted37[44] + weighted37[45] + weighted37[46] + weighted37[47] + weighted37[48] + weighted37[49] + weighted37[50] + weighted37[51] + weighted37[52] + weighted37[53] + weighted37[54] + weighted37[55] + weighted37[56] + weighted37[57] + weighted37[58] + weighted37[59] + weighted37[60] + weighted37[61] + weighted37[62] + weighted37[63] + weighted37[64] + weighted37[65] + weighted37[66] + weighted37[67] + weighted37[68] + weighted37[69] + weighted37[70] + weighted37[71] + weighted37[72] + weighted37[73] + weighted37[74];
	 t38 = weighted38[0] + weighted38[1] + weighted38[2] + weighted38[3] + weighted38[4] + weighted38[5] + weighted38[6] + weighted38[7] + weighted38[8] + weighted38[9] + weighted38[10] + weighted38[11] + weighted38[12] + weighted38[13] + weighted38[14] + weighted38[15] + weighted38[16] + weighted38[17] + weighted38[18] + weighted38[19] + weighted38[20] + weighted38[21] + weighted38[22] + weighted38[23] + weighted38[24] + weighted38[25] + weighted38[26] + weighted38[27] + weighted38[28] + weighted38[29] + weighted38[30] + weighted38[31] + weighted38[32] + weighted38[33] + weighted38[34] + weighted38[35] + weighted38[36] + weighted38[37] + weighted38[38] + weighted38[39] + weighted38[40] + weighted38[41] + weighted38[42] + weighted38[43] + weighted38[44] + weighted38[45] + weighted38[46] + weighted38[47] + weighted38[48] + weighted38[49] + weighted38[50] + weighted38[51] + weighted38[52] + weighted38[53] + weighted38[54] + weighted38[55] + weighted38[56] + weighted38[57] + weighted38[58] + weighted38[59] + weighted38[60] + weighted38[61] + weighted38[62] + weighted38[63] + weighted38[64] + weighted38[65] + weighted38[66] + weighted38[67] + weighted38[68] + weighted38[69] + weighted38[70] + weighted38[71] + weighted38[72] + weighted38[73] + weighted38[74];
	 t39 = weighted39[0] + weighted39[1] + weighted39[2] + weighted39[3] + weighted39[4] + weighted39[5] + weighted39[6] + weighted39[7] + weighted39[8] + weighted39[9] + weighted39[10] + weighted39[11] + weighted39[12] + weighted39[13] + weighted39[14] + weighted39[15] + weighted39[16] + weighted39[17] + weighted39[18] + weighted39[19] + weighted39[20] + weighted39[21] + weighted39[22] + weighted39[23] + weighted39[24] + weighted39[25] + weighted39[26] + weighted39[27] + weighted39[28] + weighted39[29] + weighted39[30] + weighted39[31] + weighted39[32] + weighted39[33] + weighted39[34] + weighted39[35] + weighted39[36] + weighted39[37] + weighted39[38] + weighted39[39] + weighted39[40] + weighted39[41] + weighted39[42] + weighted39[43] + weighted39[44] + weighted39[45] + weighted39[46] + weighted39[47] + weighted39[48] + weighted39[49] + weighted39[50] + weighted39[51] + weighted39[52] + weighted39[53] + weighted39[54] + weighted39[55] + weighted39[56] + weighted39[57] + weighted39[58] + weighted39[59] + weighted39[60] + weighted39[61] + weighted39[62] + weighted39[63] + weighted39[64] + weighted39[65] + weighted39[66] + weighted39[67] + weighted39[68] + weighted39[69] + weighted39[70] + weighted39[71] + weighted39[72] + weighted39[73] + weighted39[74];
	 t40 = weighted40[0] + weighted40[1] + weighted40[2] + weighted40[3] + weighted40[4] + weighted40[5] + weighted40[6] + weighted40[7] + weighted40[8] + weighted40[9] + weighted40[10] + weighted40[11] + weighted40[12] + weighted40[13] + weighted40[14] + weighted40[15] + weighted40[16] + weighted40[17] + weighted40[18] + weighted40[19] + weighted40[20] + weighted40[21] + weighted40[22] + weighted40[23] + weighted40[24] + weighted40[25] + weighted40[26] + weighted40[27] + weighted40[28] + weighted40[29] + weighted40[30] + weighted40[31] + weighted40[32] + weighted40[33] + weighted40[34] + weighted40[35] + weighted40[36] + weighted40[37] + weighted40[38] + weighted40[39] + weighted40[40] + weighted40[41] + weighted40[42] + weighted40[43] + weighted40[44] + weighted40[45] + weighted40[46] + weighted40[47] + weighted40[48] + weighted40[49] + weighted40[50] + weighted40[51] + weighted40[52] + weighted40[53] + weighted40[54] + weighted40[55] + weighted40[56] + weighted40[57] + weighted40[58] + weighted40[59] + weighted40[60] + weighted40[61] + weighted40[62] + weighted40[63] + weighted40[64] + weighted40[65] + weighted40[66] + weighted40[67] + weighted40[68] + weighted40[69] + weighted40[70] + weighted40[71] + weighted40[72] + weighted40[73] + weighted40[74];
	 t41 = weighted41[0] + weighted41[1] + weighted41[2] + weighted41[3] + weighted41[4] + weighted41[5] + weighted41[6] + weighted41[7] + weighted41[8] + weighted41[9] + weighted41[10] + weighted41[11] + weighted41[12] + weighted41[13] + weighted41[14] + weighted41[15] + weighted41[16] + weighted41[17] + weighted41[18] + weighted41[19] + weighted41[20] + weighted41[21] + weighted41[22] + weighted41[23] + weighted41[24] + weighted41[25] + weighted41[26] + weighted41[27] + weighted41[28] + weighted41[29] + weighted41[30] + weighted41[31] + weighted41[32] + weighted41[33] + weighted41[34] + weighted41[35] + weighted41[36] + weighted41[37] + weighted41[38] + weighted41[39] + weighted41[40] + weighted41[41] + weighted41[42] + weighted41[43] + weighted41[44] + weighted41[45] + weighted41[46] + weighted41[47] + weighted41[48] + weighted41[49] + weighted41[50] + weighted41[51] + weighted41[52] + weighted41[53] + weighted41[54] + weighted41[55] + weighted41[56] + weighted41[57] + weighted41[58] + weighted41[59] + weighted41[60] + weighted41[61] + weighted41[62] + weighted41[63] + weighted41[64] + weighted41[65] + weighted41[66] + weighted41[67] + weighted41[68] + weighted41[69] + weighted41[70] + weighted41[71] + weighted41[72] + weighted41[73] + weighted41[74];
	 t42 = weighted42[0] + weighted42[1] + weighted42[2] + weighted42[3] + weighted42[4] + weighted42[5] + weighted42[6] + weighted42[7] + weighted42[8] + weighted42[9] + weighted42[10] + weighted42[11] + weighted42[12] + weighted42[13] + weighted42[14] + weighted42[15] + weighted42[16] + weighted42[17] + weighted42[18] + weighted42[19] + weighted42[20] + weighted42[21] + weighted42[22] + weighted42[23] + weighted42[24] + weighted42[25] + weighted42[26] + weighted42[27] + weighted42[28] + weighted42[29] + weighted42[30] + weighted42[31] + weighted42[32] + weighted42[33] + weighted42[34] + weighted42[35] + weighted42[36] + weighted42[37] + weighted42[38] + weighted42[39] + weighted42[40] + weighted42[41] + weighted42[42] + weighted42[43] + weighted42[44] + weighted42[45] + weighted42[46] + weighted42[47] + weighted42[48] + weighted42[49] + weighted42[50] + weighted42[51] + weighted42[52] + weighted42[53] + weighted42[54] + weighted42[55] + weighted42[56] + weighted42[57] + weighted42[58] + weighted42[59] + weighted42[60] + weighted42[61] + weighted42[62] + weighted42[63] + weighted42[64] + weighted42[65] + weighted42[66] + weighted42[67] + weighted42[68] + weighted42[69] + weighted42[70] + weighted42[71] + weighted42[72] + weighted42[73] + weighted42[74];
	 t43 = weighted43[0] + weighted43[1] + weighted43[2] + weighted43[3] + weighted43[4] + weighted43[5] + weighted43[6] + weighted43[7] + weighted43[8] + weighted43[9] + weighted43[10] + weighted43[11] + weighted43[12] + weighted43[13] + weighted43[14] + weighted43[15] + weighted43[16] + weighted43[17] + weighted43[18] + weighted43[19] + weighted43[20] + weighted43[21] + weighted43[22] + weighted43[23] + weighted43[24] + weighted43[25] + weighted43[26] + weighted43[27] + weighted43[28] + weighted43[29] + weighted43[30] + weighted43[31] + weighted43[32] + weighted43[33] + weighted43[34] + weighted43[35] + weighted43[36] + weighted43[37] + weighted43[38] + weighted43[39] + weighted43[40] + weighted43[41] + weighted43[42] + weighted43[43] + weighted43[44] + weighted43[45] + weighted43[46] + weighted43[47] + weighted43[48] + weighted43[49] + weighted43[50] + weighted43[51] + weighted43[52] + weighted43[53] + weighted43[54] + weighted43[55] + weighted43[56] + weighted43[57] + weighted43[58] + weighted43[59] + weighted43[60] + weighted43[61] + weighted43[62] + weighted43[63] + weighted43[64] + weighted43[65] + weighted43[66] + weighted43[67] + weighted43[68] + weighted43[69] + weighted43[70] + weighted43[71] + weighted43[72] + weighted43[73] + weighted43[74];
	 t44 = weighted44[0] + weighted44[1] + weighted44[2] + weighted44[3] + weighted44[4] + weighted44[5] + weighted44[6] + weighted44[7] + weighted44[8] + weighted44[9] + weighted44[10] + weighted44[11] + weighted44[12] + weighted44[13] + weighted44[14] + weighted44[15] + weighted44[16] + weighted44[17] + weighted44[18] + weighted44[19] + weighted44[20] + weighted44[21] + weighted44[22] + weighted44[23] + weighted44[24] + weighted44[25] + weighted44[26] + weighted44[27] + weighted44[28] + weighted44[29] + weighted44[30] + weighted44[31] + weighted44[32] + weighted44[33] + weighted44[34] + weighted44[35] + weighted44[36] + weighted44[37] + weighted44[38] + weighted44[39] + weighted44[40] + weighted44[41] + weighted44[42] + weighted44[43] + weighted44[44] + weighted44[45] + weighted44[46] + weighted44[47] + weighted44[48] + weighted44[49] + weighted44[50] + weighted44[51] + weighted44[52] + weighted44[53] + weighted44[54] + weighted44[55] + weighted44[56] + weighted44[57] + weighted44[58] + weighted44[59] + weighted44[60] + weighted44[61] + weighted44[62] + weighted44[63] + weighted44[64] + weighted44[65] + weighted44[66] + weighted44[67] + weighted44[68] + weighted44[69] + weighted44[70] + weighted44[71] + weighted44[72] + weighted44[73] + weighted44[74];
	 t45 = weighted45[0] + weighted45[1] + weighted45[2] + weighted45[3] + weighted45[4] + weighted45[5] + weighted45[6] + weighted45[7] + weighted45[8] + weighted45[9] + weighted45[10] + weighted45[11] + weighted45[12] + weighted45[13] + weighted45[14] + weighted45[15] + weighted45[16] + weighted45[17] + weighted45[18] + weighted45[19] + weighted45[20] + weighted45[21] + weighted45[22] + weighted45[23] + weighted45[24] + weighted45[25] + weighted45[26] + weighted45[27] + weighted45[28] + weighted45[29] + weighted45[30] + weighted45[31] + weighted45[32] + weighted45[33] + weighted45[34] + weighted45[35] + weighted45[36] + weighted45[37] + weighted45[38] + weighted45[39] + weighted45[40] + weighted45[41] + weighted45[42] + weighted45[43] + weighted45[44] + weighted45[45] + weighted45[46] + weighted45[47] + weighted45[48] + weighted45[49] + weighted45[50] + weighted45[51] + weighted45[52] + weighted45[53] + weighted45[54] + weighted45[55] + weighted45[56] + weighted45[57] + weighted45[58] + weighted45[59] + weighted45[60] + weighted45[61] + weighted45[62] + weighted45[63] + weighted45[64] + weighted45[65] + weighted45[66] + weighted45[67] + weighted45[68] + weighted45[69] + weighted45[70] + weighted45[71] + weighted45[72] + weighted45[73] + weighted45[74];
	 t46 = weighted46[0] + weighted46[1] + weighted46[2] + weighted46[3] + weighted46[4] + weighted46[5] + weighted46[6] + weighted46[7] + weighted46[8] + weighted46[9] + weighted46[10] + weighted46[11] + weighted46[12] + weighted46[13] + weighted46[14] + weighted46[15] + weighted46[16] + weighted46[17] + weighted46[18] + weighted46[19] + weighted46[20] + weighted46[21] + weighted46[22] + weighted46[23] + weighted46[24] + weighted46[25] + weighted46[26] + weighted46[27] + weighted46[28] + weighted46[29] + weighted46[30] + weighted46[31] + weighted46[32] + weighted46[33] + weighted46[34] + weighted46[35] + weighted46[36] + weighted46[37] + weighted46[38] + weighted46[39] + weighted46[40] + weighted46[41] + weighted46[42] + weighted46[43] + weighted46[44] + weighted46[45] + weighted46[46] + weighted46[47] + weighted46[48] + weighted46[49] + weighted46[50] + weighted46[51] + weighted46[52] + weighted46[53] + weighted46[54] + weighted46[55] + weighted46[56] + weighted46[57] + weighted46[58] + weighted46[59] + weighted46[60] + weighted46[61] + weighted46[62] + weighted46[63] + weighted46[64] + weighted46[65] + weighted46[66] + weighted46[67] + weighted46[68] + weighted46[69] + weighted46[70] + weighted46[71] + weighted46[72] + weighted46[73] + weighted46[74];
	 t47 = weighted47[0] + weighted47[1] + weighted47[2] + weighted47[3] + weighted47[4] + weighted47[5] + weighted47[6] + weighted47[7] + weighted47[8] + weighted47[9] + weighted47[10] + weighted47[11] + weighted47[12] + weighted47[13] + weighted47[14] + weighted47[15] + weighted47[16] + weighted47[17] + weighted47[18] + weighted47[19] + weighted47[20] + weighted47[21] + weighted47[22] + weighted47[23] + weighted47[24] + weighted47[25] + weighted47[26] + weighted47[27] + weighted47[28] + weighted47[29] + weighted47[30] + weighted47[31] + weighted47[32] + weighted47[33] + weighted47[34] + weighted47[35] + weighted47[36] + weighted47[37] + weighted47[38] + weighted47[39] + weighted47[40] + weighted47[41] + weighted47[42] + weighted47[43] + weighted47[44] + weighted47[45] + weighted47[46] + weighted47[47] + weighted47[48] + weighted47[49] + weighted47[50] + weighted47[51] + weighted47[52] + weighted47[53] + weighted47[54] + weighted47[55] + weighted47[56] + weighted47[57] + weighted47[58] + weighted47[59] + weighted47[60] + weighted47[61] + weighted47[62] + weighted47[63] + weighted47[64] + weighted47[65] + weighted47[66] + weighted47[67] + weighted47[68] + weighted47[69] + weighted47[70] + weighted47[71] + weighted47[72] + weighted47[73] + weighted47[74];
	 t48 = weighted48[0] + weighted48[1] + weighted48[2] + weighted48[3] + weighted48[4] + weighted48[5] + weighted48[6] + weighted48[7] + weighted48[8] + weighted48[9] + weighted48[10] + weighted48[11] + weighted48[12] + weighted48[13] + weighted48[14] + weighted48[15] + weighted48[16] + weighted48[17] + weighted48[18] + weighted48[19] + weighted48[20] + weighted48[21] + weighted48[22] + weighted48[23] + weighted48[24] + weighted48[25] + weighted48[26] + weighted48[27] + weighted48[28] + weighted48[29] + weighted48[30] + weighted48[31] + weighted48[32] + weighted48[33] + weighted48[34] + weighted48[35] + weighted48[36] + weighted48[37] + weighted48[38] + weighted48[39] + weighted48[40] + weighted48[41] + weighted48[42] + weighted48[43] + weighted48[44] + weighted48[45] + weighted48[46] + weighted48[47] + weighted48[48] + weighted48[49] + weighted48[50] + weighted48[51] + weighted48[52] + weighted48[53] + weighted48[54] + weighted48[55] + weighted48[56] + weighted48[57] + weighted48[58] + weighted48[59] + weighted48[60] + weighted48[61] + weighted48[62] + weighted48[63] + weighted48[64] + weighted48[65] + weighted48[66] + weighted48[67] + weighted48[68] + weighted48[69] + weighted48[70] + weighted48[71] + weighted48[72] + weighted48[73] + weighted48[74];
	 t49 = weighted49[0] + weighted49[1] + weighted49[2] + weighted49[3] + weighted49[4] + weighted49[5] + weighted49[6] + weighted49[7] + weighted49[8] + weighted49[9] + weighted49[10] + weighted49[11] + weighted49[12] + weighted49[13] + weighted49[14] + weighted49[15] + weighted49[16] + weighted49[17] + weighted49[18] + weighted49[19] + weighted49[20] + weighted49[21] + weighted49[22] + weighted49[23] + weighted49[24] + weighted49[25] + weighted49[26] + weighted49[27] + weighted49[28] + weighted49[29] + weighted49[30] + weighted49[31] + weighted49[32] + weighted49[33] + weighted49[34] + weighted49[35] + weighted49[36] + weighted49[37] + weighted49[38] + weighted49[39] + weighted49[40] + weighted49[41] + weighted49[42] + weighted49[43] + weighted49[44] + weighted49[45] + weighted49[46] + weighted49[47] + weighted49[48] + weighted49[49] + weighted49[50] + weighted49[51] + weighted49[52] + weighted49[53] + weighted49[54] + weighted49[55] + weighted49[56] + weighted49[57] + weighted49[58] + weighted49[59] + weighted49[60] + weighted49[61] + weighted49[62] + weighted49[63] + weighted49[64] + weighted49[65] + weighted49[66] + weighted49[67] + weighted49[68] + weighted49[69] + weighted49[70] + weighted49[71] + weighted49[72] + weighted49[73] + weighted49[74];
	 end

  always @* begin
    out[0] = t0 > th0;
    out[1] = t1 > th1;
    out[2] = t2 > th2;
    out[3] = t3 > th3;
    out[4] = t4 > th4;
    out[5] = t5 > th5;
    out[6] = t6 > th6;
    out[7] = t7 > th7;
    out[8] = t8 > th8;
    out[9] = t9 > th9;
    out[10] = t10 > th10;
    out[11] = t11 > th11;
    out[12] = t12 > th12;
    out[13] = t13 > th13;
    out[14] = t14 > th14;
    out[15] = t15 > th15;
    out[16] = t16 > th16;
    out[17] = t17 > th17;
    out[18] = t18 > th18;
    out[19] = t19 > th19;
    out[20] = t20 > th20;
    out[21] = t21 > th21;
    out[22] = t22 > th22;
    out[23] = t23 > th23;
    out[24] = t24 > th24;
    out[25] = t25 > th25;
    out[26] = t26 > th26;
    out[27] = t27 > th27;
    out[28] = t28 > th28;
    out[29] = t29 > th29;
    out[30] = t30 > th30;
    out[31] = t31 > th31;
    out[32] = t32 > th32;
    out[33] = t33 > th33;
    out[34] = t34 > th34;
    out[35] = t35 > th35;
    out[36] = t36 > th36;
    out[37] = t37 > th37;
    out[38] = t38 > th38;
    out[39] = t39 > th39;
    out[40] = t40 > th40;
    out[41] = t41 > th41;
    out[42] = t42 > th42;
    out[43] = t43 > th43;
    out[44] = t44 > th44;
    out[45] = t45 > th45;
    out[46] = t46 > th46;
    out[47] = t47 > th47;
    out[48] = t48 > th48;
    out[49] = t49 > th49;
  end 

endmodule 