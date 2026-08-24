`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:32:01
// Design Name: 
// Module Name: rotword
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


module rotword(
    input  [31:0] word_in,
    output [31:0] word_out
);

assign word_out = {word_in[23:0], word_in[31:24]};

endmodule