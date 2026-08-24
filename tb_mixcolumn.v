`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 23:49:43
// Design Name: 
// Module Name: tb_mixcolumn
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

module tb_mixcolumns;

reg  [127:0] state_in;
wire [127:0] state_out;

mixcolumns uut(
    .state_in(state_in),
    .state_out(state_out)
);

initial begin

    state_in =
    128'hDB135345F20A225C01010101C6C6C6C6;

    #10;

    $finish;

end

endmodule