`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HO CHI MINH CITY UNIVERSITY OF TECHNOLOGY AND EDUCATION       
// Student: DINH DUC ANH - 21161391                                       
// 
// Create Date: 04/07/2023 08:40:12 PM
// Design Name: 
// Module Name: baud_rate_generator
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


module baud_rate_generator #( parameter N = 9,
    parameter M = 163)            // 19200 baud, ckht = 50 000 000, cu sau 16 xung  stop bits cau hinh lai cho start
 	(input ckht, input rst, output s_tick
   );
    //bits hoat dong khoi dau la xung lay mau bit 0 ket thuc stop bit 1
    reg [N-1:0] r_reg;
    wire [N-1:0] r_next;
    always@( posedge ckht, posedge rst)
    begin
        if(rst)
            r_reg <= 0;
        else
            r_reg <= r_next;
    end
    // next state logic 

    assign r_next = ( r_reg == (M - 1))?  1'b0 :   r_reg + 1;

    // output logic
    assign s_tick = ( r_reg == (M - 1))?  1'b1 :    1'b0;
endmodule
