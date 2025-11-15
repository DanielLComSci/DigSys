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
    
    Ripple_Counter ripCo(
        .T(1'b1),
        .clk(btnC),
        .reset(btnU),
        .Q(led[2:0]),
        .notQ()
    );
    
    Modulo_Divider modDi(
        .clk(btnC),
        .reset(btnU),
        .Q(led[5:3]),
        .out(led[6])
    );
endmodule








