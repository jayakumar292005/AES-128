`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2026 15:18:06
// Design Name: 
// Module Name: keyexpansion
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

module keyexpansion(
    input  [127:0] key_in,

    output [127:0] round_key0,
    output [127:0] round_key1,
    output [127:0] round_key2,
    output [127:0] round_key3,
    output [127:0] round_key4,
    output [127:0] round_key5,
    output [127:0] round_key6,
    output [127:0] round_key7,
    output [127:0] round_key8,
    output [127:0] round_key9,
    output [127:0] round_key10
);

assign round_key0 = key_in;

keyexp_round1 r1(
    .key_in(round_key0),
    .round(4'd1),
    .key_out(round_key1)
);

keyexp_round1 r2(
    .key_in(round_key1),
    .round(4'd2),
    .key_out(round_key2)
);

keyexp_round1 r3(
    .key_in(round_key2),
    .round(4'd3),
    .key_out(round_key3)
);

keyexp_round1 r4(
    .key_in(round_key3),
    .round(4'd4),
    .key_out(round_key4)
);

keyexp_round1 r5(
    .key_in(round_key4),
    .round(4'd5),
    .key_out(round_key5)
);

keyexp_round1 r6(
    .key_in(round_key5),
    .round(4'd6),
    .key_out(round_key6)
);

keyexp_round1 r7(
    .key_in(round_key6),
    .round(4'd7),
    .key_out(round_key7)
);

keyexp_round1 r8(
    .key_in(round_key7),
    .round(4'd8),
    .key_out(round_key8)
);

keyexp_round1 r9(
    .key_in(round_key8),
    .round(4'd9),
    .key_out(round_key9)
);

keyexp_round1 r10(
    .key_in(round_key9),
    .round(4'd10),
    .key_out(round_key10)
);

endmodule
