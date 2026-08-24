`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 21:35:18
// Design Name: 
// Module Name: tb_sbox
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

module tb_sbox;

    reg  [7:0] addr;
    wire [7:0] data;

    integer i;

    sbox uut (
        .addr(addr),
        .data(data)
    );

    initial begin

        for(i = 0; i < 256; i = i + 1)
        begin
            addr = i[7:0];
            #10;
        end

        $finish;

    end

endmodule
