`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 22:22:02
// Design Name: 
// Module Name: tb_aes_top
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

module tb_aes_top;

reg  [127:0] plaintext;
reg  [127:0] key;
wire [127:0] ciphertext;

aes_top uut (
    .plaintext(plaintext),
    .key(key),
    .ciphertext(ciphertext)
);

initial begin

    // AES-128 Standard Test Vector
    plaintext = 128'h00112233445566778899aabbccddeeff;
    key       = 128'h000102030405060708090a0b0c0d0e0f;

    #20;

    $display("Plaintext  = %h", plaintext);
    $display("Key        = %h", key);
    $display("Ciphertext = %h", ciphertext);

    $finish;

end

endmodule