`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 16:27:30
// Design Name: 
// Module Name: TOP
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


module TOP(output[11:0] datacurrent, dataread,
           input clk,rst,stop,start,
           input[11:0] seed,
           input[5:0] addr );
        
      wire[3:0] fsm_concatenare,struct_concatenare,desen_concatenare;  
      wire[11:0] reg_prev;
      wire[5:0] ct_RAM;     
      wire[11:0] concatenare={desen_concatenare,struct_concatenare,fsm_concatenare};
      
      fsm FSM(.dataout(fsm_concatenare),
              .start(start),
              .clk(clk),
              .rst(rst),
              .stop(stop),
              .seed(seed),
              .prev(reg_prev));
              
      structural  STR(.dataout(struct_concatenare),
                      .seed(seed),
                      .prev(reg_prev));
                     
      desen DESEN(.dataout(desen_concatenare),
                  .start(start),
                  .stop(stop),
                  .clk(clk),
                  .rst(rst),
                  .prev(reg_prev),
                  .seed(seed));
                  
      counter aba(.data(ct_RAM),
                  .clk(clk),
                  .rst(rst),
                  .en(stop));
                  
      ram RAMM(.r_data(dataread),
               .clk(clk),
               .w_en(stop),
               .w_addr(ct_RAM),
               .r_addr(addr),
               .w_data(concatenare));
               
      delay_reg DR(.dataout(reg_prev),
                   .clk(clk),
                   .rst(rst),
                   .datain(concatenare));
                   
      assign datacurrent=concatenare;
      
           
endmodule
