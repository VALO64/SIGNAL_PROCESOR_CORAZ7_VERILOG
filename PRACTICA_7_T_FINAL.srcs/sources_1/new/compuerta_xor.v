`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITCH
// Engineer: OSCAR ALBERTO VALLES LIMAS 
// 
// Create Date: 10.11.2023
// Design Name: 
// Module Name: compuerta_xor
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


module compuerta_xor(
    input [7:0] adc,
    output reg [7:0] nadc
    );
    

always@(adc)
    begin
        nadc = adc ^8'b10000000;
    end
    
endmodule
