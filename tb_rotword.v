`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 22:34:27
// Design Name: 
// Module Name: tb_rotword
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

module tb_rotword;

reg  [31:0] word_in;
wire [31:0] word_out;

rotword uut(
    .word_in(word_in),
    .word_out(word_out)
);

initial begin

    word_in = 32'h0C0D0E0F;

    #10;

    $display("Input  = %h", word_in);
    $display("Output = %h", word_out);

    #10;

    $finish;

end

endmodule
