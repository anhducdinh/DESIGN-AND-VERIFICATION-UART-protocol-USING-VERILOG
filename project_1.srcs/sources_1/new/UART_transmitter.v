`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HO CHI MINH CITY UNIVERSITY OF TECHNOLOGY AND EDUCATION 
// Student: DINH DUC ANH - 21161391 
// 
// Create Date: 04/05/2023 08:06:46 PM
// Design Name: 
// Module Name: UART_transmitter
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


module UART_transmitter 
#(
    parameter dbit = 8, // # data bits 
    sb_tick = 16 // # ticks for stop bits 
)
 (  input wire clk, reset,
    input wire tx_start , s_tick,
    input wire [7:0]din,
    output reg tx_done_tick ,
    output wire tx
);
    // synlbolic state declaration 
    localparam [1:0]
    idle = 2'b00,
    start = 2'b01,
    data = 2'b10,
    stop = 2'b11;

    // signal declaration 
    reg [1: 0] state_reg , state_next ;
    reg [3:0] s_reg , s_next;
    reg [2:0] n_reg, n_next;
    reg [7:0] b_reg , b_next;
    reg tx_reg , tx_next ;
    // body
    // FSMD state & data registers 
    always@(posedge clk, posedge reset)
    begin
        if (reset)
            begin
                state_reg <= idle;
                s_reg <= 0;
                n_reg <= 0;
                b_reg <= 0;
                tx_reg <= 1'b1;
            end
        else
            begin
                state_reg <= state_next;
                s_reg <= s_next;
                n_reg <= n_next;
                b_reg <= b_next;
                tx_reg <= tx_next;
            end
    end
    // FSMD next-state logic & functional units 
    always @(*)
    begin
        state_next = state_reg;
        tx_done_tick = 1'b0;
        s_next = s_reg;
        n_next = n_reg;
        b_next = b_reg;
        tx_next = tx_reg;
        // state     
        case(state_reg)
            //state: idle 
            idle:
            begin
                tx_next = 1'b1;
                if(tx_start)
                begin
                    state_next = start;
                    s_next = 0;
                    b_next = din;
                end
            end
            //state start:
            start:
            begin
                tx_next = 1'b0;
                if (s_tick)
                    if(s_reg == 15)
                        begin
                            state_next = data;
                            s_next = 0;
                            n_next = 0;
                        end
                    else
                        s_next = s_reg + 1;
            end
            // state data
            data:
            begin
                tx_next = b_reg[0];
                if(s_tick)
                    if(s_reg == 15)
                        begin
                            s_next = 0;
                            b_next = {1'b0, b_reg[dbit - 1: 1]}; //right shift
                            if (n_reg == (dbit-1))
                                state_next = stop;
                            else
                                n_next = n_reg + 1;
                        end
                    else
                        s_next = s_reg + 1;
            end
            // state stop:
            stop:
            begin
                tx_next = 1'b1;
                if(s_tick)
                    if(s_reg == (sb_tick -1))
                        begin
                            state_next = idle; // run again and ready to check state idle 
                            tx_done_tick = 1'b1;
                        end
                    else
                        s_next = s_reg + 1;
            end
        endcase
    end
    // output logic
    assign tx = tx_reg;
endmodule
