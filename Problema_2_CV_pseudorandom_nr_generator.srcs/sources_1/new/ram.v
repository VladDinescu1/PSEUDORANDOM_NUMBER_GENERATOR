`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 15:25:43
// Design Name: 
// Module Name: ram
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


module ram(output[11:0] r_data,
           input clk, w_en,
           input[5:0] w_addr, r_addr,
           input [11:0] w_data);

   reg [11:0] memory[0:63];
   
   always @ (posedge clk)
   if(w_en)
    memory[w_addr]<=w_data;
    
    assign r_data=memory[r_addr];
     
    
endmodule
