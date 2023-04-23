`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 01:28:43 AM
// Design Name: 
// Module Name: testt
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



`timescale 1ns / 1ps


module testt;
reg clk, reset, rd_uart, wr_uart, rx;
reg [7:0] w_data;
wire tx_full, rx_empty, tx;
wire [7:0] r_data;

UART #( .dbit(8), .sb_tick(16), .DVSR(163), .DVSR_BIT(9), .FIFO_W(2) ) uart_inst
    ( .clk(clk), .reset(reset), .rd_uart(rd_uart), .wr_uart(wr_uart), .rx(rx), .w_data(w_data),
      .tx_full(tx_full), .rx_empty(rx_empty), .tx(tx), .r_data(r_data) );

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    w_data = 8'h41;
    rd_uart = 0;
    wr_uart = 0;
    rx = 0;
    #100 reset = 0;
    #500;
    w_data = 8'h42;
    rd_uart = 1;
    #500;
    wr_uart = 1;
    #1000;
end

endmodule

   

