`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 23:49:00
// Design Name: 
// Module Name: mixcolumn
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


module mixcolumns(
    input  [127:0] state_in,
    output [127:0] state_out
);

wire [31:0] c0_in,c1_in,c2_in,c3_in;
wire [31:0] c0_out,c1_out,c2_out,c3_out;

assign c0_in = state_in[127:96];
assign c1_in = state_in[95:64];
assign c2_in = state_in[63:32];
assign c3_in = state_in[31:0];

mixcolumn mc0(
    .col_in(c0_in),
    .col_out(c0_out)
);

mixcolumn mc1(
    .col_in(c1_in),
    .col_out(c1_out)
);

mixcolumn mc2(
    .col_in(c2_in),
    .col_out(c2_out)
);

mixcolumn mc3(
    .col_in(c3_in),
    .col_out(c3_out)
);

assign state_out = {
    c0_out,
    c1_out,
    c2_out,
    c3_out
};

endmodule