`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:37:21
// Design Name: 
// Module Name: subword
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module subword(
    input  [31:0] word_in,
    output [31:0] word_out
);

wire [7:0] b0,b1,b2,b3;

sbox s0(
    .addr(word_in[31:24]),
    .data(b0)
);

sbox s1(
    .addr(word_in[23:16]),
    .data(b1)
);

sbox s2(
    .addr(word_in[15:8]),
    .data(b2)
);

sbox s3(
    .addr(word_in[7:0]),
    .data(b3)
);

assign word_out = {b0,b1,b2,b3};

endmodule