`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 15:32:58
// Design Name: 
// Module Name: desen
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


module desen( output[3:0] dataout,
              input start, stop,clk,rst,
              input [11:0] prev,seed);
         wire flip_counter,sau;
          wire [3:0]counter_lut;    
     or sau1(sau,start,stop);
     
     flipflop_D aka(.dataout(flip_counter),
                    .toggle(sau),
                    .rst(rst),
                    .clk(clk)); 
     counter2 ctdesen(.data(counter_lut),
                      .clk(clk),
                      .rst(rst),
                      .en(flip_counter));
     lut lut1(.data(dataout),
              .addr(counter_lut[3:0]+prev[3:0]+seed[3:0]));
     
     
     
     
             
endmodule
