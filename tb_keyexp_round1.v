`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:46:21
// Design Name: 
// Module Name: tb_keyexp_round1
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


`timescale 1ns/1ps

module tb_keyexp_round1;

reg [127:0] key_in;
wire [127:0] key_out;

keyexp_round1 uut(
    .key_in(key_in),
    .round(4'd1),
    .key_out(key_out)
);

initial begin

    key_in = 128'h000102030405060708090A0B0C0D0E0F;

    #10;

    $display("Original Key = %h", key_in);
    $display("Round1 Key   = %h", key_out);

    #10;

    $finish;

end

endmodule