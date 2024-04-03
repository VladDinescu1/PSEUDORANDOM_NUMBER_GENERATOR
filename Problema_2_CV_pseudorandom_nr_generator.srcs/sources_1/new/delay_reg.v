`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 15:23:13
// Design Name: 
// Module Name: delay_reg
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


module delay_reg( output reg [11:0]dataout,
                 input clk, rst,
                 input[11:0] datain);

    always @(posedge clk)
     if (rst) dataout<=0;
     else
     dataout<=datain;
    
endmodule
