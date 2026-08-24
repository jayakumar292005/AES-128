`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2026 15:19:29
// Design Name: 
// Module Name: tb_keyexpansion
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

module tb_keyexpansion;

reg  [127:0] key_in;

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

keyexpansion uut(
    .key_in(key_in),

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

initial begin

    key_in = 128'h000102030405060708090A0B0C0D0E0F;

    #10;

    $display("Round Key 0  = %h", round_key0);
    $display("Round Key 1  = %h", round_key1);
    $display("Round Key 2  = %h", round_key2);
    $display("Round Key 3  = %h", round_key3);
    $display("Round Key 4  = %h", round_key4);
    $display("Round Key 5  = %h", round_key5);
    $display("Round Key 6  = %h", round_key6);
    $display("Round Key 7  = %h", round_key7);
    $display("Round Key 8  = %h", round_key8);
    $display("Round Key 9  = %h", round_key9);
    $display("Round Key 10 = %h", round_key10);

    #10;
    $finish;

end

endmodule