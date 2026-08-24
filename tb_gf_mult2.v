`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 23:16:02
// Design Name: 
// Module Name: tb_gf_mult2
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

module tb_gf_mult2;

reg [7:0] data_in;
wire [7:0] data_out;

gf_mult2 uut(
    .data_in(data_in),
    .data_out(data_out)
);

initial begin

    data_in = 8'h57;
    #10;

    data_in = 8'h83;
    #10;

    data_in = 8'hAE;
    #10;

    $finish;

end

endmodule