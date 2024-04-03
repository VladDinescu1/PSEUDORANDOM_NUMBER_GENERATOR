`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 15:20:42
// Design Name: 
// Module Name: counter
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


module counter(output reg [5:0] data,
               input clk,rst,en);

   always @(posedge clk) begin
   if(rst) data<=0;
   else if(en)
          data<=data+1;
        else
          data<=data;
   end
   
   endmodule
