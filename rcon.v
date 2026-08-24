`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:40:44
// Design Name: 
// Module Name: rcon
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


module rcon(
    input [3:0] round,
    output reg [31:0] rcon_out
);

always @(*) begin
    case(round)

        4'd1:  rcon_out = 32'h01000000;
        4'd2:  rcon_out = 32'h02000000;
        4'd3:  rcon_out = 32'h04000000;
        4'd4:  rcon_out = 32'h08000000;
        4'd5:  rcon_out = 32'h10000000;
        4'd6:  rcon_out = 32'h20000000;
        4'd7:  rcon_out = 32'h40000000;
        4'd8:  rcon_out = 32'h80000000;
        4'd9:  rcon_out = 32'h1B000000;
        4'd10: rcon_out = 32'h36000000;

        default: rcon_out = 32'h00000000;

    endcase
end

endmodule