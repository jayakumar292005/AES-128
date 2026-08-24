`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 23:15:29
// Design Name: 
// Module Name: gf_mult2
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


module gf_mult2(
    input [7:0] data_in,
    output [7:0] data_out
);

assign data_out =
    (data_in[7] == 1'b0) ?
    (data_in << 1) :
    ((data_in << 1) ^ 8'h1B);

endmodule