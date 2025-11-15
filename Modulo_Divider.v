`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:40:55 AM
// Design Name: 
// Module Name: Modulo_Divider
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


module Modulo_Divider(
    input clk, 
    input reset,
    output [2:0] Q,
    output out
    );
    
    wire w0, w1;
    wire [2:0] sum;
    wire [2:0] states;
    
    assign five = (Q == 3'b101);
    assign states = five ? 3'b000 : sum;
    
    Full_Adder fa1(
        .A(Q[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Cout(w0),
        .Y(sum[0])
    );
    
    D_Flipflop dff1(
        .D(states[0]),
        .clk(clk),
        .reset(reset),
        .Q(Q[0]),
        .notQ()
    );
    
    Full_Adder fa2(
        .A(Q[1]),
        .B(1'b0),
        .Cin(w0),
        .Cout(w1),
        .Y(sum[1])
    );
    
    D_Flipflop dff2(
        .D(states[1]),
        .clk(clk),
        .reset(reset),
        .Q(Q[1]),
        .notQ()
    );
   
    Full_Adder fa3(
        .A(Q[2]),
        .B(1'b0),
        .Cin(w1),
        .Cout(),
        .Y(sum[2])
    );
    
    D_Flipflop dff3(
        .D(states[2]),
        .clk(clk),
        .reset(reset),
        .Q(Q[2]),
        .notQ()
    );
    
    assign flip = out ^ five;
    
    D_Flipflop dffFinal(
        .D(flip),
        .clk(clk),
        .reset(reset),
        .Q(out),
        .notQ()
   );
    
endmodule









