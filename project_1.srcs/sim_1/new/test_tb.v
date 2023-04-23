`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HCMUTE_thiet ke vi mach tich hop
// student: Dinh Duc Anh: 
// 
// Create Date: 04/10/2023 11:16:29 AM
// Design Name: 
// Module Name: test_tb
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


module test_tb();

    // Khai báo các tín hi?u và tham s? cho testbench
    reg clk, reset, rd_uart, wr_uart, rx;
    reg [7:0] w_data;
    wire tx_full, rx_empty, tx;
    wire [7:0] r_data;
    
    // Khai báo DUT (Design Under Test)
    UART #(
        .dbit(8),        // S? bit d? li?u
        .sb_tick(16),    // S? tick c?a bit stop
        .DVSR(163),      // Giá tr? divisor c?a baud rate
        .DVSR_BIT(9),    // S? bit c?a divisor
        .FIFO_W(2)       // S? bit ??a ch? FIFO
    ) dut (
        .clk(clk),
        .reset(reset),
        .rd_uart(rd_uart),
        .wr_uart(wr_uart),
        .rx(rx),
        .w_data(w_data),
        .tx_full(tx_full),
        .rx_empty(rx_empty),
        .tx(tx),
        .r_data(r_data)
    );
    
    // Kh?i t?o clock
    always #5 clk = ~clk;
    
    // Kh?i t?o giá tr? ban ??u cho các tín hi?u
    initial begin
        clk = 0;
        reset = 1;
        rd_uart = 0;
        wr_uart = 0;
        rx = 0;
        w_data = 0;
        #20 reset = 0;  // T?t reset sau 20ns
    end
    
    // Mô ph?ng vi?c ghi d? li?u vào UART
    always #15 w_data = w_data + 1;
    
    // Mô ph?ng vi?c ??c d? li?u t? UART
    always #20 rd_uart = ~rd_uart;
    
    // In ra k?t qu? t? ??c d? li?u
    always @(posedge clk) begin
        if (rx_empty == 0) begin
            $display("Received data: %h", r_data);
        end
    end
    
    // In ra k?t qu? t? ghi d? li?u
    always @(posedge clk) begin
        if (tx_full == 0) begin
            $display("Transmitted data: %h", w_data);
        end
    end
    
    // K?t thúc mô ph?ng sau 100ns
    initial #100 $finish;
    
endmodule
   