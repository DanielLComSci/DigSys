`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:02:42 AM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A, B,
    input Cin,
    output Y,
    output Cout
    );
    
    assign Y = (A ^ B) ^ Cin;
    assign Cout = (A & B) | ((A | B) & Cin);
        
endmodule








