`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:21:39
// Design Name: 
// Module Name: tb_shoftrows
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

module tb_shiftrows;

reg [127:0] state_in;
wire [127:0] state_out;

shiftrows uut(
    .state_in(state_in),
    .state_out(state_out)
);

initial begin

    state_in = 128'h000102030405060708090A0B0C0D0E0F;

    #10;

    $display("Input  = %h", state_in);
    $display("Output = %h", state_out);

    #10;

    $finish;

end

endmodule