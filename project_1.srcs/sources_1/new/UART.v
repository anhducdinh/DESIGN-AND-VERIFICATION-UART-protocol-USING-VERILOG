`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HCMUTE_thiet ke vi mach tich hop
// student: Dinh Duc Anh:
// 
// Create Date: 04/09/2023 10:23:42 PM
// Design Name: 
// Module Name: UART
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


module UART #( // Default setting: 
// 19,200 baud, 8 data bits , I stop bit, 2'2 FIFO 
    parameter dbit = 8, // # data bits 
    sb_tick = 16, // # ticks for stop bits , 
    // 16/24/32 for 1/1.5/2 bits 
    DVSR = 163, // baud rate divisor 
    // DVSR = 50M/(16* baud rate) 
    DVSR_BIT = 9, // # bits of DVSR 
    FIFO_W = 2 // # addr bits of FIFO 
    // # words in FIFO=2"FIFO-W
)
(
    input wire clk, reset,
    input wire rd_uart , wr_uart, rx,
    input wire[7:0] w_data,
    output wire tx_full, rx_empty, tx,
    output wire [7:0] r_data
);
    // signal declaration 
    wire tick, rx_done_tick , tx_done_tick;
    wire tx_empty, tx_fifo_not_empty;
    wire [7:0] tx_fifo_out , rx_data_out;
    //body 
    baud_rate_generator #(.M(DVSR), .N(DVSR_BIT)) baud_gen_unit
    (.ckht(clk) , .rst(reset) , .s_tick(tick));
    UART_rx_receiver #(. dbit(dbit) , .sb_tick (sb_tick)) uart_rx_unit
    (.clk(clk), .reset(reset), .rx(rx), .s_tick(tick),
        .rx_done_tick(rx_done_tick), .rx_dout(rx_data_out));
    FIFO_RX #(.B(dbit), .W(FIFO_W)) fifo_rx_unit
    (.clk(clk), .reset(reset), .rd(rd_uart),
        .wr(rx_done_tick), .w_data(rx_data_out), .empty(rx_empty),
        .full(), .r_data(r_data));
    FIFO_tx #(.B(dbit), .W(FIFO_W)) fifo_tx_unit
    (.clk(clk), .reset(reset), .rd(tx_done_tick),
        .wr(wr_uart), .w_data(w_data), .empty(tx_empty),
        .full(tx_full), .r_data(tx_fifo_out));
    UART_transmitter #(.dbit(dbit), .sb_tick(sb_tick)) uart_tx_unit
    (. clk(clk), .reset(reset), .tx_start(tx_fifo_not_empty), .s_tick(tick), .din(tx_fifo_out)
        ,. tx_done_tick(tx_done_tick), .tx(tx));
 assign tx_fifo_not_empty = ~tx_done_tick;
endmodule             