`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 22:08:57
// Design Name: 
// Module Name: aes_round
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


module aes_round(
    input  [127:0] state_in,
    input  [127:0] round_key,
    output [127:0] state_out
);

wire [127:0] subbytes_out;
wire [127:0] shiftrows_out;
wire [127:0] mixcolumns_out;

subbytes u0 (
    .state_in(state_in),
    .state_out(subbytes_out)
);

shiftrows u1 (
    .state_in(subbytes_out),
    .state_out(shiftrows_out)
);

mixcolumns u2 (
    .state_in(shiftrows_out),
    .state_out(mixcolumns_out)
);

addroundkey u3 (
    .state_in(mixcolumns_out),
    .round_key(round_key),
    .state_out(state_out)
);

endmodule