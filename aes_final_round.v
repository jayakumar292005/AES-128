`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 22:04:58
// Design Name: 
// Module Name: aes_final_round
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

module aes_final_round(
    input  [127:0] state_in,
    input  [127:0] round_key,
    output [127:0] state_out
);

wire [127:0] sb_out;
wire [127:0] sr_out;

subbytes sb (
    .state_in(state_in),
    .state_out(sb_out)
);

shiftrows sr (
    .state_in(sb_out),
    .state_out(sr_out)
);

addroundkey ark (
    .state_in(sr_out),
    .round_key(round_key),
    .state_out(state_out)
);

endmodule