`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 22:09:38
// Design Name: 
// Module Name: tb_aes_round
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

module tb_aes_round;

reg  [127:0] state_in;
reg  [127:0] round_key;

wire [127:0] state_out;

aes_round uut(
    .state_in(state_in),
    .round_key(round_key),
    .state_out(state_out)
);

initial begin

    state_in  = 128'h00112233445566778899aabbccddeeff;
    round_key = 128'h000102030405060708090a0b0c0d0e0f;

    #10;

    $finish;

end

endmodule