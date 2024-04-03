`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 13:55:10
// Design Name: 
// Module Name: fsm
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


module fsm(output reg [3:0] dataout,
           input start, clk, rst,stop,
           input[11:0] seed,prev  );
           
         reg [1:0] stare_crt;
         localparam s1=2'b00;
         localparam s2=2'b01;
         localparam s3=2'b10;
         
         always @(posedge clk)
           if(rst) stare_crt<=s1;
           else  case(stare_crt)
           s1: stare_crt<=s2;
            
             
           s2:if(stop==0) stare_crt<=s3;else
              stare_crt<=s2;
              
           s3:if(start==0) stare_crt<=s1;else
           stare_crt<=s3;
           
           default: stare_crt<=s1;
           endcase
           
           always @(stare_crt or stop or start or rst)
             case(stare_crt)
             s1: if(rst)  dataout<= seed[3:0];
             s2: if(stop) dataout<= prev[3:0];
             s3: if(start) dataout<= prev[3:0]+seed[3:0];
             default: dataout<=4'bx;
             endcase
                 
          
         
           
           
                    
           
endmodule
