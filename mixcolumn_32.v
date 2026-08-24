`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 23:18:02
// Design Name: 
// Module Name: mixcolumn_32
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


`timescale 1ns / 1ps

module mixcolumn(
    input  [31:0] col_in,
    output [31:0] col_out
);

wire [7:0] s0,s1,s2,s3;
wire [7:0] m2_s0,m2_s1,m2_s2,m2_s3;
wire [7:0] m3_s0,m3_s1,m3_s2,m3_s3;

wire [7:0] o0,o1,o2,o3;

assign s0 = col_in[31:24];
assign s1 = col_in[23:16];
assign s2 = col_in[15:8];
assign s3 = col_in[7:0];

gf_mult2 g20(.data_in(s0), .data_out(m2_s0));
gf_mult2 g21(.data_in(s1), .data_out(m2_s1));
gf_mult2 g22(.data_in(s2), .data_out(m2_s2));
gf_mult2 g23(.data_in(s3), .data_out(m2_s3));

gf_mult3 g30(.data_in(s0), .data_out(m3_s0));
gf_mult3 g31(.data_in(s1), .data_out(m3_s1));
gf_mult3 g32(.data_in(s2), .data_out(m3_s2));
gf_mult3 g33(.data_in(s3), .data_out(m3_s3));

assign o0 = m2_s0 ^ m3_s1 ^ s2 ^ s3;
assign o1 = s0 ^ m2_s1 ^ m3_s2 ^ s3;
assign o2 = s0 ^ s1 ^ m2_s2 ^ m3_s3;
assign o3 = m3_s0 ^ s1 ^ s2 ^ m2_s3;

assign col_out = {o0,o1,o2,o3};

endmodule