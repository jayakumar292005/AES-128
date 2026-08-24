`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 11:10:29
// Design Name: 
// Module Name: tb_addroundkey
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



module tb_addroundkey;

reg [127:0] state_in;
reg [127:0] round_key;
wire [127:0] state_out;

addroundkey uut (
    .state_in(state_in),
    .round_key(round_key),
    .state_out(state_out)
);

initial begin

    state_in  = 128'h00112233445566778899AABBCCDDEEFF;
    round_key = 128'h000102030405060708090A0B0C0D0E0F;

    #10;

    $display("Output = %h", state_out);

    #10;

    $finish;

end

endmodule
