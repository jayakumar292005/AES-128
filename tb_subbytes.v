`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 21:30:20
// Design Name: 
// Module Name: tb_subbytes
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

module tb_subbytes;

reg  [127:0] state_in;
wire [127:0] state_out;

subbytes uut(
    .state_in(state_in),
    .state_out(state_out)
);

initial begin

    state_in = 128'h00112233445566778899AABBCCDDEEFF;

    #10;

    $display("Input  = %h", state_in);
    $display("Output = %h", state_out);

    #10;

    $finish;

end

endmodule
