`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 21:28:46
// Design Name: 
// Module Name: subbytes
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


module subbytes(
    input  [127:0] state_in,
    output [127:0] state_out
);

sbox s0  (.addr(state_in[127:120]), .data(state_out[127:120]));
sbox s1  (.addr(state_in[119:112]), .data(state_out[119:112]));
sbox s2  (.addr(state_in[111:104]), .data(state_out[111:104]));
sbox s3  (.addr(state_in[103:96]),  .data(state_out[103:96]));

sbox s4  (.addr(state_in[95:88]),   .data(state_out[95:88]));
sbox s5  (.addr(state_in[87:80]),   .data(state_out[87:80]));
sbox s6  (.addr(state_in[79:72]),   .data(state_out[79:72]));
sbox s7  (.addr(state_in[71:64]),   .data(state_out[71:64]));

sbox s8  (.addr(state_in[63:56]),   .data(state_out[63:56]));
sbox s9  (.addr(state_in[55:48]),   .data(state_out[55:48]));
sbox s10 (.addr(state_in[47:40]),   .data(state_out[47:40]));
sbox s11 (.addr(state_in[39:32]),   .data(state_out[39:32]));

sbox s12 (.addr(state_in[31:24]),   .data(state_out[31:24]));
sbox s13 (.addr(state_in[23:16]),   .data(state_out[23:16]));
sbox s14 (.addr(state_in[15:8]),    .data(state_out[15:8]));
sbox s15 (.addr(state_in[7:0]),     .data(state_out[7:0]));

endmodule