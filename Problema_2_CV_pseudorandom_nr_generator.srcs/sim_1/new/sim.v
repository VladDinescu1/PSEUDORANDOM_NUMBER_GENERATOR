`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2024 08:46:30 PM
// Design Name: 
// Module Name: sim
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


module sim();

wire[11:0] datacurrent_t, dataread_t;
reg clk_t, rst_t, stop_t,start_t;
reg[11:0] seed_t;
reg[5:0] addr_t;

TOP DUT(.datacurrent(datacurrent_t),
        .dataread(dataread_t),
        .clk(clk_t),
        .rst(rst_t),
        .stop(stop_t),
        .start(start_t),
        .seed(seed_t),
        .addr(addr_t));
        
 initial begin
 clk_t=0;
 #10 clk_t=1;
 forever #5 clk_t=~clk_t;
 end
 
 initial begin
 rst_t=1;
 seed_t=12'b1011_0001_1110;
 start_t=0;
 stop_t=0;
 #31 rst_t=0;
 #20 start_t=1;
 #10 start_t=0;
     stop_t=1;
 #10 stop_t=0;
     addr_t=0;
 #20 start_t=1;
 #10 start_t=0;
 #10 stop_t=1;
 #10 stop_t=0;
     addr_t=1;
 #30 start_t=1;
 #10 start_t=0;
 #30 stop_t=1;
 #10 stop_t=0;
 addr_t=2;
 #10 $stop();
 end
 
 
 
 
 

endmodule
