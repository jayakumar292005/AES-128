`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 23:19:40
// Design Name: 
// Module Name: gf_mult3
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


module gf_mult3(
    input [7:0] data_in,
    output [7:0] data_out
);

wire [7:0] mult2_out;

gf_mult2 g2(
    .data_in(data_in),
    .data_out(mult2_out)
);

assign data_out = mult2_out ^ data_in;

endmodule