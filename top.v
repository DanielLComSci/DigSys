`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:51:06 AM
// Design Name: 
// Module Name: top
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


module top(
    input btnU, // reset
    input btnC, // input clock
    output [6:0] led
    );
    
    Ripple_Counter(
        .T(1),
        .clk(btnC),
        .reset(btnU),
        .Q1(led[0]),
        .Q2(led[1]),
        .Q3(led[2]),
        .notQ()
    );
    
    Modulo_Divider(
        .clk(btnC),
        .reset(btnU)
    
    );
endmodule








