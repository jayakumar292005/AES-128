`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 22:17:21
// Design Name: 
// Module Name: aes_top
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

module aes_top(
    input  [127:0] plaintext,
    input  [127:0] key,
    output [127:0] ciphertext
);

wire [127:0] round_key0;
wire [127:0] round_key1;
wire [127:0] round_key2;
wire [127:0] round_key3;
wire [127:0] round_key4;
wire [127:0] round_key5;
wire [127:0] round_key6;
wire [127:0] round_key7;
wire [127:0] round_key8;
wire [127:0] round_key9;
wire [127:0] round_key10;

wire [127:0] state0;
wire [127:0] state1;
wire [127:0] state2;
wire [127:0] state3;
wire [127:0] state4;
wire [127:0] state5;
wire [127:0] state6;
wire [127:0] state7;
wire [127:0] state8;
wire [127:0] state9;
wire [127:0] state10;

keyexpansion ke (
    .key_in(key),

    .round_key0(round_key0),
    .round_key1(round_key1),
    .round_key2(round_key2),
    .round_key3(round_key3),
    .round_key4(round_key4),
    .round_key5(round_key5),
    .round_key6(round_key6),
    .round_key7(round_key7),
    .round_key8(round_key8),
    .round_key9(round_key9),
    .round_key10(round_key10)
);

addroundkey ark0 (
    .state_in(plaintext),
    .round_key(round_key0),
    .state_out(state0)
);

aes_round r1 (
    .state_in(state0),
    .round_key(round_key1),
    .state_out(state1)
);

aes_round r2 (
    .state_in(state1),
    .round_key(round_key2),
    .state_out(state2)
);

aes_round r3 (
    .state_in(state2),
    .round_key(round_key3),
    .state_out(state3)
);

aes_round r4 (
    .state_in(state3),
    .round_key(round_key4),
    .state_out(state4)
);

aes_round r5 (
    .state_in(state4),
    .round_key(round_key5),
    .state_out(state5)
);

aes_round r6 (
    .state_in(state5),
    .round_key(round_key6),
    .state_out(state6)
);

aes_round r7 (
    .state_in(state6),
    .round_key(round_key7),
    .state_out(state7)
);

aes_round r8 (
    .state_in(state7),
    .round_key(round_key8),
    .state_out(state8)
);

aes_round r9 (
    .state_in(state8),
    .round_key(round_key9),
    .state_out(state9)
);

aes_final_round r10 (
    .state_in(state9),
    .round_key(round_key10),
    .state_out(state10)
);

assign ciphertext = state10;

endmodule