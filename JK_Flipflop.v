`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:02:03 AM
// Design Name: 
// Module Name: JK_Flipflop
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


module JK_Flipflop(
    input J, K,
    input clk,
    input reset,
    output Q,
    output notQ
    );
    
    assign D = (Q & ~K) | (notQ & J);
    
    D_Flipflop dff(
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .notQ(notQ)
    );
    
endmodule
