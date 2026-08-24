`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:41:15
// Design Name: 
// Module Name: tb_rcon
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

module tb_rcon;

reg [3:0] round;
wire [31:0] rcon_out;

rcon uut(
    .round(round),
    .rcon_out(rcon_out)
);

initial begin

    round = 4'd1;
    #10;

    round = 4'd5;
    #10;

    round = 4'd10;
    #10;

    $finish;

end

endmodule