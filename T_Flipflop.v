`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:02:20 AM
// Design Name: 
// Module Name: T_Flipflop
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


module T_Flipflop(
    input T,
    input reset,
    input clk,
    output Q, notQ
    );
    
    JK_Flipflop tff(
        .J(T),
        .K(T),
        .reset(reset),
        .clk(clk),
        .Q(Q),
        .notQ(notQ)
    );
    
endmodule











