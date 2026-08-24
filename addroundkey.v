`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 11:06:49
// Design Name: 
// Module Name: addroundkey
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


module addroundkey(
    input [127:0] state_in,
    input [127:0] round_key,
    output [127:0] state_out
    );
    assign state_out = state_in ^ round_key; 
endmodule
