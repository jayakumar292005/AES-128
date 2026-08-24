`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:45:26
// Design Name: 
// Module Name: keyexp_round1
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

module keyexp_round1(
    input  [127:0] key_in,
    input  [3:0]   round,
    output [127:0] key_out
);

wire [31:0] w0, w1, w2, w3;
wire [31:0] rot_out;
wire [31:0] sub_out;
wire [31:0] rcon_out;

wire [31:0] w4, w5, w6, w7;

// Split input key into 4 words
assign w0 = key_in[127:96];
assign w1 = key_in[95:64];
assign w2 = key_in[63:32];
assign w3 = key_in[31:0];

// RotWord
rotword rw (
    .word_in(w3),
    .word_out(rot_out)
);

// SubWord
subword sw (
    .word_in(rot_out),
    .word_out(sub_out)
);

// Rcon
rcon rc (
    .round(round),
    .rcon_out(rcon_out)
);


assign w4 = w0 ^ sub_out ^ rcon_out;
assign w5 = w1 ^ w4;
assign w6 = w2 ^ w5;
assign w7 = w3 ^ w6;
assign key_out = {w4, w5, w6, w7};

endmodule