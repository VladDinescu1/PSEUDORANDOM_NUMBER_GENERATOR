`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 16:06:26
// Design Name: 
// Module Name: lut
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


module lut(output[3:0] data,
           input[3:0] addr );
           
    reg [3:0] memory [0:15];
    always @*
    case(addr)
0:memory[0]  = 4'b1111;
1:memory[1]  = 4'b1110;
2:memory[2]  = 4'b1101;
3:memory[3]  = 4'b1100;
4:memory[4]  = 4'b1011;
5:memory[5]  = 4'b1010;
6:memory[6]  = 4'b1001;
7:memory[7]  = 4'b1000;
8:memory[8]  = 4'b0111;
9:memory[9]  = 4'b0110;
10:memory[10] = 4'b0101;
11:memory[11] = 4'b0100;
12:memory[12] = 4'b0011;
13:memory[13] = 4'b0010;
14:memory[14] = 4'b0001;
15:memory[15] = 4'b0000;
endcase
assign data=memory[addr];   
endmodule
