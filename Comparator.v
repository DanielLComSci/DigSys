`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 10:22:10 AM
// Design Name: 
// Module Name: Comparator
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


module Comparator(
    input [2:0] Sum,
    input reset,
    output  reg compRes,
    output  reg [2:0] Y
    );
    
    always@(*) begin
    if (Sum == 3'b101)begin
         compRes = 1'b1| reset;
         Y = 3'b000;   
    end else begin
    compRes= 1'b0;
         Y = Sum;
    end
end
    
endmodule







