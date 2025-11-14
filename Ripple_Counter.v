`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:40:32 AM
// Design Name: 
// Module Name: Ripple_Counter
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


module Ripple_Counter(
    input T,
    input clk,
    input reset,
    output [2:0] Q,
    output notQ
    );
    
    // Divide by two
    T_Flipflop tff1 (
        .T(T),
        .clk(clk),
        .reset(reset),
        .Q(Q[0]),
        .notQ()
    );
    
    //Divide to 4
    T_Flipflop tff2 (
        .T(T),
        .clk(Q[0]),
        .reset(reset),
        .Q(Q[1]),
        .notQ()
    );
    
    //Divide to 8
    T_Flipflop tff3 (
        .T(T),
        .clk(Q[1]),
        .reset(reset),
        .Q(Q[2]),
        .notQ()
    );
    
endmodule








