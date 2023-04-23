`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HO CHI MINH CITY UNIVERSITY OF TECHNOLOGY AND EDUCATION       
// Student: DINH DUC ANH - 21161391                                       
// 
// Create Date: 04/09/2023 12:45:32 PM
// Design Name: 
// Module Name: UART_rx_receiver
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


module UART_rx_receiver #( parameter dbit = 8,
    sb_tick = 16)
	( input clk, rx,
    input reset, 
    input s_tick,
    output reg rx_done_tick,
    output [7:0] rx_dout);
       
        localparam[1:0]
          idle = 2'b00,
          start = 2'b01,
          data = 2'b10,
          stop = 2'b11;
    

    reg [1:0] state_reg, state_next;
    reg [3:0] s_reg, s_next;
    reg [2:0] n_reg, n_next;
    reg [7:0] b_reg, b_next;

    // body register
    always @( posedge clk , posedge reset)
    begin
        if (reset)
            begin
                state_reg <= idle;
                s_reg <= 0;
                n_reg <= 0;
                b_reg <= 0;
            end
        else
            begin
                state_reg <= state_next ;
                s_reg <= s_next;
                n_reg <= n_next;
                b_reg <= b_next;
            end
    end

    // FSM next state logic  
    always@(*)
    begin
        state_next <= state_reg;
        s_next <= s_reg;
        n_next <= n_reg;
        b_next <= b_reg;
        rx_done_tick <= 1'b0;

        case (state_reg)
            idle:
            if( ~rx)
            begin
                state_next <= start;
                s_next <= 1'b0;
            end
            start:
            if(s_tick)
                if( s_reg == 7)
                    begin
                        state_next <= data;
                        s_next <= 1'b0;
                        n_next <= 1'b0;
                    end
                else
                    s_next <= s_reg + 1;
            data:
            if(s_tick)
                if(s_reg == 15)
                    begin
                        s_next <= 1'b0;
                        b_next <= {rx,b_reg[7:1]}; // dich 
                        if (n_reg == (dbit - 1))
                            state_next <= stop;
                    end
                else
                    n_next <= n_reg + 1;
            stop:
            if(s_tick)
                if( s_reg == ( sb_tick - 1))
                    begin
                        rx_done_tick <= 1'b1;
                        state_next <= idle;
                    end
                else
                    s_next <= s_reg + 1;

        endcase
    end

    //output logic 
    assign  rx_dout = b_reg ;

endmodule
			  
			
       
