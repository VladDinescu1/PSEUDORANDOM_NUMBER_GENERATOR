`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 15:12:35
// Design Name: 
// Module Name: structural
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


module structural(output reg  [3:0]  dataout,
                  input[11:0] seed,prev );
               
         
    always @ (*)
    case(seed[1:0])
       2'd0:dataout<=prev[3:0];
       2'd1:dataout<=prev[7:4];
       2'd2:dataout<=prev[11:8];
       2'd3:dataout<=2*prev + prev + 4;
    endcase
endmodule
