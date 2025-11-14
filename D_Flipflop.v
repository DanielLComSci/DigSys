`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:01:09 AM
// Design Name: 
// Module Name: D_Flipflop
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


module D_Flipflop(
    input D,
    input clk,
    input reset,
    output reg Q,
    output notQ
    );
    
    initial Q <= 0;
   
    always @(posedge clk) begin
        if(reset) Q <= 0;
        else Q <= D;
    end
    
    assign notQ = ~Q;
    
endmodule





